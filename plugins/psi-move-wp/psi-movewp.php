<?php
/*
  Plugin Name: Moving WordPress
  Plugin URI: http://www.prime-strategy.co.id
  Description: Tool for replace URL (domain) in all database's tables
  Author: PT. Prime Strategy Indonesia [Budi Irawan]
  Version: 1.0
  Author URI: http://www.prime-strategy.co.id
  License: GPLv2 or later
 */

// Define file path constants
define( 'PSIWPM_PLUGIN_DIR', plugin_dir_path( __FILE__ ) );
define( 'PSIWPM_FILES_DIR', PSIWPM_PLUGIN_DIR . 'files' );
// Class WP for ZIP
require_once( ABSPATH . 'wp-admin/includes/class-pclzip.php' );

if (!class_exists( 'PSI_Move_WP' )) {

    class PSI_Move_WP {

        public function __construct() {
            global $wpdb;
            $this->wpdb = &$wpdb;
            add_action( 'admin_menu', array($this, 'register_menutools') );
            add_action( 'admin_enqueue_scripts', array($this, 'loadcss') );
            add_action( 'admin_init', array($this, 'process_post') );
        }

        function register_menutools() {
            add_submenu_page( 'tools.php', 'Moving WP Page', 'Moving WP', 'manage_options', 'movewppage', array($this, 'movewppage_callback') );
        }

        function loadcss( $page ) {
            /* Load CSS */
            if ('tools_page_movewppage' != $page) {
                return;
            }
            wp_enqueue_style( 'form_css', plugins_url( 'css/pure-min.css', __FILE__ ) );
        }

        function process_post() {
            /* Form Action */
            if (isset( $_POST['domove'] )) {
                // process $_POST data here
                $this->oldsiteurl = get_site_url();
                $this->siteurl = $_POST['siteurl'];
                $this->home = $_POST['home'];
                if ($this->siteurl == '' || $this->home == '') {
                    add_action( 'admin_notices', array($this, 'warning_notice') );
                    return;
                }
                //-------- Lets Doit --------->>
                array_map( 'unlink', glob( PSIWPM_FILES_DIR . "/backup/*.sql" ) );
                array_map( 'unlink', glob( PSIWPM_FILES_DIR . "/*.zip" ) );
                $this->dumpDB();
                $filename = $this->_create_archive();
                add_action( 'admin_notices', array($this, 'success_notice') );
            } else if (isset( $_POST['dodownload'] )) {
                $this->_donwload();
            }
        }

        function dumpDB() {
            $tablesArray = $this->wpdb->get_results( "SHOW TABLES like '" . $this->wpdb->prefix . "%'", ARRAY_N );
            foreach ($tablesArray as $val) {
                $tables[] = $val[0];
            }
            $this->_backupdb( $tables );
        }

        private function _backupdb( $tables ) {
            $return = '';
            foreach ($tables as $table) {
                $result = $this->wpdb->get_results( 'SELECT * FROM ' . $table, ARRAY_N ); // Select all from table
                $num_fields = $this->wpdb->query( 'SHOW COLUMNS FROM ' . $table, ARRAY_N ); // Count column in table
                $row2 = $this->wpdb->get_results( 'SHOW CREATE TABLE ' . $table, ARRAY_N ); // How table create
                $return.= "\n\n" . $row2[0][1] . ";\n\n";
                foreach ($result as $row) {


                    $return.= 'INSERT INTO ' . $table . ' VALUES(';
                    for ($i = 0; $i < $num_fields; $i++) {

                        $row[$i] = $this->_changeDomain( $row[$i] ); // Process check domain
                        $row[$i] = addslashes( $row[$i] );
                        $row[$i] = str_replace( '\n', '\\n', $row[$i] );

                        if (isset( $row[$i] )) {
                            $return.= '"' . $row[$i] . '"';
                        } else {
                            $return.= '""';
                        }
                        if ($i < ($num_fields - 1)) {
                            $return .= ',';
                        }
                    }
                    $return.= ");\n";
                }
                $return.="\n\n\n";
            }
            if ($this->siteurl != $this->home) {
                $home = '"home","'.$this->siteurl.'/"';
                $newhome = '"home","' . $this->home . '/"';
                $return = str_replace( $home, $newhome, $return );
            }
            $file = PSIWPM_FILES_DIR . "/backup/" . DB_NAME . "-" . date( 'Y-m-d-H-i-s' ) . ".sql";
            $handle = fopen( $file, 'w+' );
            fwrite( $handle, $return );
            fclose( $handle );
        }

        private function _changeDomain( $string ) {
            $oldDomainlenght = strlen( $this->oldsiteurl );
            $newDomainlenght = strlen( $this->siteurl );
            $pattern = str_replace( "/", "\/", $this->oldsiteurl );
            if (preg_match( "/" . $pattern . "/", $string )) {
                if ($this->_isSerialize( $string )) {
                    preg_match_all( '/(s:)(.*?)' . $pattern . '(.*?)";s:/', $string, $match_a ); // Search Old domain in Serialize
                    $resultmatch_a = $match_a[0];
                    foreach ($resultmatch_a as $val) {
                        $strcut = substr( $val, 0, -3 ); // Remove 3 Char : ;s: (at the end)
                        preg_match_all( '/(?:.(?!s:))+$/', $strcut, $match_b ); // Select only Data we need -> s:?:"?"
                        $strweneed = $match_b[0][0];
                        preg_match_all( '/\"(?:.(?!\\)))+$/', $strweneed, $match_c ); // Select only string to count length char
                        $oldlength = strlen( $match_c[0][0] ) - 2; // Length of old string
                        $newlength = ($oldlength - $oldDomainlenght) + $newDomainlenght;
                        $newstr = str_replace( $this->oldsiteurl, $this->siteurl, $match_c[0][0] );
                        $newstr = "s:" . $newlength . ":" . $newstr;
                        $string = str_replace( $strweneed, $newstr, $string );
                    }
                } else {
                    $string = str_replace( $this->oldsiteurl, $this->siteurl, $string );
                }
            }

            return $string;
        }

        private function _isSerialize( $string ) {
            return @unserialize( $string );
        }

        private function _create_archive() {
            $filename = PSIWPM_FILES_DIR . '/Backup-' . time() . '.zip';
            $archive = new PclZip( $filename );
            $files = array(PSIWPM_FILES_DIR . '/backup');
            if ($archive->create( $files, PCLZIP_OPT_REMOVE_ALL_PATH ) == 0) {
                die( 'Error : ' . $archive->errorInfo( true ) );
            }
            $this->filename = PSIWPM_FILES_DIR . "/" . basename( $filename );
        }

        private function _donwload() {
            $this->filename = $_POST['filename'];
            preg_match( '/Backup-(.*).zip$/', $this->filename, $match );
            header( "Cache-Control: public" );
            header( "Content-Description: File Transfer" );
            header( "Content-Length: " . filesize( "$this->filename" ) . ";" );
            header( "Content-Disposition: attachment; filename=$match[0]" );
            header( "Content-Type: application/octet-stream; " );
            header( "Content-Transfer-Encoding: binary" );
            readfile( $this->filename );
        }

        function movewppage_callback() {
            echo '<div class="formwrap">
                <h1>
                   Moving WordPress to another domain
                </h1>
                <p>For replace URL (domain) in all database\'s tables.</p>
                <form class="pure-form pure-form-aligned" action="' . $_SERVER['REQUEST_URI'] . '" method="POST">
                <fieldset>
                    <div class="pure-control-group">
                        <label>Old Site URL :</label>
                        <span style="">' . get_option( 'siteurl' ) . '</span>
                    </div>
                    <div class="pure-control-group">
                        <label for="siteurl">New Site URL (ex:<span style="background:yellow">http://www.sayonara.com</span>)</label>
                        <input id="siteurl" type="text" placeholder="Site URL..." name="siteurl" required>
                    </div>
                    <hr>
                     <div class="pure-control-group">
                        <label>Old WordPress URL :</label>
                        <span style="">' . get_option( 'home' ) . '</span>
                    </div>
                    <div class="pure-control-group">
                        <label for="home">New WordPress URL</label>
                        <input id="home" type="text" placeholder="WordPress URL..." name="home" required>
                    </div>
                    <hr>
                    <div class="pure-controls">
                        <button type="submit" class="pure-button pure-button-primary" name="domove">Submit</button>
                    </div>
                </fieldset>
            </form>
            </div>';
        }

        function success_notice() {
            $reqURI = $_SERVER['REQUEST_URI'];
            echo "<div class='updated'>
                 <p>Success , your files in (click for download) :
                 <form action='$reqURI' method='POST'>
                    <input type='hidden' name='filename' value='$this->filename'>
                    <button type='submit' name='dodownload'>$this->filename</button>
                 </form>
                 </p>
                 </div>";
        }

        function warning_notice() {
            echo "<div class='error'>
                 <p>Please fill the form</p>
                 </div>";
        }

    }

}

if (class_exists( 'PSI_Move_WP' )) {
$PSI_Move_WP = new PSI_Move_WP();
}

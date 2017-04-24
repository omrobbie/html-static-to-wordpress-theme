<?php
/*
  Plugin Name: WP SiteManager
  Plugin URI: http://www.prime-strategy.co.jp/
  Description: WP SiteManager is an integrated plug-in that was equipped with a plurality of the functionality that is required in order to be used as a CMS WordPress.
  Author: Prime Strategy Co.,LTD.
  Version: 1.1.0
  Author URI: http://www.prime-strategy.co.jp/
  License: GPLv2 or later
 */

class WP_SiteManager {

    var $version;
    var $enable_modules;
    var $instance;
    var $root;
    var $api_server = '';

    function __construct() {
        
        $data = get_file_data(__FILE__, array('version' => 'Version'));
        $this->version = $data['version'];
        $this->instance = new stdClass();

        define('CMS_MODULE_DIR', dirname(__FILE__) . '/modules');
        $this->root = plugin_basename(__FILE__);
        //load textdomain on the page admin and site
        add_action( 'wp_loaded', array(&$this, 'wp_sitemanager_load_plugin_textdomain') );
        if (is_admin()) {
            $page_hook = 'toplevel_page_' . str_replace('.php', '', $this->root);
            // Load textdoamin
            //add_action('plugins_loaded', array(&$this, 'wp_sitemanager_load_plugin_textdomain'));
            // Basic menu output of WP SiteManager
            add_action('admin_menu', array(&$this, 'add_cms_menu'));
            // WP SiteManager management screen Full CSS output common
            add_action('admin_print_styles-' . $page_hook, array(&$this, 'print_icon_style'));
            // CSS output of the module list page for
            add_action('admin_print_styles-' . $page_hook, array(&$this, 'module_page_styles'));
            // Enable / Disable switching process of module 
            add_action('load-' . $page_hook, array(&$this, 'update_disabled_modules'));
            // Data update process of the General Settings
//			add_action( 'wp-sitemanager_page_wp-sitemanager-general'					, array( &$this, 'update_general' ) );
            // WP SiteManager management screen Full CSS output common
//			add_action( 'admin_print_styles-wp-sitemanager_page_wp-sitemanager-general'	, array( &$this, 'print_icon_style' ) );
            // Data update process of setting access
            add_action('wp-sitemanager_page_wp-sitemanager-access', array(&$this, 'update_access'));
            // WP SiteManager management screen Full CSS output common
            add_action('admin_print_styles-wp-sitemanager_page_wp-sitemanager-access', array(&$this, 'print_icon_style'));

            register_activation_hook(__FILE__, array(&$this, 'do_activation_module_hooks'));
        }
        add_action('infinity_key_auth_update_hook', array(&$this, 'api_key_auth_update'));
        $this->load_modules();
    }

    /*
     * 
     */

    function wp_sitemanager_load_plugin_textdomain() {
        load_plugin_textdomain('wp-sitemanager', false, 'wp-sitemanager/languages');
    }

    private function is_api_key_setuped() {
        return get_option('infinity_api_key', array());
    }

    private function get_api_key() {
        
    }

    public function do_activation_module_hooks() {
        $installed_modules = $this->get_modules();
        foreach ($installed_modules as $slug => $module) {
            //echo 'enabled_sitemanager_module-' . $slug . '<br>';
            do_action('enabled_sitemanager_module-' . $slug);
        }
    }

    /*
     * We'll add a basic menu to the menu screen of management.
     * Only action hook is described in the basic menu, making it possible to add a preference in the module.
     * There before add_object_page is add_submenu_page of the module, please do not fix it because in order to be different from the main menu name the sub-menu.
     * @ Since 0.0.1
     */

    public function add_cms_menu() {
        add_submenu_page($this->root, __('Module', 'wp-sitemanager'), __('Module', 'wp-sitemanager'), 'administrator', __FILE__, array(&$this, 'manage_module_page'));
        add_object_page('WP SiteManager', 'WP SiteManager', 'administrator', __FILE__, array(&$this, 'manage_module_page'));
//		add_submenu_page( $this->root, __('General', 'wp-sitemanager'), __('General', 'wp-sitemanager'), 'administrator', basename( __FILE__ ) . '-general', array( &$this, 'general_page' ) );
        add_submenu_page($this->root, 'SEO &amp; SMO', 'SEO &amp; SMO', 'administrator', basename(__FILE__) . '-access', array(&$this, 'access_page'));
    }

    /*
     * I allow you to load the modules that are enabled.
     * I can not say efficiency this is a good idea because it scrutinized all the files in the directory current situation, in every boot.
     * You should be read from the DB only the modules that are enabled in the same plug-in, to be carried out only in module page scrutiny in the directory.
     * @ Since 0.0.1
     */

    private function load_modules() {
        $installed_modules = $this->get_modules();
        $disabled_modules = $this->get_disabled_modules();
        foreach ($installed_modules as $slug => $module) {
            if (!in_array($slug, $disabled_modules)) {
                $instanse = str_replace('-', '_', $slug);
                require_once( CMS_MODULE_DIR . '/' . $slug . '.php' );
            } 
        }
    }

    private function auth_api_key() {
        $api_key = $this->is_api_key_setuped();
        if (!$api_key) {
            return false;
        }
        if (!$result = get_site_transient('infinity_key_auth')) {
            $result = $this->api_key_auth_update();
        } else {
            if (!isset($result['expires']) || ( isset($result['expires']) && ( $result['expires'] - time() <= 300 ) && !wp_next_scheduled('infinity_key_auth_update_hook') )) {
                wp_schedule_single_event(time(), 'infinity_key_auth_update_hook');
            }
        }
        return $result;
    }

    public function api_key_auth_update() {
        $api_key = $this->is_api_key_setuped();
        echo "api key =" . $api_key;
        $result = wp_remote_post(
                $this->api_server . 'infinity-api.php', array(
            'method' => 'POST',
            'timeout' => 5,
            'redirection' => 0,
            'body' => array(
                'account' => $api_key['account'],
                'key' => $api_key['key']
            ),
                )
        );
        if (isset($result['response']['code']) && $result['response']['code'] == 200 && $result['body'] != 'a:0: {
                
            }') {
            $expires = time() + 3600;
            $result = array(
                'data' => $result['body'],
                'expires' => $expires
            );
            set_site_transient('infinity_key_auth', $result, 3600);
        } else {
            $result = array();
        }
        return $result;
    }

    /*
     * I will make the display of the module management page.
     * Display a list of modules that are installed, for the integration of the module (builtin) other than, and outputs a switching button of Enable / Disable.
     * @ Since 0.0.1
     */

    public function manage_module_page() {
        $installed_modules = $this->get_modules();
        $disabled_modules = $this->get_disabled_modules();
        $nonce = wp_create_nonce('wp-sitemanager-modules');
        global $submenu;
        $wp_sitemanager_submenu = $submenu[$this->root];

        $api_link = add_query_arg(array('action' => 'register', 'lang' => get_locale()), $this->api_server . 'wp-login.php');
        //echo $api_link;
        ?>
        <div class="wrap">
            <?php screen_icon('prime-icon32'); ?>
            <h2>WP SiteManager</h2>
            <h3><?php _e('Module', 'wp-sitemanager'); ?></h3>
            <?php
            if ($installed_modules) :

                foreach ($installed_modules as $slug => $module) :
                    if (version_compare($this->version, $module['introduced'], '>=')) :
                        ?>
                        <div class="cms-module">
                            <div style="height: 125px">
                                <h4><?php _e(esc_html($module['name']), 'wp-sitemanager'); ?></h4>
                                <p><?php _e(esc_html($module['description']), 'wp-sitemanager'); ?></p>
                            </div>
                            <div>
                                <?php
                                if (!in_array(strtolower($module['builtin']), array('1', 'true'))) :
                                    if (in_array($slug, $disabled_modules)) :
                                        $url = add_query_arg(array('action' => 'enable', 'module' => $slug, '_nonce' => $nonce));
                                        ?>
                                        <span class="activate">
                                            <a href="<?php echo esc_url($url); ?>" class="button">
                                                <?php _e('Enable', 'wp-sitemanager'); ?>
                                            </a>
                                        </span>
                                        <?php
                                    else :
                                        $url = add_query_arg(array('action' => 'disable', 'module' => $slug, '_nonce' => $nonce));
                                        ?>
                                        <span class="deactivate">
                                            <a href="<?php echo esc_url($url); ?>" class="button">
                                                <?php _e('Disable', 'wp-sitemanager'); ?>
                                            </a>
                                        </span>
                                    <?php
                                    endif;
                                endif;
                                ?>
                            </div>
                        </div>
                        <?php
                    endif;
                endforeach;
            else :
                ?>
                <p><?php _e('Module is not installed.', 'wp-sitemanager');
                ?></p>
            <?php
            endif;
            ?>
            <div id="developper_information" class="clear">
                <div id="poweredby">
                    <a href="http://www.prime-strategy.co.jp/" target="_blank"><img src="<?php echo preg_replace('/^https?:/', '', plugin_dir_url(__FILE__)) . 'images/ps_logo.png'; ?>" alt="Powered by Prime Strategy" /></a>
                </div>
            </div>
        </div>
        <?php
    }

    /*
     * I will make the output of the CSS to be used in the module administration page.
     * @ Since 0.0.1
     */

    public function module_page_styles() {
        ?>
        <style type="text/css" charset="utf-8">
            .cms-module {
                background: #fff;
                float:  left;
                width:  180px;
                height: 170px;
                margin: 0 0 15px 15px;
                padding: 5px 10px;
                border: solid 1px #ddd;
                border-radius: 3px;
                box-shadow: 0 1px 3px rgba( 0, 0, 0, 0.1 );
                overflow: hidden;
            }
            .cms-module h4 {
                padding-bottom: 3px;
                border-bottom: solid 1px #ed6d46;
            }
        </style>
        <?php
    }

    /*
     * I will do the enabling / disabling of the module.
     * @ Since 0.0.1
     */

    public function update_disabled_modules() {
        $installed_modules = $this->get_modules();
        $disabled_modules = $this->get_disabled_modules();

        if (isset($_GET['action']) && wp_verify_nonce($_GET['_nonce'], 'wp-sitemanager-modules')) {
            switch ($_GET['action']) {
                case 'enable' :
                    if (in_array($_GET['module'], array_keys($installed_modules)) && in_array($_GET['module'], $disabled_modules) && !in_array(strtolower($installed_modules[$_GET['module']]['builtin']), array('1', 'true'))) {
                        $slug = sanitize_file_name($_GET['module']);
                        $key = array_search($_GET['module'], $disabled_modules);
                        unset($disabled_modules[$key]);
                        update_option('disabled_modules', $disabled_modules);
                        $instanse = str_replace('-', '_', $slug);
                        require_once( CMS_MODULE_DIR . '/' . $slug . '.php' );
                        do_action('enabled_infinity_module-' . $slug);
                        $redirect = remove_query_arg(array('action', 'module', '_nonce'));
                        wp_redirect($redirect);
                        exit;
                    }
                    break;
                case 'disable';
                    if (in_array($_GET['module'], array_keys($installed_modules)) && !in_array($_GET['module'], $disabled_modules) && !in_array(strtolower($installed_modules[$_GET['module']]['builtin']), array('1', 'true'))) {
                        $disabled_modules[] = $_GET['module'];
                        update_option('disabled_modules', $disabled_modules);
                        do_action('disabled_infinity_module-' . $_GET['module']);
                        $redirect = remove_query_arg(array('action', 'module', '_nonce'));
                        wp_redirect($redirect);
                        exit;
                    }
                    break;
                default :
            }
        } elseif (isset($_POST['wp-sitemanager-api-key'])) {
            check_admin_referer('wp-sitemanager-api-key');
            if (isset($_POST['infinity-api-account']) && $_POST['infinity-api-account'] && isset($_POST['infinity-api-key']) && $_POST['infinity-api-key']) {
                $api_key = array(
                    'account' => stripslashes_deep($_POST['infinity-api-account']),
                    'key' => stripslashes_deep($_POST['infinity-api-key'])
                );
                add_option('infinity_api_key', $api_key);
            }
        }
    }

    /*
     * I will do to get the module that is disabled.
     * @ Since 0.0.1
     */

    private function get_disabled_modules() {
        return apply_filters('wp-sitemanager/disabled_modules', get_option('disabled_modules', array()));
    }

    /*
     * Performs file scrutiny of module directory, make the acquisition of all of the modules.
     * * @ Since 0.0.1
     */

    private function get_modules() {
        $files = array();
        $modules = array();

        if (!$dir = @opendir(CMS_MODULE_DIR)) {
            return $modules;
        }
        while (false !== $file = readdir($dir)) {
            if ('.' == substr($file, 0, 1) || '.php' != substr($file, -4)) {
                continue;
            }
            $file = CMS_MODULE_DIR . "/$file";
            if (!is_file($file)) {
                continue;
            }
            $files[] = $file;
        }

        closedir($dir);

        if ($files) {

            foreach ($files as $file) {
                $headers = $this->get_module_headers($file);

                if ($headers['name']) {
                    $slug = $this->get_module_slug($file);
                    $modules[$slug] = $headers;
                }
            }
        }

        uasort($modules, array($this, 'module_sort'));
        return $modules;
    }

    /*
     * I will do to get the data about the module from comment data module.
     * @ Since 0.0.1
     */

    private function get_module_headers($module) {
        if (!file_exists($module)) {
            return false;
        }

        $header_items = array(
            'name' => 'cms module',
            'description' => 'Module Description',
            'order' => 'Order',
            'introduced' => 'First Introduced',
            'changed' => 'Major Changes In',
            'builtin' => 'Builtin',
            'free' => 'Free',
        );
        return get_file_data($module, $header_items, 'wp-sitemanager');
    }

    /*
     * Based on the file name of the module, I get a slug of the module.
     * @since 0.0.1
     */

    private function get_module_slug($module) {
        return str_replace('.php', '', basename($module));
    }

    /*
     * set menu slug for each module
     */

    function set_menu_slug($module) {
        return str_replace('.php', '', basename($module));
    }

    /*
     * Callback method for sorting on the basis of the order of module
     * @ Since 0.0.1
     *
     * @ Param array module for sorting data a
     * @ Param array module for sorting data b
     * @ Return int
     */

    private function module_sort($a, $b) {
        $order_a = is_numeric($a['order']) ? $a['order'] : 0;
        $order_b = is_numeric($b['order']) ? $b['order'] : 0;
        if ($order_a == $order_b) {
            return 0;
        }
        return ( $order_a < $order_b ) ? -1 : 1;
    }

    /*
     * I will output the CSS for the management screen.
     * @ Since 0.0.1
     */

    public function print_icon_style() {
        $url = preg_replace('/^https?:/', '', plugin_dir_url(__FILE__)) . 'images/icon32.png';
        //echo $url;
        ?>
        <style type="text/css" charset="utf-8">
            #icon-prime-icon32 {
                background: url( <?php echo esc_url($url); ?> ) no-repeat center;
            }
            #developper_information {
                margin: 20px 30px 10px;
            }
            #developper_information .content {
                padding: 10px 20px;
            }
            #poweredby {
                text-align: right;
            }
            .setting-section {
                padding: 20px 0;
                border-top: solid 1px #fff;
                border-bottom: solid 1px #ddd;
            }
            #og-image img {
                max-width: 150px;
                max-height: 150px;
            }
        </style>
        <?php
    }

    /*
            * I will make the display of the general settings for the basic page.
            * Once you have to perform in the here and verify the output of TODO nonce, it is sufficient only in the implementation of the process of updating the data in the module side.
            * @ Since 0.0.1
            */

    public function general_page() {
        ?>
        <div class="wrap">
            <?php screen_icon('prime-icon32'); ?>
            <h2><?php _e('General Settings', 'wp-sitemanager'); ?></h2>
            <form action="" method="post">
                <?php wp_nonce_field('wp-sitemanager-general'); ?>
                <?php do_action('wp-sitemanager-general-page'); ?>
                <?php submit_button(NULL, 'primary', 'wp-sitemanager-general'); ?>
            </form>
            <div id="developper_information">
                <div id="poweredby">
                    <a href="http://www.prime-strategy.co.jp/" target="_blank"><img src="<?php echo preg_replace('/^https?:/', '', plugin_dir_url(__FILE__)) . 'images/ps_logo.png'; ?>" alt="Powered by Prime Strategy" /></a>
                </div>
            </div>
        </div>
        <?php
    }

    /*
     * Data update hook General Settings
     * @ Since 0.0.1
     */

    public function update_general() {
        if (isset($_POST['wp-sitemanager-general'])) {
            check_admin_referer('wp-sitemanager-general');
            do_action('wp-sitemanager-update-general');
        }
    }

    /*
     * I will make the display of the access settings of the basic page.
     * @ Since 0.0.1
     */

    public function access_page() {
        ?>
        <div class="wrap">
            <?php screen_icon('prime-icon32'); ?>
            <h2>SEO &amp; SMO</h2>
            <form action="" method="post">
                <?php wp_nonce_field('wp-sitemanager-access'); ?>
                <?php do_action('wp-sitemanager-access-page'); ?>
                <?php submit_button(NULL, 'primary', 'wp-sitemanager-access'); ?>
            </form>
            <div id="developper_information">
                <div id="poweredby">
                    <a href="http://www.prime-strategy.co.jp/" target="_blank"><img src="<?php echo preg_replace('/^https?:/', '', plugin_dir_url(__FILE__)) . 'images/ps_logo.png'; ?>" alt="Powered by Prime Strategy" /></a>
                </div>
            </div>
        </div>
        <?php
    }

    /*
     * Data update hook access settings
     *
     * @ Since 0.0.1
     */

    public function update_access() {
        if (isset($_POST['wp-sitemanager-access'])) {
            check_admin_referer('wp-sitemanager-access');
            do_action('wp-sitemanager-update-access');
        }
    }

}

// class end
$WP_SiteManager = new WP_SiteManager;

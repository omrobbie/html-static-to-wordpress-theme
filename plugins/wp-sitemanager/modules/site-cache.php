<?php
/*
 * cms module:		Cache
 * Module Description:	Reduce server load by cache to improves displaying speed
 * Order:		120
 * First Introduced:	1.0.3
 * Major Changes In:	
 * Builtin:		false
 * Free:		true
 * License:		GPLv2 or later
 */

class WP_SiteManager_cache {

    private $cache_dir;
    private $advance_cache_tpl;
    private $regex_include_tpl;
    private $headers = array();

    function __construct($parent) {
        global $cache_db, $wpdb, $table_prefix;
        $this->advance_cache_tpl = plugin_dir_path(dirname(__FILE__)) . 'advanced_cache_tpl/advanced-cache.tpl';
        $this->regex_include_tpl = plugin_dir_path(dirname(__FILE__)) . 'advanced_cache_tpl/regex_include.tpl';
        $this->parent = $parent;
        if (defined('CACHE_DB_NAME') && defined('CACHE_DB_USER') && defined('CACHE_DB_PASSWORD') && defined('CACHE_DB_HOST')) {
            $cache_db = new wpdb(CACHE_DB_USER, CACHE_DB_PASSWORD, CACHE_DB_NAME, CACHE_DB_HOST);
            $cache_db->set_prefix($table_prefix);
        } else {
            $cache_db = $wpdb;
        }

        if (is_admin()) {
            add_action('admin_menu', array(&$this, 'add_setting_menu'));
            add_action('load-wp-sitemanager_page_wp-sitemanager-cache', array(&$this, 'update_cache_setting'));
//		add_action( 'theme_switcher/device_updated'                , array( &$this, 'clear_all_cache' ) );
            add_action('theme_switcher/device_updated', array(&$this, 'generate_advanced_cache_file'));
//		add_action( 'theme_switcher/device_group_updated'          , array( &$this, 'clear_all_cache' ) );
            add_action('theme_switcher/device_group_updated', array(&$this, 'generate_advanced_cache_file'));
            add_action('transition_post_status', array(&$this, 'post_publish_clear_cache'), 10, 3);
//		add_action( 'delete_term'                                  , array( &$this, 'clear_all_cache' ) );
//		add_action( 'edited_term'                                  , array( &$this, 'clear_all_cache' ) );
//		add_action( 'deleted_user'                                 , array( &$this, 'clear_all_cache' ) );
//		add_action( 'profile_update'                               , array( &$this, 'clear_all_cache' ) );
        } else {
            add_action('init', array(&$this, 'buffer_start'));

//		add_action( 'template_redirect'                            , array( &$this, 'check_vars' ) );
        }
        add_action('init', array(&$this, 'check_installed'));
//	add_action( 'transition_comment_status'                        , array( &$this, 'transition_comment_status' ), 10, 3 );
//	add_action( 'comment_post'                                     , array( &$this, 'new_comment' ), 10, 2 );
    }

    private function tambahan() {
        $vers = array(
            'module' => __('Cache', 'wp-sitemanager'),
            'Description' => __('Reduce server load by cache to improves displaying speed', 'wp-sitemanager')
        );
    }
    
    function check_installed() {
        if (!get_option('site_manager_cache_installed')) {
            $this->create_cache_table();
            $this->generate_advanced_cache_file();
        } elseif (get_option('site_manager_cache_installed') < 2) {
            $this->update_cache_table(2);
        }
    }

    function create_cache_table() {
        global $cache_db;

        $sql = "
CREATE TABLE `{$cache_db->prefix}site_cache` (
 `hash` varchar(32) NOT NULL,
 `content` longtext NOT NULL,
 `device_url` text NOT NULL,
 `type` varchar(10) NOT NULL,
 `post_type` varchar(200) NOT NULL,
 `headers` text NOT NULL,
 `create_time` datetime NOT NULL,
 `expire_time` datetime NOT NULL,
 PRIMARY KEY  (`hash`),
 KEY `expire_time` (`expire_time`),
 KEY `type` (`type`,`post_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8";

        $cache_db->query($sql);

        $sql = "SHOW TABLES FROM `{$cache_db->dbname}` LIKE '{$cache_db->prefix}site_cache'";
        $table_exists = $cache_db->get_var($sql);
        if ($table_exists) {
            update_option('site_manager_cache_installed', 1);
        }
    }

    private function update_cache_table($db_version) {
        global $cache_db;
        switch ($db_version) {
            case 2 :
                $sql = "
                ALTER TABLE `{$cache_db->prefix}site_cache`
                ADD			`user_agent` TEXT NOT NULL AFTER `headers` ,
                ADD			`server` VARCHAR( 16 ) NOT NULL AFTER `user_agent`";
                $cache_db->query($sql);
                update_option('site_manager_cache_installed', 2);
                break;
            default :
        }
    }

    function add_setting_menu() {
        add_submenu_page($this->parent->root, __('Cache','wp-sitemanager'), __('Cache','wp-sitemanager'), 'administrator', basename($this->parent->root) . '-cache', array(&$this, 'cache_setting_page'));
    }

    function cache_setting_page() {
        $life_time = get_option('site_cache_life', array('home' => 60, 'archive' => 60, 'singular' => 360, 'exclude' => '', 'allowed_query_keys' => '', 'update' => 'none'));
        $clear_link = add_query_arg(array('del_cache' => '1'));
        $advanced_cache_link = add_query_arg(array('generate_advanced_cache' => '1'));
        $advanced_check = $this->check_advanced_cache_file();
        ?>
        <div class="wrap">
            <h2><?php _e('Cache Settings','wp-sitemanager');?></h2>
            <h3><?php _e('Cache Expiration','wp-sitemanager');?></h3>
            <?php if (!( defined('WP_CACHE') && WP_CACHE )) : ?>
                <div class="updated"> 
                    <p><?php _e('Cache is not enabled. Please write '."<code>define( 'WP_CACHE', true );</code>".' above  <code>/* That\'s all, stop editing! Happy blogging. */</code> statement in wp-config.php, for enabling cache.','wp-sitemanager');?></p>
                </div> 
            <?php endif; ?>
            <?php if (is_wp_error($advanced_check)) : ?>
                <div class="updated"> 
                    <p><?php echo $advanced_check->get_error_message('cache-file-error'); ?></p>
                </div> 
            <?php endif; ?>
            <form method="post" action="">
                <?php wp_nonce_field('site-cache-settings'); ?>
                <table class="form-table">
                    <tr>
                        <th><?php _e('Front page','wp-sitemanager');?></th>
                        <td>
                            <input type="text" size="2" name="site_cache_life[home]" value="<?php echo esc_attr($life_time['home']); ?>" /> <?php _e('Minutes','wp-sitemanager');?>
                        </td>
                    </tr>
                    <tr>
                        <th><?php _e('Archive (List)','wp-sitemanager');?></th>
                        <td>
                            <input type="text" size="2" name="site_cache_life[archive]" value="<?php echo esc_attr($life_time['archive']); ?>" /> <?php _e('Minutes','wp-sitemanager');?>
                        </td>
                    </tr>
                    <tr>
                        <th><?php _e('Detail Article','wp-sitemanager');?></th>
                        <td>
                            <input type="text" size="2" name="site_cache_life[singular]" value="<?php echo esc_attr($life_time['singular']); ?>" /> <?php _e('Minutes','wp-sitemanager');?>
                        </td>
                    </tr>
                    <tr>
                        <th><?php _e('Cache exclusion','wp-sitemanager');?>URL</th>
                        <td>
                            <textarea cols="70" rows="5" name="site_cache_life[exclude]"><?php echo esc_html($life_time['exclude']); ?></textarea>
                            <p class="description"><?php _e('You can specify URL patterns (can use regex) for excluding cache. Put a line break for specify more than one patters','wp-sitemanager');?></p>
                        </td>
                    </tr>
                    <tr>
                        <th><?php _e('Query string to cache','wp-sitemanager');?></th>
                        <td>
                            <textarea cols="70" rows="5" name="site_cache_life[allowed_query_keys]"><?php echo esc_html($life_time['allowed_query_keys']); ?></textarea>
                            <p class="description"><?php _e('Please enter a key of valid query string as cache data','wp-sitemanager');?></p>
                        </td>
                    </tr>
                </table>
                <h3><?php _e('Range of cache will be delete when article is published','wp-sitemanager');?></h3>
                <select name="site_cache_life[update]">
                    <option value="none"<?php echo $life_time['update'] == 'none' ? ' selected="selected"' : ''; ?>><?php _e('Do not delete','wp-sitemanager');?></option>
                    <option value="single"<?php echo $life_time['update'] == 'single' ? ' selected="selected"' : ''; ?>><?php _e('Only Article','wp-sitemanager');?></option>
                    <option value="with-front"<?php echo $life_time['update'] == 'with-front' ? ' selected="selected"' : ''; ?>><?php _e('Post &amp; Front page','wp-sitemanager');?></option>
                    <option value="all"<?php echo $life_time['update'] == 'all' ? ' selected="selected"' : ''; ?>><?php _e('All','wp-sitemanager');?></option>
                </select>
                <?php submit_button(NULL, 'primary', 'site-cache-settings'); ?>
            </form>
            <?php if (apply_filters('allow_sitemanager_cache_clear', true)) : ?>
                <h3><?php _e('Clear Cache','wp-sitemanager');?></h3>
                <a href="<?php echo $clear_link; ?>" class="button"><?php _e('Clear all the cache','wp-sitemanager');?></a>
            <?php endif; ?>

            <?php if (apply_filters('allow_generate_advanced_cache', true)) : ?>
                <h3><?php _e('Regenerate advanced-cache.php','wp-sitemanager');?></h3>
                <?php if ($this->is_writable_advanced_cache_file()) : ?>
                    <a href="<?php echo $advanced_cache_link; ?>" class="button"><?php _e('Generate advanced-cache.php','wp-sitemanager');?></a>
                <?php else : ?>
                    <p><?php printf(_e('No permission to re-write file %s or advanced-cache.php. Please set re-write permission to enable re-generate advanced-cache.php','wp-sitemanager'),basename(WP_CONTENT_DIR));?></p>
                <?php endif; ?>
            <?php endif; ?>
        </div>
        <?php
    }

    function update_cache_setting() {
        if (isset($_GET['del_cache']) && $_GET['del_cache'] == '1' && apply_filters('allow_sitemanager_cache_clear', true)) {
            $this->clear_all_cache();
            $redirect = remove_query_arg('del_cache');
            wp_redirect($redirect);
            exit;
        }
        if (isset($_GET['generate_advanced_cache']) && $_GET['generate_advanced_cache'] == '1' && apply_filters('allow_generate_advanced_cache', true)) {
            $this->generate_advanced_cache_file();
            $redirect = remove_query_arg('generate_advanced_cache');
            wp_redirect($redirect);
            exit;
        }
        if (isset($_POST['site-cache-settings']) && isset($_POST['site_cache_life']) && is_array($_POST['site_cache_life'])) {
            check_admin_referer('site-cache-settings');
            $settings = array();
            foreach ($_POST['site_cache_life'] as $key => $minutes) {
                if (function_exists('mb_convert_kana') && !in_array($key, array('exclude', 'allowed_query_keys', 'update'))) {
                    $minutes = mb_convert_kana($minutes, 'n', 'UTF-8');
                    $minutes = preg_replace('/[\D]/', '', $minutes);
                    $minutes = absint($minutes);
                }
                $settings[$key] = $minutes;
            }
            update_option('site_cache_life', $settings);
        }
    }

    function is_writable_advanced_cache_file() {
        $writable = false;
        if (file_exists(WP_CONTENT_DIR . '/advanced-cache.php')) {
            if (is_writable(WP_CONTENT_DIR . '/advanced-cache.php')) {
                $writable = true;
            }
        } else {
            if (is_writable(WP_CONTENT_DIR)) {
                $writable = true;
            }
        }
        return $writable;
    }

    function check_advanced_cache_file() {
        if (file_exists(WP_CONTENT_DIR . '/advanced-cache.php')) {
            if (is_readable(WP_CONTENT_DIR . '/advanced-cache.php')) {
                $file_content = file_get_contents(WP_CONTENT_DIR . '/advanced-cache.php');
                if (strpos($file_content, 'class SiteManagerAdvancedCache {') === false) {
                    return new WP_Error('cache-file-error', 'advanced-cache.php '.__('Although you not exist, ','wp-sitemanager').'WP SiteManager'.__('I am different from that of.','wp-sitemanager'));
                }
            } else {
                return new WP_Error('cache-file-error', 'advanced-cache.php'.__('You do not have read access to.','wp-sitemanager'));
            }
        } else {
            return new WP_Error('cache-file-error', 'advanced-cache.php '.__('Does not exist','wp-sitemanager'));
        }
        return true;
    }

    function check_vars() {
        var_dump($_SERVER);
    }

    function buffer_start() {
        ob_start('write_cache_file');
    }

    function write_cache_file() {
        $buffer = ob_get_contents();
    }

    function clear_all_cache() {
        global $cache_db;
        $sql = "TRUNCATE TABLE `{$cache_db->prefix}site_cache`";
        $cache_db->query($sql);
    }

    function clear_front_cache() {
        global $cache_db;
        $sql = "
DELETE
FROM	`{$cache_db->prefix}site_cache`
WHERE	`type` = 'front'
";
        $cache_db->query($sql);
    }

    function clear_single_cache($post) {
        global $cache_db;

        $regexes = get_option('sitemanager_device_rules', array());
        $groups = array_keys($regexes);
        $groups = array_merge(array(''), $groups);

        $permalink = get_permalink($post->ID);
        $permalink = parse_url($permalink);
        $path = $permalink['path'];
        if (isset($permalink['query']) && $permalink['query']) {
            $path .= '?' . $permalink['query'];
        }

        $hashes = array();
        foreach ($groups as $group) {
            $device_url = array(
                $group,
                $permalink['scheme'],
                $permalink['host'],
                $path
            );
            $device_url = implode('|', $device_url);
            $hashes[] = md5($device_url);
        }
        $hashes = implode("', '", $hashes);

        $sql = "
DELETE
FROM	`{$cache_db->prefix}site_cache`
WHERE	`type` = 'single'
AND		`hash` IN ( '{$hashes}' )
";
        $cache_db->query($sql);
    }

    function post_publish_clear_cache($new_status, $old_status, $post) {
        if ($new_status == 'publish') {
            $life_time = get_option('site_cache_life', array('update' => 'none'));
            switch ($life_time['update']) {
                case 'with-front' :
                    $this->clear_front_cache();
                case 'single' :
                    $this->clear_single_cache($post);
                    break;
                case 'all' :
                    $this->clear_all_cache();
                    break;
                case 'none' :
                default :
            }
        }
    }

    function transition_comment_status($new_status, $old_status, $comment) {
        if ($new_status == 'approved' || $old_status == 'approved') {
            $this->clear_all_cache();
        }
    }

    function new_comment($comment_ID, $approved) {
        if ($approved === 1) {
            $this->clear_all_cache();
        }
    }

    function generate_advanced_cache_file() {
        global $wpdb, $wp;

        $advanced_cache_file = WP_CONTENT_DIR . '/advanced-cache.php';

        if (file_exists($advanced_cache_file) && is_writable($advanced_cache_file) || is_writable(WP_CONTENT_DIR)) {

            if (file_exists($this->advance_cache_tpl) && is_readable($this->advance_cache_tpl)) {
                $life_time = get_option('site_cache_life', array('home' => 60, 'archive' => 60, 'singular' => 360, 'exclude' => '', 'allowed_query_keys' => '', 'update' => 'none'));
                $advanced_cache_data = file_get_contents($this->advance_cache_tpl);

                $device_regexes = '';
                $regexes = get_option('sitemanager_device_rules', array());
                foreach ($regexes as $group => $arr) {
                    $regex = '/' . implode('|', $arr['regex']) . '/';
                    $device_regexes .= "\t\t'" . $group . "' => '" . $regex . "',\n";
                }

                $allowed_query_keys = trim($life_time['allowed_query_keys']);
                $allowed_query_keys = preg_split('/[\s]+/', $allowed_query_keys);
                $allowed_query_keys = array_unique(array_merge($wp->public_query_vars, $allowed_query_keys));
                $allowed_query_keys = "'" . implode("','", $allowed_query_keys) . "'";

                if (is_multisite()) {
                    $sql = "
SELECT	`blog_id`, `domain`, `path`
FROM	`{$wpdb->blogs}`
WHERE	`public` = 1
AND		`spam` = 0
AND		`deleted` = 0
ORDER BY `blog_id` ASC";
                    $blogs = $wpdb->get_results($sql);
                    $sites_array = '';

                    if (is_subdomain_install()) {
                        $site_mode = "'domain'";
                        $property = 'domain';
                    } else {
                        $site_mode = "'directory'";
                        $property = 'path';
                    }
                    if ($blogs) {
                        foreach ($blogs as $blog) {
                            $sites_array .= "\t\t'" . $blog->$property . "' => '" . $blog->blog_id . "',\n";
                        }
                    }
                    if (file_exists($this->regex_include_tpl) && is_readable($this->regex_include_tpl)) {
                        $regex_include_file = WP_CONTENT_DIR . '/regex-include-' . get_current_blog_id() . '.php';
                        $regex_include_data = file_get_contents($this->regex_include_tpl);
                        $replaces = array(
                            '### DEVICE REGEX ###' => $device_regexes,
                            '### QUERY KEYS ###' => $allowed_query_keys
                        );
                        $regex_include_data = str_replace(array_keys($replaces), $replaces, $regex_include_data);
                        @file_put_contents($regex_include_file, $regex_include_data);
                        $regex_include = "
		\$regex_include_file = dirname( __FILE__ ) . '/regex-include-' . \$site_id . '.php';
		if ( file_exists( \$regex_include_file ) ) {
			include( \$regex_include_file );
		} else {
			return;
		}
";
                    }
                    $device_regexes = '';
                    $allowed_query_keys = '';
                } else {
                    $site_mode = 'false';
                    $sites_array = '';
                    $regex_include = '';
                    $allowed_query_keys = '$this->allowed_query_keys = array( ' . $allowed_query_keys . ' );';
                }

                $replaces = array(
                    '### DEVICE REGEX ###' => $device_regexes,
                    '### SITES ARRAY ###' => $sites_array,
                    '### SITE MODE ###' => $site_mode,
                    '### REGEX INCLUDE ###' => $regex_include,
                    '### QUERY KEYS ###' => $allowed_query_keys,
                );
                $advanced_cache_data = str_replace(array_keys($replaces), $replaces, $advanced_cache_data);

                @file_put_contents($advanced_cache_file, $advanced_cache_data);
            }
        }
    }

}

// class end
$this->instance->$instanse = new WP_SiteManager_cache($this);

function write_cache_file($buffer) {
    global $WP_SiteManager, $cache_db, $wp;

    foreach (array_keys($_COOKIE) as $key) {
        if (strpos($key, 'comment_author_') === 0) {
            return $buffer;
        }
    }
    if ($_SERVER['REQUEST_METHOD'] == 'GET' && !is_404() && !is_search() && !is_user_logged_in() && !is_admin() && preg_match('#/index\.php$#', $_SERVER['SCRIPT_NAME']) && !isset($GLOBALS['http_response_code'])) {
        $life_time = get_option('site_cache_life', array('home' => 60, 'archive' => 60, 'singular' => 360, 'exclude' => '', 'allowed_query_keys' => '', 'update' => 'none'));

        if ($life_time['exclude']) {
            $rules = explode("\n", $life_time['exclude']);
            $regex = array();
            foreach ($rules as $rule) {
                $regex[] = str_replace('/', '\/', trim($rule));
            }
            $regex = '/' . implode('|', $regex) . '/';
            if (preg_match($regex, $_SERVER['REQUEST_URI'])) {
                $buffer .= '<!-- cache excluded -->';
                return $buffer;
            }
        }

        $cache = $buffer . "\n" . '<!-- page cached by WP SiteManager -->';

        $ua = $_SERVER['HTTP_USER_AGENT'];
        $regexes = get_option('sitemanager_device_rules', array());

        $group = '';
        foreach ($regexes as $current_group => $arr) {
            if (isset($_GET['site-view']) && strtolower($_GET['site-view']) == strtolower($_GET['site-view'])) {
                $group = $current_group;
                break;
            } elseif (isset($_COOKIE['site-view']) && strtolower($_COOKIE['site-view']) == strtolower($_COOKIE['site-view'])) {
                $group = $current_group;
                break;
            }
            $regex = '/' . implode('|', $arr['regex']) . '/';
            if (preg_match($regex, $ua)) {
                $group = $current_group;
                break;
            }
        }

        if (isset($_GET['site-view'])) {
            if (strtolower($_GET['site-view']) == 'pc') {
                $group = '';
            }
            foreach ($regexes as $current_group => $arr) {
                if (strtolower($_GET['site-view']) == strtolower($current_group)) {
                    $group = $current_group;
                    break;
                }
            }
        } elseif (isset($_COOKIE['site-view'])) {
            if (strtolower($_COOKIE['site-view']) == 'pc') {
                $group = '';
            }
            foreach ($regexes as $current_group => $arr) {
                if (strtolower($_COOKIE['site-view']) == strtolower($current_group)) {
                    $group = $current_group;
                    break;
                }
            }
        }
        $requerst_query = '';
        $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on' ? 'https' : 'http';
        $request_uri = parse_url($_SERVER['REQUEST_URI']);
        if (isset($request_uri['query'])) {
            parse_str($request_uri['query'], $requerst_query);

            $allowed_query_keys = trim($life_time['allowed_query_keys']);
            $allowed_query_keys = preg_split('/[\s]+/', $allowed_query_keys);

            foreach ($requerst_query as $key => $var) {
                if (!in_array($key, array_unique(array_merge($wp->public_query_vars, $allowed_query_keys)))) {
                    unset($requerst_query[$key]);
                }
            }
            ksort($requerst_query);
            $requerst_query = http_build_query($requerst_query);
        }

        $request_uri = $request_uri['path'];
        if ($requerst_query) {
            $request_uri .= '?' . $requerst_query;
        }

        $device_url = array(
            $group,
            $protocol,
            $_SERVER['SERVER_NAME'],
            $request_uri
        );
        $device_url = implode('|', $device_url);
        $hash = md5($device_url);
        $sql = "
SELECT	*
FROM	{$cache_db->prefix}site_cache
WHERE	`hash` = '$hash'
";
        $row = false;
        $rows = $cache_db->get_results($sql);
        if ($rows) {
            foreach ($rows as $r) {
                if ($r->device_url == $device_url) {
                    $row = $r;
                    break;
                }
            }
        }

        $header_arr = array();
        $headers = headers_list();
        foreach ($headers as $header) {
            list( $key, $val ) = explode(': ', $header, 2);
            if ($key == 'Vary' && strpos($val, 'Cookie') === false) {
                $val .= ',Cookie';
            }
            if ($key != 'Set-Cookie') {
                $header_arr[$key] = $val;
            }
        }
        $header_arr['X-Static-Cached-By'] = 'WP SiteManager';

        if (is_front_page()) {
            $type = 'front';
            $post_type = 'page';
            $life_time_key = 'home';
        } elseif (is_singular()) {
            $type = 'single';
            if (is_single()) {
                $post_type = 'post';
            } elseif (is_page()) {
                $post_type = 'page';
            } else {
                $post_type = get_query_var('post_type');
            }
            $life_time_key = 'singular';
        } elseif (is_category()) {
            $type = 'taxonomy';
            $post_type = 'category' . '|' . get_query_var('category_name');
            $life_time_key = 'archive';
        } elseif (is_tag()) {
            $type = 'taxonomy';
            $post_type = 'post_tag' . '|' . get_query_var('tag_name');
            $life_time_key = 'archive';
        } elseif (is_tax()) {
            $type = 'taxonomy';
            $post_type = get_query_var('taxonomy') . '|' . get_query_var('term');
            $life_time_key = 'archive';
        } elseif (is_date()) {
            $type = 'date';
            if (get_query_var('post_type')) {
                $post_type = get_query_var('post_type');
            } else {
                $post_type = 'post';
            }
            $life_time_key = 'archive';
        } elseif (is_post_type_archive()) {
            $type = 'post_type_archive';
            $post_type = get_query_var('post_type');
            $life_time_key = 'archive';
        } elseif (is_author()) {
            $type = 'author';
            if (get_query_var('post_type')) {
                $post_type = get_query_var('post_type');
            } else {
                $post_type = 'post';
            }
            $life_time_key = 'archive';
        } elseif (is_home()) {
            $type = 'home';
            $post_type = 'post';
            $life_time_key = 'home';
        } elseif (is_single()) {
            $post_type = 'post';
            $type = 'single';
            $life_time_key = 'singular';
        }

        $expire = apply_filters('site_cache_expire_time', $life_time[$life_time_key] * 60, $life_time_key);

        $server = defined('CACHE_SERVER') ? CACHE_SERVER : '';
        $data = array(
            'hash' => $hash,
            'content' => $cache,
            'device_url' => $device_url,
            'type' => $type,
            'post_type' => $post_type,
            'headers' => serialize($header_arr),
            'user_agent' => $_SERVER['HTTP_USER_AGENT'],
            'server' => $server,
            'create_time' => date('Y-m-d H:i:s'),
            'expire_time' => date('Y-m-d H:i:s', time() + $expire),
        );

        if (!$row) {
            $cache_db->insert($cache_db->prefix . 'site_cache', $data);
        } elseif ($row->expire_time < date('Y-m-d H:i:s')) {
            $cache_db->update($cache_db->prefix . 'site_cache', $data, array('hash' => $hash));
        } elseif (strpos($cache_db->content, '<!-- page cached by WP SiteManager -->') === false) {
            $cache_db->update($cache_db->prefix . 'site_cache', $data, array('hash' => $hash));
        }
    }
    return $buffer;
}

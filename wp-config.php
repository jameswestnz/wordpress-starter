<?php
/**
 * Set WEB_ROOT to DOCUMENT_ROOT
 * chdir() to ensure all operations begin from this path
 */
define('WEB_ROOT', isset($_SERVER['PWD']) ? $_SERVER['PWD'] : $_SERVER['DOCUMENT_ROOT']);
if(WEB_ROOT == realpath(WEB_ROOT . '/wp')) throw new Exception('Cannot run from ' . WEB_ROOT);
chdir(WEB_ROOT);
/**
 * Custom URL paths
 */
define('WP_HOME', 'http://' . $_SERVER['SERVER_NAME']);
define('WP_SITEURL', WP_HOME . '/wp');
/**
 * Custom Content Directory
 */
define('CONTENT_DIR', '/site');
define('WP_CONTENT_DIR', WEB_ROOT . CONTENT_DIR);
define('WP_CONTENT_URL', WP_HOME . CONTENT_DIR);
/**
 * Include site-specific config
 */
if(file_exists(WEB_ROOT . '/../wp-config.php')) require_once WEB_ROOT . '/../wp-config.php';
/**
 * DB settings
 * $table_prefix is pluggable in case we need it
 */
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');
$table_prefix = defined('DB_PREFIX') ? DB_PREFIX : 'wp_';
/**
 * WordPress Localized Language
 * Default: English
 *
 * A corresponding MO file for the chosen language must be installed to app/languages
 */
if(!defined('WPLANG')) define('WPLANG', '');
/**
 * Custom Settings
 * Ensure these are pluggable as we may not always want these enabled - however, these are good defaults if not specified
 */
if(!defined('AUTOMATIC_UPDATER_DISABLED')) define('AUTOMATIC_UPDATER_DISABLED', true);
if(!defined('DISABLE_WP_CRON')) define('DISABLE_WP_CRON', true);
if(!defined('DISALLOW_FILE_EDIT')) define('DISALLOW_FILE_EDIT', true);
if(!defined('WP_HTTP_BLOCK_EXTERNAL')) define('WP_HTTP_BLOCK_EXTERNAL', true);
/**
 * Bootstrap WordPress
 */
if(!defined('ABSPATH')) define('ABSPATH', WEB_ROOT . '/wp/');
require_once(ABSPATH . 'wp-settings.php');
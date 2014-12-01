<?php
// This file replaces core WP index.php
	
// WordPress view bootstrapper
define('WP_USE_THEMES', true);

/**
 * Replaces core WP wp-blog-header.php
 */
if ( !isset($wp_did_header) ) {
	$wp_did_header = true;
	
	/**
	 * Skip wp-load.php as we're assuming the config exists in our custom location
	 */
	require_once realpath('./wp/../') . '/wp-config.php';
	
	wp();
	require_once( ABSPATH . WPINC . '/template-loader.php' );
}
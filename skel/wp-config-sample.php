<?php
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', '%database_name%');

/** MySQL database username */
define('DB_USER', '%db_user%');

/** MySQL database password */
define('DB_PASSWORD', '%db_password%');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '%auth_key%');
define('SECURE_AUTH_KEY',  '%secure_auth_key%');
define('LOGGED_IN_KEY',    '%logged_in_key%');
define('NONCE_KEY',        '%nonce_key%');
define('AUTH_SALT',        '%auth_salt%');
define('SECURE_AUTH_SALT', '%secure_auth_salt%');
define('LOGGED_IN_SALT',   '%logged_in_salt%');
define('NONCE_SALT',       '%nonce_salt%');

<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'joosi' );

/** Database username */
define( 'DB_USER', 'joosi' );

/** Database password */
define( 'DB_PASSWORD', 'joosi' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '_;C|n71hMyAY7fL&2MRQ@=sN;*;NOx7bwG5bMZH-U=fhy)vLV`{{#VU6)gjY4{EU' );
define( 'SECURE_AUTH_KEY',  '03SX_Hp=n(8g<dmB=uE;R4FmzX)WsA0pxuZS+WD!L2^M$9&n=Xh7hAlr(V,L2*2h' );
define( 'LOGGED_IN_KEY',    'vO]K`6C25hF3aw[AVVUjuEIb}Rt_A3Xq:69J>FU>tv0--,>09IUUb<h*kd@lG_KP' );
define( 'NONCE_KEY',        'v}Nw_^PgiP5+idNl9w8>|n7jE9xG QJFEA&vm[=OsH)+. P=mGD95E*biT3&HL3E' );
define( 'AUTH_SALT',        '&~xd*n-r$n[JNg~ON)hWd7_?(tSdK]%b#s4;Mt2MKiw}>lab`|1*c}:fX|~l0eo#' );
define( 'SECURE_AUTH_SALT', 'X@S={1@vL,ETQzY zviuJC)fg1a61fFf-j % xs,a|uMK$_hQn@~Q/PEe$jzR{_^' );
define( 'LOGGED_IN_SALT',   '%99fJ|5N27HtLT+4~u0|x2t%|*AM $Cx_cqo^Z}PDz$Xz/EuG@@7Z4YatJ/Kqgbk' );
define( 'NONCE_SALT',       '1ad)B@&pRn5o7v&`t!7=jmA3^h/e/P9p |g,vK95*Hs]^@nQDR&O67w4*%@+j}D)' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

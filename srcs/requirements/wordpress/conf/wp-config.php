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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', '${DB_ADMIN_LOGIN}' );

/** Database password */
define( 'DB_PASSWORD', '${DB_ADMIN_PASSWD}' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

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
define( 'AUTH_KEY',         'fdy{o%?>>~JJ:^t}[`)NW^Rmm[x:`=S{`pF/*FT*z?N0: S.nY&0TyI@RP*ztf0#' );
define( 'SECURE_AUTH_KEY',  '&@Wnchyh$u(*<CK%cxAQcA9s_j0V`~uEkfGn#TH[Jm7v?DAt t01HU{/e,U&$SiZ' );
define( 'LOGGED_IN_KEY',    'gZ%2rOmN0BcJ(]oE<rf?;CaY|)/d%P,oReZiibR_K!M!;$.)tLv7u* )z]lkUw:a' );
define( 'NONCE_KEY',        'u~A<Y%hOwm5ntj~kmr_F)y3?IkVhOOpD_unsF,Smn(Ty)2VYKT(i;W1T2]EA#JSd' );
define( 'AUTH_SALT',        'gXA_=Y4QbWxA6RqgvwZ<b#iuX8]UJk$;dePmQRJFRh@b|a#+r~sXZ,cIIUXb-|Vy' );
define( 'SECURE_AUTH_SALT', ':+df_Ms@XGh%%=XW(;mu2Bd!irZ`8}G7[k_!nH6k#-z/)wwI=+Wv,?_^jgQ6&r.x' );
define( 'LOGGED_IN_SALT',   'm4.5:Cq3Y(e[_fs)%?#;0k;$E07Wv4P(KfdwpKvfR5607?X$iG6q|_a2X>~I5l*=' );
define( 'NONCE_SALT',       'n?GUQC?Vq pDXwZrgk,h;.&05p<BM4qWiL>3Hk[!0fbtFYHk/#D4<tAWcWA1je79' );

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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
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
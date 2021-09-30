<?php
# WP SETUP
define('WP_CACHE_KEY_SALT', 'wgerdur.42.fr');
#define('WP_CACHE', true);
define('DB_NAME', 'wp');
define('DB_USER', 'wgerdur');
define('DB_PASSWORD', 'qwer1234');
define('DB_HOST', 'mariadb');
define('DB_CHARSET', 'utf8');



/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '' );
define('AUTH_KEY',         'BgP[Jws;E9PIehD<:[7+VW(rOKP9<=bA5=}Y}rv`O <uf!;-x#pp_A.+DPZtfbxo');
define('SECURE_AUTH_KEY',  'cxIC,%.FqH@;GPJA-<y}(1#YdmEA6#a+z~Fj3ywAw9566+m1GlAN$---HS0<cly#');
define('LOGGED_IN_KEY',    ')ClMC2RrIGR>yw|y&ni/V]jiSi+(9Y~Q:0 )9Ny8{i+>lg}rA/T+T~ |JL&XvMlx');
define('NONCE_KEY',        ')l|L<h7C.1R1#HxCK7$J9r+: [U|tZ!&B!7>&BJcR(A2iebn?;LCba!yOZG_1Xc!');
define('AUTH_SALT',        'IkJ,S{mp1Q0<@+k>6GJKA$$l23Bvt|5L`;1e}l<2!x&U7X|!_R6ab-|-4$3vp5%I');
define('SECURE_AUTH_SALT', 'fLZ-vP+-0sLrHX*+):bh20c>+oMDe5`2#o,KZ& 5-rti`ai]O+ew,tJ4b-D~|xOb');
define('LOGGED_IN_SALT',   'Fb p&g6dz[wcOFL^|e]qNR=:FyQF7ZcP6pwGALAfCWoS~TrT+0.(G$:|;/?W}FvE');
define('NONCE_SALT',       '@(~->:-sU/~`y|08].XtwWT;Z2L]_L7pew;G9m{G+HHG01,TD|^;|{ynR?Vq~X7H');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';
define('WPLANG', 'ru_RU');

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
define( 'WP_DEBUG', true );
#define( 'WP_DEBUG_LOG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
#if ( !defined('ABSPATH') )
	#define('ABSPATH', '/var/www/html/wordpress');
if ( !defined('ABSPATH') )
	define('ABSPATH', '/var/www/html/wordpress');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

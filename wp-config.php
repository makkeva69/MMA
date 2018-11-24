<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'wordpress');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '6d7/)s!1;-74 =m36,8T>K.~;bv$!i)<`s^Y-pf6ITV3q-sAEBw.O!wbfOSJt]]g');
define('SECURE_AUTH_KEY',  'n]cSkKXYUu@t$2BJTf#]mPi}:uD|uyZW9Y2G4=+RQl~Usg3atElmP&zF}Z2xV!T%');
define('LOGGED_IN_KEY',    'heP`-)rs,=Se1K[O3JIQ1i.8Vh2$[qb(oP2)pT57_F3KD*+^>ge:4>SDTn< _uk-');
define('NONCE_KEY',        '4M]FE[m6PBq`lv$y{:WSVpz!H){^Ut.yW{QNEUP,{+L])&M6HQD=`v6<ff- o^w`');
define('AUTH_SALT',        'wZ:|&#5fS-FSvR(K|q&!duA69&W_KX:WY Ky|-1CVPFvJc@Y,K%^Nt<)e?>e`zsJ');
define('SECURE_AUTH_SALT', 'Ra|>[g1ZMt~8{!5o{yi7Wd=Rsu9|.pAQGdv]2E+v)59~Wpe/%H}2%r|Nwd~8lr|M');
define('LOGGED_IN_SALT',   '#*_3xt!DN4fp9%;utM+:#jQC7t;,@NRm1>_e:niU,HD0#>de|DtYIx-kY|aaYsaU');
define('NONCE_SALT',       '^ 2_>4rpkiyu@od$L}7r/6JIDkTEx3M@~b7<D!!?,}&db,;sVuSoP^52=W{AlB)b');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');

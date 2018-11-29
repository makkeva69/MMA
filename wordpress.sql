-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 24 2018 г., 09:09
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wordpress`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-22 14:10:39', '2018-11-22 11:10:39', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_huge_it_reslider_sliders`
--

CREATE TABLE `wp_huge_it_reslider_sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` datetime NOT NULL,
  `slide` longtext COLLATE utf8mb4_unicode_520_ci,
  `style` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `custom` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_huge_it_reslider_sliders`
--

INSERT INTO `wp_huge_it_reslider_sliders` (`id`, `title`, `type`, `params`, `time`, `slide`, `style`, `custom`) VALUES
(1, 'First Slider', 'simple', '{\"autoplay\":1,\"pauseonhover\":1,\"effect\":{\"type\":3,\"duration\":1500,\"interval\":1000},\"thumbnails\":{\"show\":0,\"positioning\":0},\"custom\":{\"type\":\"text\"},\"title\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":213,\"height\":61,\"left\":\"571.375px\",\"top\":\"14.7031px\",\"color\":\"FFFFFF\",\"opacity\":0,\"font\":{\"size\":18},\"border\":{\"color\":\"FFFFFF\",\"width\":1,\"radius\":2},\"background\":{\"color\":\"FFFFFF\",\"hover\":\"30FF4F\"}}},\"description\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":768,\"height\":116,\"left\":\"16.375px\",\"top\":\"345.703px\",\"color\":\"FFFFFF\",\"opacity\":80,\"font\":{\"size\":14},\"border\":{\"color\":\"3478FF\",\"width\":0,\"radius\":2},\"background\":{\"color\":\"000000\",\"hover\":\"000000\"}}},\"arrows\":{\"show\":2,\"type\":1,\"style\":{\"background\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"}}}},\"bullets\":{\"show\":0,\"type\":\"0\",\"position\":0,\"autocenter\":\"0\",\"rows\":1,\"s_x\":10,\"s_y\":10,\"orientation\":1,\"style\":{\"background\":{\"width\":\"60\",\"height\":\"60\",\"color\":{\"hover\":\"646464\",\"active\":\"30FF4F\",\"link\":\"CCCCCC\"}},\"position\":{\"top\":\"16px\",\"left\":\"10px\"}}}}', '2016-05-02 10:58:58', 'NULL', '{\"background\":\"blue;\",\"border\":\"1px solid red;\",\"color\":\"yellow\",\"width\":\"800\",\"height\":\"480\",\"marginLeft\":\"0\",\"marginRight\":\"0\",\"marginTop\":\"0\",\"marginBottom\":\"0\"}', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_huge_it_reslider_slides`
--

CREATE TABLE `wp_huge_it_reslider_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sliderid` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `slide` longtext COLLATE utf8mb4_unicode_520_ci,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_link_new_tab` tinyint(1) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `custom` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_huge_it_reslider_slides`
--

INSERT INTO `wp_huge_it_reslider_slides` (`id`, `title`, `sliderid`, `published`, `slide`, `description`, `image_link`, `image_link_new_tab`, `thumbnail`, `custom`, `ordering`, `type`) VALUES
(1, 'CABS', 1, 1, NULL, 'Lorem ipsum dolor sit amet, ne verear elaboraret mel. Ea sed quaestio pericula. Vel ludus pericula ex, euripidis conceptam abhorreant an sed. Vis ad apeirian antiopam molestiae..', 'http://huge-it.com', 1, 'http://wordpress/wp-content/plugins/slider/Front_images/Default/1.jpg', '{}', 5, ''),
(2, 'MESSY EVENING', 1, 1, NULL, 'Lorem ipsum dolor sit amet, ne verear elaboraret mel. Ea sed quaestio pericula. Vel ludus pericula ex, euripidis conceptam abhorreant an sed. Vis ad apeirian antiopam molestiae.. ', 'http://huge-it.com', 1, 'http://wordpress/wp-content/plugins/slider/Front_images/Default/2.jpg', '{}', 4, ''),
(3, 'UMBRELLA', 1, 1, NULL, 'Lorem ipsum dolor sit amet, ne verear elaboraret mel. Ea sed quaestio pericula. Vel ludus pericula ex, euripidis conceptam abhorreant an sed. Vis ad apeirian antiopam molestiae.. ', 'http://huge-it.com', 1, 'http://wordpress/wp-content/plugins/slider/Front_images/Default/3.jpg', '{}', 3, ''),
(4, 'OLD TRAM', 1, 1, NULL, 'Lorem ipsum dolor sit amet, ne verear elaboraret mel. Ea sed quaestio pericula. Vel ludus pericula ex, euripidis conceptam abhorreant an sed. Vis ad apeirian antiopam molestiae.. ', 'http://huge-it.com', 1, 'http://wordpress/wp-content/plugins/slider/Front_images/Default/4.jpg', '{}', 2, ''),
(5, 'THE MIXTURE ', 1, 1, NULL, 'Lorem ipsum dolor sit amet, ne verear elaboraret mel. Ea sed quaestio pericula. Vel ludus pericula ex, euripidis conceptam abhorreant an sed. Vis ad apeirian antiopam molestiae..', 'http://huge-it.com', 1, 'http://wordpress/wp-content/plugins/slider/Front_images/Default/5.jpg', '{}', 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wordpress', 'yes'),
(2, 'home', 'http://wordpress', 'yes'),
(3, 'blogname', 'ООО «СтройКомфорт»', 'yes'),
(4, 'blogdescription', 'предоставляет широкий спектр услуг:', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'makeeva.maria45@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:250:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:23:\"wpshop_user_delivery/?$\";s:40:\"index.php?post_type=wpshop_user_delivery\";s:53:\"wpshop_user_delivery/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?post_type=wpshop_user_delivery&feed=$matches[1]\";s:48:\"wpshop_user_delivery/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?post_type=wpshop_user_delivery&feed=$matches[1]\";s:40:\"wpshop_user_delivery/page/([0-9]{1,})/?$\";s:58:\"index.php?post_type=wpshop_user_delivery&paged=$matches[1]\";s:21:\"wpshop_client_mail/?$\";s:38:\"index.php?post_type=wpshop_client_mail\";s:51:\"wpshop_client_mail/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?post_type=wpshop_client_mail&feed=$matches[1]\";s:46:\"wpshop_client_mail/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?post_type=wpshop_client_mail&feed=$matches[1]\";s:38:\"wpshop_client_mail/page/([0-9]{1,})/?$\";s:56:\"index.php?post_type=wpshop_client_mail&paged=$matches[1]\";s:15:\"wpshop_promo/?$\";s:32:\"index.php?post_type=wpshop_promo\";s:45:\"wpshop_promo/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=wpshop_promo&feed=$matches[1]\";s:40:\"wpshop_promo/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=wpshop_promo&feed=$matches[1]\";s:32:\"wpshop_promo/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=wpshop_promo&paged=$matches[1]\";s:23:\"wpshop/wallet_TlpKXI/?$\";s:35:\"index.php?wpshop_wallet_TlpKXI=true\";s:23:\"wpshop/yandex_TlpKXI/?$\";s:34:\"index.php?wpshop_kassa_TlpKXI=true\";s:23:\"wpshop/sofort_TlpKXI/?$\";s:35:\"index.php?wpshop_sofort_TlpKXI=true\";s:27:\"wpshop/interkassa_result/?$\";s:32:\"index.php?wpshop_interkassa=true\";s:24:\"wpshop/tinkoff_xMcxNv/?$\";s:29:\"index.php?wpshop_tinkoff=true\";s:26:\"wpshop/primearea_result/?$\";s:31:\"index.php?wpshop_primearea=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"genre/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:41:\"genre/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:22:\"genre/([^/]+)/embed/?$\";s:38:\"index.php?genre=$matches[1]&embed=true\";s:34:\"genre/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?genre=$matches[1]&paged=$matches[2]\";s:16:\"genre/([^/]+)/?$\";s:27:\"index.php?genre=$matches[1]\";s:52:\"payment_del/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?payment_del=$matches[1]&feed=$matches[2]\";s:47:\"payment_del/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?payment_del=$matches[1]&feed=$matches[2]\";s:28:\"payment_del/([^/]+)/embed/?$\";s:44:\"index.php?payment_del=$matches[1]&embed=true\";s:40:\"payment_del/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?payment_del=$matches[1]&paged=$matches[2]\";s:22:\"payment_del/([^/]+)/?$\";s:33:\"index.php?payment_del=$matches[1]\";s:48:\"wpshop_user_delivery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"wpshop_user_delivery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"wpshop_user_delivery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"wpshop_user_delivery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"wpshop_user_delivery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"wpshop_user_delivery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"wpshop_user_delivery/([^/]+)/embed/?$\";s:53:\"index.php?wpshop_user_delivery=$matches[1]&embed=true\";s:41:\"wpshop_user_delivery/([^/]+)/trackback/?$\";s:47:\"index.php?wpshop_user_delivery=$matches[1]&tb=1\";s:61:\"wpshop_user_delivery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?wpshop_user_delivery=$matches[1]&feed=$matches[2]\";s:56:\"wpshop_user_delivery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?wpshop_user_delivery=$matches[1]&feed=$matches[2]\";s:49:\"wpshop_user_delivery/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?wpshop_user_delivery=$matches[1]&paged=$matches[2]\";s:56:\"wpshop_user_delivery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:60:\"index.php?wpshop_user_delivery=$matches[1]&cpage=$matches[2]\";s:46:\"wpshop_user_delivery/([^/]+)/wc-api(/(.*))?/?$\";s:61:\"index.php?wpshop_user_delivery=$matches[1]&wc-api=$matches[3]\";s:52:\"wpshop_user_delivery/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:63:\"wpshop_user_delivery/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:45:\"wpshop_user_delivery/([^/]+)(?:/([0-9]+))?/?$\";s:59:\"index.php?wpshop_user_delivery=$matches[1]&page=$matches[2]\";s:37:\"wpshop_user_delivery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"wpshop_user_delivery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"wpshop_user_delivery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"wpshop_user_delivery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"wpshop_user_delivery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"wpshop_user_delivery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:50:\"mail_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?mail_type=$matches[1]&feed=$matches[2]\";s:45:\"mail_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?mail_type=$matches[1]&feed=$matches[2]\";s:26:\"mail_type/([^/]+)/embed/?$\";s:42:\"index.php?mail_type=$matches[1]&embed=true\";s:38:\"mail_type/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?mail_type=$matches[1]&paged=$matches[2]\";s:20:\"mail_type/([^/]+)/?$\";s:31:\"index.php?mail_type=$matches[1]\";s:46:\"wpshop_client_mail/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"wpshop_client_mail/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"wpshop_client_mail/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"wpshop_client_mail/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"wpshop_client_mail/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"wpshop_client_mail/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"wpshop_client_mail/([^/]+)/embed/?$\";s:51:\"index.php?wpshop_client_mail=$matches[1]&embed=true\";s:39:\"wpshop_client_mail/([^/]+)/trackback/?$\";s:45:\"index.php?wpshop_client_mail=$matches[1]&tb=1\";s:59:\"wpshop_client_mail/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?wpshop_client_mail=$matches[1]&feed=$matches[2]\";s:54:\"wpshop_client_mail/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?wpshop_client_mail=$matches[1]&feed=$matches[2]\";s:47:\"wpshop_client_mail/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?wpshop_client_mail=$matches[1]&paged=$matches[2]\";s:54:\"wpshop_client_mail/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?wpshop_client_mail=$matches[1]&cpage=$matches[2]\";s:44:\"wpshop_client_mail/([^/]+)/wc-api(/(.*))?/?$\";s:59:\"index.php?wpshop_client_mail=$matches[1]&wc-api=$matches[3]\";s:50:\"wpshop_client_mail/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"wpshop_client_mail/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:43:\"wpshop_client_mail/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?wpshop_client_mail=$matches[1]&page=$matches[2]\";s:35:\"wpshop_client_mail/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"wpshop_client_mail/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"wpshop_client_mail/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"wpshop_client_mail/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"wpshop_client_mail/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"wpshop_client_mail/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"wpshop_promo/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"wpshop_promo/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"wpshop_promo/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"wpshop_promo/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"wpshop_promo/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"wpshop_promo/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"wpshop_promo/([^/]+)/embed/?$\";s:45:\"index.php?wpshop_promo=$matches[1]&embed=true\";s:33:\"wpshop_promo/([^/]+)/trackback/?$\";s:39:\"index.php?wpshop_promo=$matches[1]&tb=1\";s:53:\"wpshop_promo/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?wpshop_promo=$matches[1]&feed=$matches[2]\";s:48:\"wpshop_promo/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?wpshop_promo=$matches[1]&feed=$matches[2]\";s:41:\"wpshop_promo/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?wpshop_promo=$matches[1]&paged=$matches[2]\";s:48:\"wpshop_promo/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?wpshop_promo=$matches[1]&cpage=$matches[2]\";s:38:\"wpshop_promo/([^/]+)/wc-api(/(.*))?/?$\";s:53:\"index.php?wpshop_promo=$matches[1]&wc-api=$matches[3]\";s:44:\"wpshop_promo/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"wpshop_promo/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"wpshop_promo/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?wpshop_promo=$matches[1]&page=$matches[2]\";s:29:\"wpshop_promo/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"wpshop_promo/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"wpshop_promo/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"wpshop_promo/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"wpshop_promo/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"wpshop_promo/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:49:\"acurax-social-media-widget/acurax-social-icon.php\";i:1;s:19:\"jetpack/jetpack.php\";i:2;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:3;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:28:\"wp-shop-original/wp-shop.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:54:\"W:\\domains\\wordpress/wp-content/themes/hiero/style.css\";i:1;s:71:\"W:\\domains\\wordpress/wp-content/plugins/akismet/class.akismet-admin.php\";i:2;s:59:\"W:\\domains\\wordpress/wp-content/plugins/akismet/akismet.php\";i:3;s:57:\"W:\\domains\\wordpress/wp-content/plugins/akismet/index.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'hiero', 'yes'),
(41, 'stylesheet', 'hiero', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";s:25:\"sfsi_plus_Unistall_plugin\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"Customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:8:\"Merchant\";a:2:{s:4:\"name\";s:8:\"Merchant\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:8:\"Customer\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:13:{i:1543039841;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1543042425;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1543042670;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1543046613;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543046623;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543057413;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543057841;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543057961;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543068213;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543093200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543123595;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543881600;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542951158;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'Hiero', 'yes'),
(139, 'theme_mods_mesmerize', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:20:\"theme_default_preset\";i:3;s:31:\"show_front_page_hero_by_default\";b:1;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542885626;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:23:\"mesmerize_pages_sidebar\";a:0:{}s:17:\"first_box_widgets\";a:0:{}s:18:\"second_box_widgets\";a:0:{}s:17:\"third_box_widgets\";a:0:{}}}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(143, '_site_transient_timeout_browser_be019c7d795c2448cbf9a816dfb0e91d', '1543490353', 'no'),
(144, '_site_transient_browser_be019c7d795c2448cbf9a816dfb0e91d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(146, 'theme_mods_orfeo', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542951124;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(161, '_transient_timeout_plugin_slugs', '1543124253', 'no'),
(162, '_transient_plugin_slugs', 'a:7:{i:0;s:9:\"hello.php\";i:1;s:19:\"jetpack/jetpack.php\";i:2;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:3;s:49:\"acurax-social-media-widget/acurax-social-icon.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:6;s:28:\"wp-shop-original/wp-shop.php\";}', 'no'),
(163, 'recently_activated', 'a:6:{s:58:\"ultimate-social-media-plus/ultimate_social_media_icons.php\";i:1542959927;s:45:\"ckeditor-for-wordpress/ckeditor_wordpress.php\";i:1542959885;s:24:\"wordpress-seo/wp-seo.php\";i:1542959875;s:33:\"seo-image/seo-friendly-images.php\";i:1542959823;s:39:\"powr-multi-slider/powr-multi-slider.php\";i:1542959815;s:17:\"slider/slider.php\";i:1542959804;}', 'yes'),
(190, 'theme_mods_deck', 'a:15:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542955873;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-blog\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"sidebar-blog-left\";a:0:{}s:12:\"sidebar-page\";a:0:{}s:17:\"sidebar-page-left\";a:0:{}s:14:\"sidebar-footer\";a:0:{}}}s:11:\"custom_logo\";i:31;s:16:\"background_color\";s:6:\"5e5e5e\";s:20:\"dp_link_accent_color\";s:7:\"#ffffff\";s:14:\"dp_blog_layout\";s:8:\"blogwide\";s:16:\"background_image\";s:0:\"\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_position_y\";s:3:\"top\";s:17:\"background_preset\";s:3:\"fit\";s:15:\"background_size\";s:7:\"contain\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(191, 'widget_deck_video_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'widget_deck_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'theme_mods_flash', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542951121;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"flash_right_sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"flash_left_sidebar\";a:0:{}s:21:\"flash_footer_sidebar1\";a:0:{}s:21:\"flash_footer_sidebar2\";a:0:{}s:21:\"flash_footer_sidebar3\";a:0:{}s:21:\"flash_footer_sidebar4\";a:0:{}}}}', 'yes'),
(197, 'flash_admin_notice_welcome', '1', 'yes'),
(198, '_transient_flash_categories', '1', 'yes'),
(209, 'theme_mods_wallstreet', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542955998;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar_primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"footer-widget-area\";a:0:{}s:11:\"woocommerce\";a:0:{}}}}', 'yes'),
(211, 'theme_mods_hiero', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542963413;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;s:9:\"site_logo\";s:52:\"http://wordpress/wp-content/uploads/2018/11/logo.png\";s:12:\"site_favicon\";s:0:\"\";s:10:\"main_color\";s:7:\"#ff0000\";s:9:\"site_desc\";s:7:\"#0a0007\";s:11:\"entry_title\";s:7:\"#0a0002\";s:9:\"body_text\";s:7:\"#0a0a0a\";s:10:\"site_title\";s:7:\"#161616\";}', 'yes'),
(212, 'widget_athemes_preview_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(213, 'widget_athemes_social_icons', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(214, 'widget_athemes_media_embed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(215, 'widget_athemes_flickr_stream', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(216, 'widget_athemes_tabs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(235, 'new_admin_email', 'makeeva.maria45@gmail.com', 'yes'),
(241, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542956278;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(242, '_transient_twentyfifteen_categories', '1', 'yes'),
(252, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542952769;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(275, '_transient_twentysixteen_categories', '1', 'yes'),
(311, 'acx_widget_si_next_date', '1545548767', 'yes'),
(312, 'acx_widget_si_td', 'show', 'yes'),
(313, 'widget_acx-social-icons-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'ckeditor_wordpress', 'a:6:{s:10:\"appearance\";a:10:{s:4:\"skin\";s:5:\"moono\";s:7:\"uicolor\";s:7:\"default\";s:12:\"uicolor_user\";s:0:\"\";s:13:\"default_state\";s:1:\"t\";s:13:\"excerpt_state\";s:1:\"f\";s:12:\"post_toolbar\";s:13:\"WordpressFull\";s:18:\"post_editor_height\";i:300;s:14:\"comment_editor\";s:1:\"t\";s:15:\"comment_toolbar\";s:14:\"WordpressBasic\";s:21:\"comment_editor_height\";i:160;}s:6:\"upload\";a:6:{s:7:\"browser\";s:8:\"disabled\";s:4:\"type\";s:6:\"native\";s:14:\"user_file_path\";s:19:\"wp-content/uploads/\";s:17:\"files_allowed_ext\";s:202:\"7z,aiff,asf,avi,bmp,csv,doc,fla,flv,gif,gz,gzip,jpeg,jpg,mid,mov,mp3,mp4,mpc,mpeg,mpg,ods,odt,pdf,png,ppt,pxd,qt,ram,rar,rm,rmi,rmvb,rtf,sdc,sitd,swf,sxc,sxw,tar,tgz,tif,tiff,txt,vsd,wav,wma,wmv,xls,zip\";s:18:\"images_allowed_ext\";s:20:\"bmp,gif,jpeg,jpg,png\";s:17:\"flash_allowed_ext\";s:7:\"swf,flv\";}s:8:\"ckfinder\";a:11:{s:13:\"file_max_size\";s:2:\"8M\";s:12:\"images_width\";s:4:\"1200\";s:13:\"images_height\";s:4:\"1600\";s:14:\"images_quality\";s:2:\"80\";s:16:\"thumbnails_width\";s:3:\"100\";s:17:\"thumbnails_height\";s:3:\"100\";s:18:\"thumbnails_quality\";s:2:\"80\";s:18:\"thumbnails_enabled\";s:1:\"t\";s:24:\"thumbnails_direct_access\";s:1:\"f\";s:12:\"license_name\";s:0:\"\";s:11:\"license_key\";s:0:\"\";}s:3:\"css\";a:4:{s:4:\"mode\";s:7:\"default\";s:4:\"path\";s:0:\"\";s:6:\"styles\";s:7:\"default\";s:10:\"style_path\";s:0:\"\";}s:8:\"advanced\";a:10:{s:11:\"load_method\";s:11:\"ckeditor.js\";s:12:\"load_timeout\";i:0;s:20:\"native_spell_checker\";s:1:\"t\";s:17:\"scayt_autoStartup\";s:1:\"f\";s:8:\"entities\";s:1:\"t\";s:8:\"p_indent\";s:1:\"t\";s:19:\"p_break_before_open\";s:1:\"t\";s:18:\"p_break_after_open\";s:1:\"t\";s:20:\"p_break_before_close\";s:1:\"t\";s:19:\"p_break_after_close\";s:1:\"t\";}s:7:\"plugins\";a:5:{s:8:\"autogrow\";s:1:\"f\";s:11:\"tableresize\";s:1:\"f\";s:9:\"wpgallery\";s:1:\"t\";s:5:\"scayt\";s:1:\"t\";s:3:\"wsc\";s:1:\"t\";}}', 'yes'),
(322, 'widget_powr_multi_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(325, 'wpseo', 'a:21:{s:14:\"blocking_files\";a:0:{}s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"3.9\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";b:0;s:16:\"environment_type\";s:0:\"\";s:20:\"enable_setting_pages\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1542957004;}', 'yes'),
(326, 'wpseo_permalinks', 'a:9:{s:15:\"cleanpermalinks\";b:0;s:24:\"cleanpermalink-extravars\";s:0:\"\";s:29:\"cleanpermalink-googlecampaign\";b:0;s:31:\"cleanpermalink-googlesitesearch\";b:0;s:15:\"cleanreplytocom\";b:0;s:10:\"cleanslugs\";b:1;s:18:\"redirectattachment\";b:0;s:17:\"stripcategorybase\";b:0;s:13:\"trailingslash\";b:0;}', 'yes'),
(327, 'wpseo_titles', 'a:56:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:23:\"content-analysis-active\";b:1;s:23:\"keyword-analysis-active\";b:1;s:9:\"separator\";s:7:\"sc-dash\";s:5:\"noodp\";b:0;s:15:\"usemetakeywords\";b:0;s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:47:\"%%name%%, автор на %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:64:\"Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:57:\"Страница не найдена %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:18:\"metakey-home-wpseo\";s:0:\"\";s:20:\"metakey-author-wpseo\";s:0:\"\";s:22:\"noindex-subpages-wpseo\";b:0;s:20:\"noindex-author-wpseo\";b:0;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"metakey-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:16:\"hideeditbox-post\";b:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"metakey-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:16:\"hideeditbox-page\";b:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"metakey-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:22:\"hideeditbox-attachment\";b:0;s:18:\"title-tax-category\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:20:\"metakey-tax-category\";s:0:\"\";s:24:\"hideeditbox-tax-category\";b:0;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:20:\"metakey-tax-post_tag\";s:0:\"\";s:24:\"hideeditbox-tax-post_tag\";b:0;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:23:\"metakey-tax-post_format\";s:0:\"\";s:27:\"hideeditbox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(328, 'wpseo_social', 'a:20:{s:9:\"fb_admins\";a:0:{}s:12:\"fbconnectkey\";s:32:\"21bcdd51600f4590932d1340815b1838\";s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:7:\"summary\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(329, 'wpseo_rss', 'a:2:{s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:73:\"Запись %%POSTLINK%% впервые появилась %%BLOGLINK%%.\";}', 'yes'),
(330, 'wpseo_internallinks', 'a:10:{s:20:\"breadcrumbs-404crumb\";s:54:\"Ошибка 404: страница не найдена\";s:23:\"breadcrumbs-blog-remove\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:19:\"Архивы для\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:31:\"Главная страница\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Вы искали\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:23:\"post_types-post-maintax\";i:0;}', 'yes'),
(331, 'wpseo_xml', 'a:16:{s:22:\"disable_author_sitemap\";b:1;s:22:\"disable_author_noposts\";b:1;s:16:\"enablexmlsitemap\";b:1;s:16:\"entries-per-page\";i:1000;s:14:\"excluded-posts\";s:0:\"\";s:38:\"user_role-administrator-not_in_sitemap\";b:0;s:31:\"user_role-editor-not_in_sitemap\";b:0;s:31:\"user_role-author-not_in_sitemap\";b:0;s:36:\"user_role-contributor-not_in_sitemap\";b:0;s:35:\"user_role-subscriber-not_in_sitemap\";b:0;s:30:\"post_types-post-not_in_sitemap\";b:0;s:30:\"post_types-page-not_in_sitemap\";b:0;s:36:\"post_types-attachment-not_in_sitemap\";b:1;s:34:\"taxonomies-category-not_in_sitemap\";b:0;s:34:\"taxonomies-post_tag-not_in_sitemap\";b:0;s:37:\"taxonomies-post_format-not_in_sitemap\";b:0;}', 'yes'),
(332, 'wpseo_flush_rewrite', '1', 'yes'),
(333, 'powr_token', 'a2Z9RobZyR1542957026', 'yes'),
(336, 'wpseo_sitemap_1_cache_validator', '34DrB', 'no'),
(337, 'wpseo_sitemap_attachment_cache_validator', '2Zoni', 'no'),
(339, 'wpseo_sitemap_page_cache_validator', '34DrD', 'no'),
(340, 'wpseo_sitemap_revision_cache_validator', '34DrE', 'no'),
(365, 'cforms_settings', 'a:21:{s:5:\"form1\";a:22:{s:13:\"cforms1_fname\";s:12:\"wpshop-vizit\";s:12:\"cforms1_ajax\";i:0;s:12:\"cforms1_hide\";i:1;s:16:\"cforms1_redirect\";i:0;s:16:\"cforms1_emailoff\";i:1;s:15:\"cforms1_working\";s:47:\"Одну минуту, пожалуйста ...\";s:15:\"cforms1_success\";s:306:\"<h3>Ваш заказ принят!</h3>Наш менеджер свяжется с Вами по контактному телефону для уточнения деталей по Вашему заказу.<h4>Благодарим что воспользовались нашим сервисом!</h4>\";s:16:\"cforms1_required\";s:1:\"*\";s:21:\"cforms1_emailrequired\";s:1:\"*\";s:15:\"cforms1_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:13:\"cforms1_email\";s:0:\"\";s:13:\"cforms1_popup\";s:2:\"yy\";s:20:\"cforms1_count_fields\";i:8;s:21:\"cforms1_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms1_count_field_2\";s:86:\"Тип заказа: <b>Визит в наш офис</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms1_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms1_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:21:\"cforms1_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:21:\"cforms1_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms1_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:21:\"cforms1_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:19:\"cforms1_submit_text\";s:12:\"Готово\";}s:6:\"global\";a:1:{s:16:\"cforms_formcount\";i:20;}s:5:\"form2\";a:22:{s:13:\"cforms2_fname\";s:11:\"wpshop-cash\";s:12:\"cforms2_ajax\";i:0;s:12:\"cforms2_hide\";i:1;s:16:\"cforms2_redirect\";i:0;s:16:\"cforms2_emailoff\";i:1;s:15:\"cforms2_working\";s:47:\"Одну минуту, пожалуйста ...\";s:15:\"cforms2_success\";s:306:\"<h3>Ваш заказ принят!</h3>Наш менеджер свяжется с Вами по контактному телефону для уточнения деталей по Вашему заказу.<h4>Благодарим что воспользовались нашим сервисом!</h4>\";s:16:\"cforms2_required\";s:1:\"*\";s:21:\"cforms2_emailrequired\";s:1:\"*\";s:15:\"cforms2_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:13:\"cforms2_email\";s:0:\"\";s:13:\"cforms2_popup\";s:2:\"yy\";s:20:\"cforms2_count_fields\";i:8;s:21:\"cforms2_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms2_count_field_2\";s:90:\"Тип заказа: <b>Наличными курьеру</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms2_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms2_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:21:\"cforms2_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:21:\"cforms2_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms2_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:21:\"cforms2_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:19:\"cforms2_submit_text\";s:12:\"Готово\";}s:5:\"form3\";a:22:{s:13:\"cforms3_fname\";s:11:\"wpshop-post\";s:12:\"cforms3_ajax\";i:0;s:12:\"cforms3_hide\";i:1;s:16:\"cforms3_redirect\";i:0;s:16:\"cforms3_emailoff\";i:1;s:15:\"cforms3_working\";s:47:\"Одну минуту, пожалуйста ...\";s:15:\"cforms3_success\";s:306:\"<h3>Ваш заказ принят!</h3>Наш менеджер свяжется с Вами по контактному телефону для уточнения деталей по Вашему заказу.<h4>Благодарим что воспользовались нашим сервисом!</h4>\";s:16:\"cforms3_required\";s:1:\"*\";s:21:\"cforms3_emailrequired\";s:1:\"*\";s:15:\"cforms3_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:13:\"cforms3_email\";s:0:\"\";s:13:\"cforms3_popup\";s:2:\"yy\";s:20:\"cforms3_count_fields\";i:8;s:21:\"cforms3_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms3_count_field_2\";s:67:\"Тип заказа: <b>Почта</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms3_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms3_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:21:\"cforms3_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:21:\"cforms3_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms3_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:21:\"cforms3_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:19:\"cforms3_submit_text\";s:12:\"Готово\";}s:5:\"form4\";a:22:{s:13:\"cforms4_fname\";s:9:\"wpshop-wm\";s:12:\"cforms4_ajax\";i:0;s:12:\"cforms4_hide\";i:1;s:16:\"cforms4_redirect\";i:0;s:16:\"cforms4_emailoff\";i:1;s:15:\"cforms4_working\";s:47:\"Одну минуту, пожалуйста ...\";s:15:\"cforms4_success\";s:466:\"<h3>Для оплаты Вашего заказа нажмите кнопку выше \'Оплатить WM\'.<br/>После совершения Вами оплаты заказа информация передается нам, и наш менеджер обязательно свяжется с Вами для уточнения деталей доставки.<br/>Благодарим, что воспользовались нашим сервисом!</h3>\";s:16:\"cforms4_required\";s:1:\"*\";s:21:\"cforms4_emailrequired\";s:1:\"*\";s:15:\"cforms4_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:13:\"cforms4_email\";s:0:\"\";s:13:\"cforms4_popup\";s:2:\"yy\";s:20:\"cforms4_count_fields\";i:8;s:21:\"cforms4_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms4_count_field_2\";s:150:\"Тип заказа: <b>Оформление заказа с оплатой через систему ‘Web-Money’</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms4_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms4_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:21:\"cforms4_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:21:\"cforms4_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms4_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:21:\"cforms4_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:19:\"cforms4_submit_text\";s:12:\"Готово\";}s:5:\"form5\";a:22:{s:13:\"cforms5_fname\";s:11:\"wpshop-bank\";s:12:\"cforms5_ajax\";i:0;s:12:\"cforms5_hide\";i:1;s:16:\"cforms5_redirect\";i:0;s:16:\"cforms5_emailoff\";i:1;s:15:\"cforms5_working\";s:47:\"Одну минуту, пожалуйста ...\";s:15:\"cforms5_success\";s:306:\"<h3>Ваш заказ принят!</h3>Наш менеджер свяжется с Вами по контактному телефону для уточнения деталей по Вашему заказу.<h4>Благодарим что воспользовались нашим сервисом!</h4>\";s:16:\"cforms5_required\";s:1:\"*\";s:21:\"cforms5_emailrequired\";s:1:\"*\";s:15:\"cforms5_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:13:\"cforms5_email\";s:0:\"\";s:13:\"cforms5_popup\";s:2:\"yy\";s:20:\"cforms5_count_fields\";i:8;s:21:\"cforms5_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms5_count_field_2\";s:92:\"Тип заказа: <b>Безналичный расчет</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms5_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms5_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:21:\"cforms5_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:21:\"cforms5_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms5_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:21:\"cforms5_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:19:\"cforms5_submit_text\";s:12:\"Готово\";}s:5:\"form6\";a:22:{s:13:\"cforms6_fname\";s:16:\"wpshop-robokassa\";s:12:\"cforms6_ajax\";i:0;s:12:\"cforms6_hide\";i:1;s:16:\"cforms6_redirect\";i:0;s:16:\"cforms6_emailoff\";i:1;s:15:\"cforms6_working\";s:47:\"Одну минуту, пожалуйста ...\";s:15:\"cforms6_success\";s:547:\"<h3>Выберите подходящий Вам способ оплаты из списка имеющихся вариантов и осуществите платеж. Данные по совершенному Вами платежу поступят нашим менеджерам, которые свяжутся с Вами по контактному телефону для уточнения деталей по Вашему заказу.<br> Благодарим, что воспользовались нашим сервисом!</h3>\";s:16:\"cforms6_required\";s:1:\"*\";s:21:\"cforms6_emailrequired\";s:1:\"*\";s:15:\"cforms6_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:13:\"cforms6_email\";s:0:\"\";s:13:\"cforms6_popup\";s:2:\"yy\";s:20:\"cforms6_count_fields\";i:8;s:21:\"cforms6_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms6_count_field_2\";s:153:\"Тип заказа: <b>Оформление заказа с оплатой через систему ‘RoboKassa.ru’</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms6_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms6_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:21:\"cforms6_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:21:\"cforms6_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms6_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:21:\"cforms6_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:19:\"cforms6_submit_text\";s:12:\"Готово\";}s:5:\"form7\";a:22:{s:13:\"cforms7_fname\";s:13:\"wpshop-paypal\";s:12:\"cforms7_ajax\";i:0;s:12:\"cforms7_hide\";i:1;s:16:\"cforms7_redirect\";i:0;s:16:\"cforms7_emailoff\";i:1;s:15:\"cforms7_working\";s:47:\"Одну минуту, пожалуйста ...\";s:15:\"cforms7_success\";s:470:\"<h3>Для оплаты Вашего заказа нажмите кнопку выше \'Оплатить PayPal\'.<br/>После совершения Вами оплаты заказа информация передается нам, и наш менеджер обязательно свяжется с Вами для уточнения деталей доставки.<br/>Благодарим, что воспользовались нашим сервисом!</h3>\";s:16:\"cforms7_required\";s:1:\"*\";s:21:\"cforms7_emailrequired\";s:1:\"*\";s:15:\"cforms7_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:13:\"cforms7_email\";s:0:\"\";s:13:\"cforms7_popup\";s:2:\"yy\";s:20:\"cforms7_count_fields\";i:8;s:21:\"cforms7_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms7_count_field_2\";s:148:\"Тип заказа: <b>Оформление заказа с оплатой через систему ‘Pay Pal’</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms7_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms7_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:21:\"cforms7_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:21:\"cforms7_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms7_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:21:\"cforms7_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:19:\"cforms7_submit_text\";s:12:\"Готово\";}s:5:\"form8\";a:22:{s:13:\"cforms8_fname\";s:16:\"wpshop-simplepay\";s:12:\"cforms8_ajax\";i:0;s:12:\"cforms8_hide\";i:1;s:16:\"cforms8_redirect\";i:0;s:16:\"cforms8_emailoff\";i:1;s:15:\"cforms8_working\";s:47:\"Одну минуту, пожалуйста ...\";s:15:\"cforms8_success\";s:476:\"<h3>Для оплаты Вашего заказа нажмите кнопку выше \'Оплатить в simplepay\'.<br/>После совершения Вами оплаты заказа информация передается нам, и наш менеджер обязательно свяжется с Вами для уточнения деталей доставки.<br/>Благодарим, что воспользовались нашим сервисом!</h3>\";s:16:\"cforms8_required\";s:1:\"*\";s:21:\"cforms8_emailrequired\";s:1:\"*\";s:15:\"cforms8_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:13:\"cforms8_email\";s:0:\"\";s:13:\"cforms8_popup\";s:2:\"yy\";s:20:\"cforms8_count_fields\";i:8;s:21:\"cforms8_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms8_count_field_2\";s:148:\"Тип заказа: <b>Оформление заказа с оплатой через систему ‘Pay Pal’</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms8_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms8_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:21:\"cforms8_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:21:\"cforms8_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms8_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:21:\"cforms8_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:19:\"cforms8_submit_text\";s:12:\"Готово\";}s:5:\"form9\";a:22:{s:13:\"cforms9_fname\";s:9:\"wpshop-ek\";s:12:\"cforms9_ajax\";i:0;s:12:\"cforms9_hide\";i:1;s:16:\"cforms9_redirect\";i:0;s:16:\"cforms9_emailoff\";i:1;s:15:\"cforms9_working\";s:47:\"Одну минуту, пожалуйста ...\";s:15:\"cforms9_success\";s:490:\"<h3>Для оплаты Вашего заказа нажмите кнопку выше \'Оплатить в Единой кассе\'.<br/>После совершения Вами оплаты заказа информация передается нам, и наш менеджер обязательно свяжется с Вами для уточнения деталей доставки.<br/>Благодарим, что воспользовались нашим сервисом!</h3>\";s:16:\"cforms9_required\";s:1:\"*\";s:21:\"cforms9_emailrequired\";s:1:\"*\";s:15:\"cforms9_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:13:\"cforms9_email\";s:0:\"\";s:13:\"cforms9_popup\";s:2:\"yy\";s:20:\"cforms9_count_fields\";i:8;s:21:\"cforms9_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms9_count_field_2\";s:164:\"Тип заказа: <b>Оформление заказа с оплатой через систему ‘Единая касса’</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms9_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms9_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:21:\"cforms9_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:21:\"cforms9_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:21:\"cforms9_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:21:\"cforms9_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:19:\"cforms9_submit_text\";s:12:\"Готово\";}s:6:\"form10\";a:22:{s:14:\"cforms10_fname\";s:19:\"wpshop-yandex_kassa\";s:13:\"cforms10_ajax\";i:0;s:13:\"cforms10_hide\";i:1;s:17:\"cforms10_redirect\";i:0;s:17:\"cforms10_emailoff\";i:1;s:16:\"cforms10_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms10_success\";s:481:\"<h3>Для оплаты Вашего заказа нажмите кнопку выше \'Оплатить Yandex касса\'.<br/>После совершения Вами оплаты заказа информация передается нам, и наш менеджер обязательно свяжется с Вами для уточнения деталей доставки.<br/>Благодарим, что воспользовались нашим сервисом!</h3>\";s:17:\"cforms10_required\";s:1:\"*\";s:22:\"cforms10_emailrequired\";s:1:\"*\";s:16:\"cforms10_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms10_email\";s:0:\"\";s:14:\"cforms10_popup\";s:2:\"yy\";s:21:\"cforms10_count_fields\";i:8;s:22:\"cforms10_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms10_count_field_2\";s:158:\"Тип заказа: <b>Оформление заказа с оплатой через систему ‘Yandex касса’</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms10_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms10_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms10_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms10_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms10_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms10_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms10_submit_text\";s:12:\"Готово\";}s:6:\"form11\";a:22:{s:14:\"cforms11_fname\";s:16:\"wpshop-chronopay\";s:13:\"cforms11_ajax\";i:0;s:13:\"cforms11_hide\";i:1;s:17:\"cforms11_redirect\";i:0;s:17:\"cforms11_emailoff\";i:1;s:16:\"cforms11_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms11_success\";s:473:\"<h3>Для оплаты Вашего заказа нажмите кнопку выше \'Оплатить Chronopay\'.<br/>После совершения Вами оплаты заказа информация передается нам, и наш менеджер обязательно свяжется с Вами для уточнения деталей доставки.<br/>Благодарим, что воспользовались нашим сервисом!</h3>\";s:17:\"cforms11_required\";s:1:\"*\";s:22:\"cforms11_emailrequired\";s:1:\"*\";s:16:\"cforms11_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms11_email\";s:0:\"\";s:14:\"cforms11_popup\";s:2:\"yy\";s:21:\"cforms11_count_fields\";i:8;s:22:\"cforms11_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms11_count_field_2\";s:150:\"Тип заказа: <b>Оформление заказа с оплатой через систему ‘Chronopay’</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms11_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms11_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms11_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms11_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms11_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms11_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms11_submit_text\";s:12:\"Готово\";}s:6:\"form12\";a:22:{s:14:\"cforms12_fname\";s:13:\"wpshop-sofort\";s:13:\"cforms12_ajax\";i:0;s:13:\"cforms12_hide\";i:1;s:17:\"cforms12_redirect\";i:0;s:17:\"cforms12_emailoff\";i:1;s:16:\"cforms12_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms12_success\";s:470:\"<h3>Для оплаты Вашего заказа нажмите кнопку выше \'Оплатить SOFORT\'.<br/>После совершения Вами оплаты заказа информация передается нам, и наш менеджер обязательно свяжется с Вами для уточнения деталей доставки.<br/>Благодарим, что воспользовались нашим сервисом!</h3>\";s:17:\"cforms12_required\";s:1:\"*\";s:22:\"cforms12_emailrequired\";s:1:\"*\";s:16:\"cforms12_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms12_email\";s:0:\"\";s:14:\"cforms12_popup\";s:2:\"yy\";s:21:\"cforms12_count_fields\";i:8;s:22:\"cforms12_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms12_count_field_2\";s:147:\"Тип заказа: <b>Оформление заказа с оплатой через систему ‘SOFORT’</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms12_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms12_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms12_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms12_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms12_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms12_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms12_submit_text\";s:12:\"Готово\";}s:6:\"form13\";a:22:{s:14:\"cforms13_fname\";s:9:\"wpshop-ym\";s:13:\"cforms13_ajax\";i:0;s:13:\"cforms13_hide\";i:1;s:17:\"cforms13_redirect\";i:0;s:17:\"cforms13_emailoff\";i:1;s:16:\"cforms13_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms13_success\";s:463:\"<h3>Для оплаты Вашего заказа нажмите кнопку выше \'Оплатить\'.<br/>После совершения Вами оплаты заказа информация передается нам, и наш менеджер обязательно свяжется с Вами для уточнения деталей доставки.<br/>Благодарим, что воспользовались нашим сервисом!</h3>\";s:17:\"cforms13_required\";s:1:\"*\";s:22:\"cforms13_emailrequired\";s:1:\"*\";s:16:\"cforms13_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms13_email\";s:0:\"\";s:14:\"cforms13_popup\";s:2:\"yy\";s:21:\"cforms13_count_fields\";i:8;s:22:\"cforms13_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms13_count_field_2\";s:136:\"Тип заказа: <b>Оформление заказа через систему Yandex деньги</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms13_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms13_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms13_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms13_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms13_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms13_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms13_submit_text\";s:12:\"Готово\";}s:6:\"form14\";a:22:{s:14:\"cforms14_fname\";s:11:\"wpshop-sber\";s:13:\"cforms14_ajax\";i:0;s:13:\"cforms14_hide\";i:1;s:17:\"cforms14_redirect\";i:0;s:17:\"cforms14_emailoff\";i:1;s:16:\"cforms14_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms14_success\";s:306:\"<h3>Ваш заказ принят!</h3>Наш менеджер свяжется с Вами по контактному телефону для уточнения деталей по Вашему заказу.<h4>Благодарим что воспользовались нашим сервисом!</h4>\";s:17:\"cforms14_required\";s:1:\"*\";s:22:\"cforms14_emailrequired\";s:1:\"*\";s:16:\"cforms14_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms14_email\";s:0:\"\";s:14:\"cforms14_popup\";s:2:\"yy\";s:21:\"cforms14_count_fields\";i:8;s:22:\"cforms14_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms14_count_field_2\";s:136:\"Тип заказа: <b>Оформление заказа с оплатой через Сбербанк</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms14_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms14_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms14_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms14_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms14_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms14_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms14_submit_text\";s:12:\"Готово\";}s:6:\"form15\";a:22:{s:14:\"cforms15_fname\";s:14:\"wpshop-icredit\";s:13:\"cforms15_ajax\";i:0;s:13:\"cforms15_hide\";i:1;s:17:\"cforms15_redirect\";i:0;s:17:\"cforms15_emailoff\";i:1;s:16:\"cforms15_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms15_success\";s:306:\"<h3>Ваш заказ принят!</h3>Наш менеджер свяжется с Вами по контактному телефону для уточнения деталей по Вашему заказу.<h4>Благодарим что воспользовались нашим сервисом!</h4>\";s:17:\"cforms15_required\";s:1:\"*\";s:22:\"cforms15_emailrequired\";s:1:\"*\";s:16:\"cforms15_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms15_email\";s:0:\"\";s:14:\"cforms15_popup\";s:2:\"yy\";s:21:\"cforms15_count_fields\";i:8;s:22:\"cforms15_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms15_count_field_2\";s:148:\"Тип заказа: <b>Оформление заказа с оплатой через систему ‘ICredit’</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms15_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms15_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms15_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms15_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms15_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms15_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms15_submit_text\";s:12:\"Готово\";}s:6:\"form16\";a:22:{s:14:\"cforms16_fname\";s:14:\"wpshop-tinkoff\";s:13:\"cforms16_ajax\";i:0;s:13:\"cforms16_hide\";i:1;s:17:\"cforms16_redirect\";i:0;s:17:\"cforms16_emailoff\";i:1;s:16:\"cforms16_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms16_success\";s:306:\"<h3>Ваш заказ принят!</h3>Наш менеджер свяжется с Вами по контактному телефону для уточнения деталей по Вашему заказу.<h4>Благодарим что воспользовались нашим сервисом!</h4>\";s:17:\"cforms16_required\";s:1:\"*\";s:22:\"cforms16_emailrequired\";s:1:\"*\";s:16:\"cforms16_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms16_email\";s:0:\"\";s:14:\"cforms16_popup\";s:2:\"yy\";s:21:\"cforms16_count_fields\";i:8;s:22:\"cforms16_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms16_count_field_2\";s:145:\"Тип заказа: <b>Оформление заказа с оплатой через Тинькофф Банк</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms16_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms16_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms16_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms16_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms16_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms16_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms16_submit_text\";s:12:\"Готово\";}s:6:\"form17\";a:22:{s:14:\"cforms17_fname\";s:9:\"wpshop-ap\";s:13:\"cforms17_ajax\";i:0;s:13:\"cforms17_hide\";i:1;s:17:\"cforms17_redirect\";i:0;s:17:\"cforms17_emailoff\";i:1;s:16:\"cforms17_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms17_success\";s:306:\"<h3>Ваш заказ принят!</h3>Наш менеджер свяжется с Вами по контактному телефону для уточнения деталей по Вашему заказу.<h4>Благодарим что воспользовались нашим сервисом!</h4>\";s:17:\"cforms17_required\";s:1:\"*\";s:22:\"cforms17_emailrequired\";s:1:\"*\";s:16:\"cforms17_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms17_email\";s:0:\"\";s:14:\"cforms17_popup\";s:2:\"yy\";s:21:\"cforms17_count_fields\";i:8;s:22:\"cforms17_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms17_count_field_2\";s:143:\"Тип заказа: <b>Оформление заказа с оплатой через систему - Artpay</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms17_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms17_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms17_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms17_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms17_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms17_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms17_submit_text\";s:12:\"Готово\";}s:6:\"form18\";a:22:{s:14:\"cforms18_fname\";s:13:\"wpshop-cripto\";s:13:\"cforms18_ajax\";i:0;s:13:\"cforms18_hide\";i:1;s:17:\"cforms18_redirect\";i:0;s:17:\"cforms18_emailoff\";i:1;s:16:\"cforms18_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms18_success\";s:306:\"<h3>Ваш заказ принят!</h3>Наш менеджер свяжется с Вами по контактному телефону для уточнения деталей по Вашему заказу.<h4>Благодарим что воспользовались нашим сервисом!</h4>\";s:17:\"cforms18_required\";s:1:\"*\";s:22:\"cforms18_emailrequired\";s:1:\"*\";s:16:\"cforms18_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms18_email\";s:0:\"\";s:14:\"cforms18_popup\";s:2:\"yy\";s:21:\"cforms18_count_fields\";i:8;s:22:\"cforms18_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms18_count_field_2\";s:181:\"Тип заказа: <b>Оформление заказа с использованием платежной системы `Криптонатор`</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms18_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms18_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms18_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms18_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms18_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms18_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms18_submit_text\";s:12:\"Готово\";}s:6:\"form19\";a:22:{s:14:\"cforms19_fname\";s:17:\"wpshop-interkassa\";s:13:\"cforms19_ajax\";i:0;s:13:\"cforms19_hide\";i:1;s:17:\"cforms19_redirect\";i:0;s:17:\"cforms19_emailoff\";i:1;s:16:\"cforms19_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms19_success\";s:463:\"<h3>Для оплаты Вашего заказа нажмите кнопку выше \'Оплатить\'.<br/>После совершения Вами оплаты заказа информация передается нам, и наш менеджер обязательно свяжется с Вами для уточнения деталей доставки.<br/>Благодарим, что воспользовались нашим сервисом!</h3>\";s:17:\"cforms19_required\";s:1:\"*\";s:22:\"cforms19_emailrequired\";s:1:\"*\";s:16:\"cforms19_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms19_email\";s:0:\"\";s:14:\"cforms19_popup\";s:2:\"yy\";s:21:\"cforms19_count_fields\";i:8;s:22:\"cforms19_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms19_count_field_2\";s:151:\"Тип заказа: <b>Оформление заказа с оплатой через систему ‘Interkassa’</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms19_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms19_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms19_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms19_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms19_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms19_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms19_submit_text\";s:12:\"Готово\";}s:6:\"form20\";a:22:{s:14:\"cforms20_fname\";s:16:\"wpshop-primearea\";s:13:\"cforms20_ajax\";i:0;s:13:\"cforms20_hide\";i:1;s:17:\"cforms20_redirect\";i:0;s:17:\"cforms20_emailoff\";i:1;s:16:\"cforms20_working\";s:47:\"Одну минуту, пожалуйста ...\";s:16:\"cforms20_success\";s:463:\"<h3>Для оплаты Вашего заказа нажмите кнопку выше \'Оплатить\'.<br/>После совершения Вами оплаты заказа информация передается нам, и наш менеджер обязательно свяжется с Вами для уточнения деталей доставки.<br/>Благодарим, что воспользовались нашим сервисом!</h3>\";s:17:\"cforms20_required\";s:1:\"*\";s:22:\"cforms20_emailrequired\";s:1:\"*\";s:16:\"cforms20_failure\";s:82:\"Пожалуйста, заполните все обязательные поля!\";s:14:\"cforms20_email\";s:0:\"\";s:14:\"cforms20_popup\";s:2:\"yy\";s:21:\"cforms20_count_fields\";i:8;s:22:\"cforms20_count_field_1\";s:34:\"Order$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms20_count_field_2\";s:146:\"Тип заказа: <b>Оформление заказа с оплатой через систему - Primearea</b>$#$hidden$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms20_count_field_3\";s:114:\"Для оформления заказа заполните эту форму:$#$fieldsetstart$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms20_count_field_4\";s:56:\"Ваше имя|||||Name$#$textfield$#$1$#$0$#$1$#$0$#$0\";s:22:\"cforms20_count_field_5\";s:77:\"Контактный телефон|||||Phone$#$textfield$#$1$#$0$#$0$#$0$#$0\";s:22:\"cforms20_count_field_6\";s:54:\"Адрес|||||Address$#$textfield$#$0$#$0$#$0$#$0$#$0\";s:22:\"cforms20_count_field_7\";s:38:\"E-mail$#$textfield$#$0$#$1$#$0$#$0$#$0\";s:22:\"cforms20_count_field_8\";s:69:\"Комментарий к заказу$#$textarea$#$0$#$0$#$0$#$0$#$0\";s:20:\"cforms20_submit_text\";s:12:\"Готово\";}}', 'yes'),
(366, 'wp-shop_cssfile', 'default.css', 'yes'),
(367, 'wp-shop_cform', 'wpshop-vizit', 'yes'),
(368, 'wp-shop_position', 'top', 'yes'),
(369, 'wp-shop_show-cost', '1', 'yes'),
(370, 'wp-shop_relink', '84bfb4', 'yes'),
(371, 'wp-shop-link_ie6', '', 'yes'),
(372, 'wpshop.partner_param', '', 'yes'),
(373, 'wpshop.email', 'makeeva.maria45@gmail.com', 'yes'),
(374, 'wpshop_yandex_delivery', 'a:4:{s:11:\"base_lenght\";s:1:\"1\";s:10:\"base_width\";s:1:\"1\";s:11:\"base_height\";s:1:\"1\";s:11:\"base_weight\";s:1:\"1\";}', 'yes'),
(375, 'wpshop.currency', 'руб.', 'yes'),
(376, 'wpshop.payments.activate', '0', 'yes'),
(377, 'wpshop.mail_activate', '0', 'yes'),
(378, 'wpshop.show_panel', '1', 'yes'),
(379, 'wpshop.price_trim', '1', 'yes'),
(380, 'wpshop.payment_confirm', '0', 'yes'),
(381, 'wpshop.sort_price', '0', 'yes'),
(382, 'wpshop_merchant', '', 'yes'),
(383, 'wpshop.hide_auth', 'none', 'yes'),
(384, 'wpshop_merchant_system', '', 'yes'),
(385, 'wpshop.payments.wm', 'a:3:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:10:\"successUrl\";s:40:\"http://wordpress/?wpshopcarts=wm_success\";s:9:\"failedUrl\";s:39:\"http://wordpress/?wpshopcarts=wm_failed\";}', 'yes'),
(386, 'wpshop.payments.tinkoff', 'a:3:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:10:\"successUrl\";s:45:\"http://wordpress/?wpshopcarts=tinkoff_success\";s:9:\"failedUrl\";s:44:\"http://wordpress/?wpshopcarts=tinkoff_failed\";}', 'yes'),
(387, 'wpshop.payments.cripto', 'a:3:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:10:\"successUrl\";s:44:\"http://wordpress/?wpshopcarts=cripto_success\";s:9:\"failedUrl\";s:43:\"http://wordpress/?wpshopcarts=cripto_failed\";}', 'yes'),
(388, 'wpshop.payments.ym', 'a:2:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:10:\"successUrl\";s:40:\"http://wordpress/?wpshopcarts=ym_success\";}', 'yes'),
(389, 'wpshop.payments.yandex_kassa', 'a:6:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:3:\"tax\";s:1:\"1\";s:10:\"successUrl\";s:50:\"http://wordpress/?wpshopcarts=yandex_kassa_success\";s:9:\"failedUrl\";s:49:\"http://wordpress/?wpshopcarts=yandex_kassa_failed\";s:9:\"resultUrl\";s:37:\"http://wordpress/wpshop/yandex_TlpKXI\";s:9:\"passfrase\";s:6:\"TlpKXI\";}', 'yes'),
(390, 'wpshop.payments.cash', 'a:1:{s:8:\"delivery\";a:1:{i:0;s:7:\"courier\";}}', 'yes'),
(391, 'wpshop.payments.ek', 'a:6:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:10:\"successUrl\";s:40:\"http://wordpress/?wpshopcarts=ek_success\";s:9:\"failedUrl\";s:39:\"http://wordpress/?wpshopcarts=ek_failed\";s:9:\"resultUrl\";s:37:\"http://wordpress/wpshop/wallet_TlpKXI\";s:9:\"passfrase\";s:6:\"TlpKXI\";s:3:\"tax\";s:8:\"tax_ru_1\";}', 'yes'),
(392, 'wpshop.payments.bank', 'a:1:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}}', 'yes'),
(393, 'wpshop.payments.robokassa', 'a:4:{s:5:\"login\";s:4:\"demo\";s:5:\"pass1\";s:8:\"Morbid11\";s:5:\"pass2\";s:9:\"Visions22\";s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}}', 'yes'),
(394, 'wpshop.payments.primearea', 'a:3:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:10:\"successUrl\";s:47:\"http://wordpress/?wpshopcarts=primearea_success\";s:9:\"failedUrl\";s:46:\"http://wordpress/?wpshopcarts=primearea_failed\";}', 'yes'),
(395, 'wpshop.payments.paypal', 'a:2:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:7:\"success\";s:44:\"http://wordpress/?wpshopcarts=paypal_success\";}', 'yes'),
(396, 'wpshop.payments.sber', 'a:8:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:10:\"successUrl\";s:42:\"http://wordpress/?wpshopcarts=sber_success\";s:9:\"failedUrl\";s:41:\"http://wordpress/?wpshopcarts=sber_failed\";s:5:\"stage\";s:3:\"one\";s:13:\"currency_sber\";s:3:\"643\";s:4:\"test\";b:1;s:7:\"measure\";s:5:\"шт.\";s:3:\"tax\";s:1:\"0\";}', 'yes'),
(397, 'wpshop.payments.icredit', 'a:4:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:10:\"successUrl\";s:45:\"http://wordpress/?wpshopcarts=icredit_success\";s:8:\"currency\";s:1:\"1\";s:4:\"test\";b:1;}', 'yes'),
(398, 'wpshop.payments.interkassa', 'a:4:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:10:\"successUrl\";s:48:\"http://wordpress/?wpshopcarts=interkassa_success\";s:9:\"failedUrl\";s:47:\"http://wordpress/?wpshopcarts=interkassa_failed\";s:8:\"currency\";s:3:\"UAH\";}', 'yes'),
(399, 'wpshop.payments.sofort', 'a:5:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:10:\"successUrl\";s:44:\"http://wordpress/?wpshopcarts=sofort_success\";s:9:\"failedUrl\";s:43:\"http://wordpress/?wpshopcarts=sofort_failed\";s:9:\"resultUrl\";s:37:\"http://wordpress/wpshop/sofort_TlpKXI\";s:9:\"passfrase\";s:6:\"TlpKXI\";}', 'yes'),
(400, 'wpshop.payments.simplepay', 'a:3:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:7:\"success\";s:47:\"http://wordpress/?wpshopcarts=simplepay_success\";s:6:\"failed\";s:46:\"http://wordpress/?wpshopcarts=simplepay_failed\";}', 'yes'),
(401, 'wpshop.payments.chronopay', 'a:3:{s:8:\"delivery\";a:4:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";i:2;s:5:\"vizit\";i:3;s:7:\"courier\";}s:7:\"success\";s:47:\"http://wordpress/?wpshopcarts=chronopay_success\";s:6:\"failed\";s:46:\"http://wordpress/?wpshopcarts=chronopay_failed\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(402, 'wpshop.payments.post', 'a:1:{s:8:\"delivery\";a:2:{i:0;s:13:\"postByCountry\";i:1;s:11:\"postByWorld\";}}', 'yes'),
(403, 'wpshop.payments.vizit', 'a:2:{s:8:\"activate\";i:1;s:8:\"delivery\";a:1:{i:0;s:5:\"vizit\";}}', 'yes'),
(404, 'wpshop.delivery', 'a:1:{s:5:\"vizit\";a:1:{s:4:\"cost\";i:0;}}', 'yes'),
(405, 'wpshop.cart.discount', '0', 'yes'),
(406, 'wpshop.cart.minzakaz', '0.1', 'yes'),
(407, 'wpshop.cart.minzakaz_info', '<br/><br/><h2>Сумма Вашего заказа ниже минимальной. Пожалуйста закажите еще что-нибудь!</h2>', 'yes'),
(408, 'wpshop.loginza.widget_id', '', 'yes'),
(409, 'wpshop.loginza.secret_key', '', 'yes'),
(410, 'widget_wpb_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(430, 'genre_children', 'a:0:{}', 'yes'),
(450, 'payment_del_children', 'a:0:{}', 'yes'),
(472, 'mail_type_children', 'a:0:{}', 'yes'),
(473, 'wpseo_sitemap_genre_cache_validator', '2WBqt', 'no'),
(474, 'wpseo_sitemap_wpshopcarts_cache_validator', '2WBqu', 'no'),
(475, 'wpseo_sitemap_payment_del_cache_validator', '2WBqv', 'no'),
(476, 'wpseo_sitemap_mail_type_cache_validator', '2WBqw', 'no'),
(477, 'wpshop.cartpage', 'http://wordpress/?wpshopcarts=vizit', 'yes'),
(501, 'sfsi_plus_installDate', '2018-11-23 07:39:19', 'yes'),
(502, 'sfsi_plus_RatingDiv', 'no', 'yes'),
(505, 'sfsi_plus_instagram_sf_count', 's:103:\"a:3:{s:4:\"date\";i:1542931200;s:18:\"sfsi_plus_sf_count\";s:0:\"\";s:25:\"sfsi_plus_instagram_count\";s:0:\"\";}\";', 'yes'),
(506, 'widget_sfsi-plus-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(507, 'widget_sfsiplus_subscriber_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(509, 'sfsi_plus_show_notification', 'yes', 'yes'),
(510, 'sfsi_plus_show_notification_plugin', 'yes', 'yes'),
(513, 'adding_plustags', 'yes', 'yes'),
(526, 'wpseo_sitemap_post_cache_validator', '33Ldz', 'no'),
(527, 'wpseo_sitemap_category_cache_validator', '33LdC', 'no'),
(528, 'category_children', 'a:0:{}', 'yes'),
(546, '_transient_timeout_wpseo-dashboard-totals', '1543046151', 'no'),
(547, '_transient_wpseo-dashboard-totals', 'a:1:{i:1;a:1:{i:3;a:5:{s:8:\"seo_rank\";s:2:\"na\";s:5:\"title\";s:68:\"Записи без фокусного ключевого слова\";s:5:\"class\";s:15:\"wpseo-glance-na\";s:10:\"icon_class\";s:2:\"na\";s:5:\"count\";s:1:\"1\";}}}', 'no'),
(556, 'woocommerce_store_address', 'г.Тула ул.Пролетарская', 'yes'),
(557, 'woocommerce_store_address_2', 'г.Тула ул.Строителей', 'yes'),
(558, 'woocommerce_store_city', 'Тула', 'yes'),
(559, 'woocommerce_default_country', 'RU', 'yes'),
(560, 'woocommerce_store_postcode', '122333', 'yes'),
(561, 'woocommerce_allowed_countries', 'all', 'yes'),
(562, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(563, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(564, 'woocommerce_ship_to_countries', '', 'yes'),
(565, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(566, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(567, 'woocommerce_calc_taxes', 'no', 'yes'),
(568, 'woocommerce_enable_coupons', 'yes', 'yes'),
(569, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(570, 'woocommerce_currency', 'RUB', 'yes'),
(571, 'woocommerce_currency_pos', 'left', 'yes'),
(572, 'woocommerce_price_thousand_sep', ',', 'yes'),
(573, 'woocommerce_price_decimal_sep', '.', 'yes'),
(574, 'woocommerce_price_num_decimals', '2', 'yes'),
(575, 'woocommerce_shop_page_id', '122', 'yes'),
(576, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(577, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(578, 'woocommerce_weight_unit', 'kg', 'yes'),
(579, 'woocommerce_dimension_unit', 'cm', 'yes'),
(580, 'woocommerce_enable_reviews', 'yes', 'yes'),
(581, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(582, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(583, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(584, 'woocommerce_review_rating_required', 'yes', 'no'),
(585, 'woocommerce_manage_stock', 'yes', 'yes'),
(586, 'woocommerce_hold_stock_minutes', '60', 'no'),
(587, 'woocommerce_notify_low_stock', 'yes', 'no'),
(588, 'woocommerce_notify_no_stock', 'yes', 'no'),
(589, 'woocommerce_stock_email_recipient', 'makeeva.maria45@gmail.com', 'no'),
(590, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(591, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(592, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(593, 'woocommerce_stock_format', '', 'yes'),
(594, 'woocommerce_file_download_method', 'force', 'no'),
(595, 'woocommerce_downloads_require_login', 'no', 'no'),
(596, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(597, 'woocommerce_prices_include_tax', 'no', 'yes'),
(598, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(599, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(600, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(601, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(602, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(603, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(604, 'woocommerce_price_display_suffix', '', 'yes'),
(605, 'woocommerce_tax_total_display', 'itemized', 'no'),
(606, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(607, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(608, 'woocommerce_ship_to_destination', 'billing', 'no'),
(609, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(610, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(611, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(612, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(613, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(614, 'woocommerce_registration_generate_username', 'yes', 'no'),
(615, 'woocommerce_registration_generate_password', 'yes', 'no'),
(616, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(617, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(618, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(619, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(620, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(621, 'woocommerce_trash_pending_orders', '', 'no'),
(622, 'woocommerce_trash_failed_orders', '', 'no'),
(623, 'woocommerce_trash_cancelled_orders', '', 'no'),
(624, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(625, 'woocommerce_email_from_name', 'ООО «СтройКомфорт»', 'no'),
(626, 'woocommerce_email_from_address', 'makeeva.maria45@gmail.com', 'no'),
(627, 'woocommerce_email_header_image', '', 'no'),
(628, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(629, 'woocommerce_email_base_color', '#96588a', 'no'),
(630, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(631, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(632, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(633, 'woocommerce_cart_page_id', '123', 'yes'),
(634, 'woocommerce_checkout_page_id', '124', 'yes'),
(635, 'woocommerce_myaccount_page_id', '125', 'yes'),
(636, 'woocommerce_terms_page_id', '', 'no'),
(637, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(638, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(639, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(640, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(641, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(642, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(643, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(644, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(645, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(646, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(647, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(648, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(649, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(650, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(651, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(652, 'woocommerce_api_enabled', 'no', 'yes'),
(653, 'woocommerce_single_image_width', '600', 'yes'),
(654, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(655, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(656, 'woocommerce_demo_store', 'no', 'no'),
(657, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(658, 'current_theme_supports_woocommerce', 'no', 'yes'),
(659, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(660, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(661, 'product_cat_children', 'a:0:{}', 'yes'),
(662, 'default_product_cat', '77', 'yes'),
(665, 'woocommerce_version', '3.4.4', 'yes'),
(666, 'woocommerce_db_version', '3.4.4', 'yes'),
(667, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(668, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(669, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(670, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(671, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(672, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(673, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(674, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(675, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(676, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(677, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(678, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(679, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(680, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(683, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(685, '_transient_timeout_external_ip_address_127.0.0.1', '1543565019', 'no'),
(686, '_transient_external_ip_address_127.0.0.1', '194.54.66.71', 'no'),
(690, 'woocommerce_product_type', 'both', 'yes'),
(691, 'woocommerce_allow_tracking', 'yes', 'yes'),
(692, 'woocommerce_tracker_last_send', '1542963318', 'yes'),
(694, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:25:\"makeeva.maria45@gmail.com\";}', 'yes'),
(695, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(696, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(697, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(698, 'wc_ppec_version', '1.6.5', 'yes'),
(707, '_transient_shipping-transient-version', '1542963395', 'yes'),
(708, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:4:\"3000\";}', 'yes'),
(709, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:4:\"3000\";}', 'yes'),
(710, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(714, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542964436;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(715, 'mailchimp_woocommerce_version', '2.1.11', 'no'),
(716, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(718, 'mailchimp-woocommerce-store_id', '5bf7c0d8e1043', 'yes'),
(719, 'storefront_nux_fresh_site', '0', 'yes'),
(720, 'woocommerce_catalog_rows', '4', 'yes'),
(721, 'woocommerce_catalog_columns', '3', 'yes'),
(722, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(726, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(746, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(765, 'jetpack_activated', '1', 'yes'),
(768, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(769, '_transient_timeout_jetpack_file_data_6.7', '1545469071', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(770, '_transient_jetpack_file_data_6.7', 'a:60:{s:32:\"c22c48d7cfe9d38dff2864cfea64636a\";a:15:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:39:\"Check your spelling, style, and grammar\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"6\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:115:\"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"fb5c4814ddc3946a3f22cc838fcb2af3\";a:15:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:79:\"Brings your photos and images to life as full-size, easily navigable galleries.\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"055f7369f33609d946b90e0263ea9226\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5813eda53235a9a81a69b1f6a4a15db6\";a:15:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7ef4ca32a1c84fc10ef50c8293cae5df\";a:15:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c5331bfc2648dfeeebe486736d79a72c\";a:15:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:57:\"Insert a customizable contact form anywhere on your site.\";s:14:\"jumpstart_desc\";s:111:\"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:18:\"Writing, Jumpstart\";s:25:\"additional_search_queries\";s:44:\"contact, form, grunion, feedback, submission\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"707c77d2e8cb0c12d094e5423c8beda8\";a:15:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cd499b1678cfe3aabfc8ca0d3eb7e8b9\";a:15:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:53:\"Tweak your site’s CSS without modifying your theme.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d266d6546645f42cf52a66387699c50\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d436678d5e010ac6b0f157aa1021554\";a:15:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c9ff765b826940496a65c0f927a594a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"092b94702bb483a5472578283c2103d6\";a:15:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"6bd77e09440df2b63044cf8cb7963773\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ee1a10e2ef5733ab19eb1eb552d5ecb3\";a:15:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:131:\"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"284c08538b0bdc266315b2cf80b9c044\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0ce5c3ac630dea9f41215e48bb0f52f3\";a:15:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"87da2858d4f9cadb6a44fdcf32e8d2b5\";a:15:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"004962cb7cb9ec2b64769ac4df509217\";a:15:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:57:\"Use LaTeX markup for complex equations and other geekery.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7f408184bee8850d439c01322867e72c\";a:15:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:16:\"Lazy load images\";s:14:\"jumpstart_desc\";s:164:\"Lazy-loading images improve your site\'s speed and create a smoother viewing experience. Images will load as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:33:\"mobile, theme, performance, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ad914b747f382ae918ed3b37077d4a1\";a:15:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b347263e3470979442ebf0514e41e893\";a:15:{s:4:\"name\";s:6:\"Manage\";s:11:\"description\";s:54:\"Manage all of your sites from a centralized dashboard.\";s:14:\"jumpstart_desc\";s:151:\"Helps you remotely manage plugins, turn on automated updates, and more from <a href=\"https://wordpress.com/plugins/\" target=\"_blank\">wordpress.com</a>.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"3\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:35:\"Centralized Management, Recommended\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:26:\"manage, management, remote\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"589982245aa6f495b72ab7cf57a1a48e\";a:15:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3bec8e063d637bc285018241b783725\";a:15:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6ab1c3e749bcfba2dedbaebe6c9fc614\";a:15:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b7be7da643ec641511839ecc6afb6def\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d54f83ff429a8a37ace796de98459411\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0f8b373fa12c825162c0b0bc20b8bbdd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d7b0750cb34a4a72a44fa67790de639\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f07fde8db279ffb0116c727df72c6374\";a:15:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:37:\"monitor, uptime, downtime, monitoring\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"136a5445a49150db75472862f3d3aefb\";a:15:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"395d8ae651afabb54d1e98440674b384\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0b7b5e3ff80355a67c5485b0d00cd1a2\";a:15:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:36:\"Serve static assets from our servers\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:46:\"photon, image, cdn, performance, speed, assets\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4484ac68583fbbaab0ef698cdc986950\";a:15:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:29:\"Serve images from our servers\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:38:\"photon, image, cdn, performance, speed\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6f30193afa5b1360e3fa2676501b5e3a\";a:15:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"3e9f8bd3755d92e8e5d06966a957beb8\";a:15:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:41:\"Block suspicious-looking sign in activity\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:65:\"security, secure, protection, botnet, brute force, protect, login\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0cacc8ab2145ad11cb54d181a98aa550\";a:15:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:27:\"Automated social marketing.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:101:\"facebook, twitter, google+, googleplus, google, tumblr, linkedin, social, tweet, connections, sharing\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a528c2f803a92c5c2effa67cd33ab33a\";a:15:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"329b8efce059081d46936ece0c6736b3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5fdd42d482712fbdaf000b28ea7adce9\";a:15:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:64:\"Increase page views by showing related content to your visitors.\";s:14:\"jumpstart_desc\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:22:\"related, related posts\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c5096ef610018e98a8bcccfbea4471e\";a:15:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:41:\"Enhanced search, powered by Elasticsearch\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:6:\"search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"0d81dd7df3ad2f245e84fd4fb66bf829\";a:15:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"32aaa676b3b6c9f3ef22430e1e0bca24\";a:15:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:37:\"Allow visitors to share your content.\";s:14:\"jumpstart_desc\";s:116:\"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:141:\"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"948472b453cda59b38bb7c37af889af0\";a:15:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:50:\"Embed media from popular sites without any coding.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d00a6ca0a79fbe893275aaf6ed6ae42\";a:15:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:54:\"Create short and simple links for all posts and pages.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"372e711395f23c466e04d4fd07f73099\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ea687cec293289a2a3e5f0459e79768\";a:15:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2fe9dc2c7389d4f0825a0b23bc8b19d1\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e7cf8a7e0f151ccf7cbdc6d8f118f316\";a:15:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"34fb073ed896af853ed48bd5739240cb\";a:15:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8de0dfff24a17cf0fa0011dfc691a3f3\";a:15:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:126:\"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4744f348db095538d3edcacb0ed99c89\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d89db0d934b39f86065ff58e73594070\";a:15:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"01987a7ba5e19786f2992501add8181a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"20459cc462babfc5a82adf6b34f6e8b1\";a:15:{s:4:\"name\";s:12:\"Data Backups\";s:11:\"description\";s:54:\"Off-site backups, security scans, and automatic fixes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:28:\"vaultpress, backup, security\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"836245eb0a8f0c5272542305a88940c1\";a:15:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e94397a5c47c1be995eff613e65a674f\";a:15:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:27:\"Fast, ad-free video hosting\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:25:\"video, videos, videopress\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"032cd76e08467c732ccb026efda0c9cd\";a:15:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9b3e84beedf2e96f1ac5dd6498d2b1aa\";a:15:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:54:\"Add images, Twitter streams, and more to your sidebar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7724fd9600745cf93e37cc09282e1a37\";a:15:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}s:32:\"5b8f8e5b5a1887e3c0393cb78d5143a3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(771, 'jetpack_available_modules', 'a:1:{s:3:\"6.7\";a:44:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(772, 'jetpack_options', 'a:4:{s:7:\"version\";s:14:\"6.7:1542963471\";s:11:\"old_version\";s:14:\"6.7:1542963471\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:677;}', 'yes'),
(773, 'jetpack_tos_agreed', '1', 'yes'),
(774, 'jetpack_secrets', 'a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"85S0fgtRVw3t3FbHjtZhojzdHZWZfVPp\";s:8:\"secret_2\";s:32:\"IdgEXsouD1oaOQPzyDEQ03p0442Ckz1F\";s:3:\"exp\";i:1542964072;}}', 'no'),
(775, 'jetpack_sync_settings_disable', '0', 'yes'),
(776, 'jetpack_testimonial', '0', 'yes'),
(778, 'do_activate', '0', 'yes'),
(779, '_transient_timeout_jetpack_https_test', '1543049878', 'no'),
(780, '_transient_jetpack_https_test', '1', 'no'),
(781, '_transient_timeout_jetpack_https_test_message', '1543049878', 'no'),
(782, '_transient_jetpack_https_test_message', '', 'no'),
(783, '_transient_product_query-transient-version', '1543036637', 'yes'),
(790, '_transient_timeout_wc_product_loop63b81542963542', '1545555612', 'no'),
(791, '_transient_wc_product_loop63b81542963542', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(794, '_transient_timeout_wc_product_loop168a1542963542', '1545555612', 'no'),
(795, '_transient_wc_product_loop168a1542963542', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(804, '_transient_timeout_wc_upgrade_notice_3.5.1', '1543050707', 'no'),
(805, '_transient_wc_upgrade_notice_3.5.1', '', 'no'),
(813, '_transient_product-transient-version', '1543036637', 'yes'),
(819, '_transient_timeout_wc_report_sales_by_date', '1543124319', 'no'),
(820, '_transient_wc_report_sales_by_date', 'a:152:{s:32:\"dd6eda2d3f425de47c07ec0601ec3c6f\";a:0:{}s:32:\"0907965e0aa599cdf513983d98d19065\";a:0:{}s:32:\"267bc7f3d7daa318666db9cb915107c8\";a:0:{}s:32:\"f560f9a9c0bdcde57beb215f4e5f5f3d\";N;s:32:\"0ffdd8d093d9bce4252a8d56474e62e5\";a:0:{}s:32:\"0511812468ec18706a6ed8443d41b376\";a:0:{}s:32:\"23febeed34368e65f170f4f4e1ca1d2f\";a:0:{}s:32:\"41753d03fdbd0ce526265ae1194188aa\";a:0:{}s:32:\"83cf8adbf5857c2bb7a330504fe6e78e\";a:0:{}s:32:\"80b621e8cda10705cf8e8f573bb9bec0\";a:0:{}s:32:\"a2f617aa51340a7bbacacbb5a04113e7\";a:0:{}s:32:\"17f930d9a7550426025264234c1bff80\";N;s:32:\"bc9683c3fc10d0a51522b80cb52a1eaf\";a:0:{}s:32:\"05ed329ef71f62b5af3ec646e10a8fc3\";a:0:{}s:32:\"51675c3cffc52401da71ea83757654d5\";a:0:{}s:32:\"4a529bd285810638b6d3024f572ce8f0\";a:0:{}s:32:\"a7b28e750cddaadc2077968b3dd10206\";a:0:{}s:32:\"6428eb4359375ca400e43a2e722baf37\";a:0:{}s:32:\"a52ee4fd32106f81ee64985d361c936e\";a:0:{}s:32:\"d3354504ee5e955d4997701c2423b13d\";N;s:32:\"15dcf7545ffbb05945be866401faf028\";a:0:{}s:32:\"efefde162d6422feec2df1a93d42e8b2\";a:0:{}s:32:\"e85c3626694c3e1b4e276bfbcbf91b98\";a:0:{}s:32:\"6d6450aa045227156025717406d6487c\";a:0:{}s:32:\"56910e7be8715af937c7c4974dd66e22\";a:0:{}s:32:\"b8c30d058d3d930ee08a0a9f2d9d7908\";a:0:{}s:32:\"d29f88e0308678b2451c1cb68e4c41d2\";a:0:{}s:32:\"e0523c49d82e16bad90a84744cdebb39\";N;s:32:\"16232b8de7dadb4f0c4ae4065dfbbb02\";a:0:{}s:32:\"ac751b99f3fceb5598ec575f286c98d0\";a:0:{}s:32:\"87209204a6c1609cbb5244e1d66e53e9\";a:0:{}s:32:\"62715800b4cbb871a1e7fffc5f7463d6\";a:0:{}s:32:\"5b258a6102a3cfae6c4f9cca1b28a3d4\";a:0:{}s:32:\"68bdf661eb72896572456f13e0373a5b\";a:0:{}s:32:\"04e2f17292b465155c48fd697d8f0d15\";a:0:{}s:32:\"020178c0f95c2ee8cbf794513cddf160\";N;s:32:\"9aec32bf0b62537b8b0d65a0cdf116a3\";a:0:{}s:32:\"7fb1bd492250358c7ccbf8b33b4aba9a\";a:0:{}s:32:\"8577059835cb5d0a3d2ecc26339cd1a4\";a:0:{}s:32:\"39544a6c29491f54ed1ad9475ce7cd2a\";a:0:{}s:32:\"805990e1d54067fb3ca0c98e14162a25\";a:0:{}s:32:\"99b077c0c24abae8ae6aac7a9b092843\";a:0:{}s:32:\"81bc5143f9e91eb41f0d2e29c43e5b0e\";a:0:{}s:32:\"d822b53198874d35ee335fe31b96b3f4\";N;s:32:\"4672ad1ecbe6df8156735262e88290d9\";a:0:{}s:32:\"704022a92d92d3663782ab65f5cf3ffd\";a:0:{}s:32:\"64a3e75fd6bb29f362839ee1302d618f\";a:0:{}s:32:\"b8ec5b23dcc3304a8807382144f9d0da\";a:0:{}s:32:\"dfe1ba1b103869d47988fc05f39bb803\";a:0:{}s:32:\"dcb6788274d8875bae1724862998371c\";a:0:{}s:32:\"96819cb4554b7db9faffac22b21e1557\";a:0:{}s:32:\"f850cf919e3b5c30e01914254429a9c6\";N;s:32:\"57858cf8d321c1630579e5776e18be60\";a:0:{}s:32:\"2aba716afb93d30c8fd0228152cbfa44\";a:0:{}s:32:\"9fb10bbda06fced8147555deaea425df\";a:0:{}s:32:\"28dd930de6faeb904a1f0296ad42ab99\";a:0:{}s:32:\"2e3375a801b275a0e6f4860e8d17928f\";a:0:{}s:32:\"daf0ca49e10c62ac6544d7803fcaa277\";a:0:{}s:32:\"a212d03a575368aceb546cc531dbf826\";a:0:{}s:32:\"39eca4137468aff24f8c6203b13f7ea1\";N;s:32:\"ccf10e73b70935e33db70d71ec48a4a0\";a:0:{}s:32:\"dcda3e267938cc3bd6ffc009bd59e055\";a:0:{}s:32:\"283a60c8892ba5b14be78672ab46d193\";a:0:{}s:32:\"3d265004d6532c96b9d8ab3c204ad3d5\";a:0:{}s:32:\"13c4d58b3171e187865eb037b71d8c92\";a:0:{}s:32:\"cc0e2fd04a9f692c114a03757be4fd9b\";a:0:{}s:32:\"9d3ac2e46895589dba7b98b62176c5a9\";a:0:{}s:32:\"9c3494af9db7150b232d612067fa7e9d\";N;s:32:\"3474b0628272b8599abd231255146bb5\";a:0:{}s:32:\"76d5e1c55caeecd8f05b47b0e6bd9e99\";a:0:{}s:32:\"78287864838cabfb24da72516b9066e9\";a:0:{}s:32:\"4d8c3dfeba0c49c552137e3b12157a4e\";a:0:{}s:32:\"907466161bfbeb764bc03c8da3810a23\";a:0:{}s:32:\"a03b1641cd216741c0998f5f6bb01066\";a:0:{}s:32:\"8ea64b537f54c41c960f64af13709489\";a:0:{}s:32:\"a997a6b9e507374b7406470e6ef8cada\";N;s:32:\"6880494e6e5746ebf35101770b335c49\";a:0:{}s:32:\"2204f8ace3ce8908d92950fae4ba21c6\";a:0:{}s:32:\"a5f50b78a68a30ba828b037a720c0747\";a:0:{}s:32:\"972d04d68f3970256446f258780d8029\";a:0:{}s:32:\"12eb30d6c1d5c3a2671ac72da46fbcae\";a:0:{}s:32:\"fc5c15033ff83a02fbb0285d7f743c2e\";a:0:{}s:32:\"80d0972cf3417c855d9a5963763dbacf\";a:0:{}s:32:\"21fa215eff35e85cfd2c7e6fb6355557\";N;s:32:\"ad62822caa242c2bdb48b18cbd48fad0\";a:0:{}s:32:\"d7f11d96678e69f2697361b7b6c6727c\";a:0:{}s:32:\"2ca3cda361e872f8e26ea00827ee2d8c\";a:0:{}s:32:\"79735f1b06eb84fe96547be5b33e97c6\";a:0:{}s:32:\"20d975df601c0d9c7e86e2cb114d0882\";a:0:{}s:32:\"f6b0cb23c25194bbb8c836598f1c40d3\";a:0:{}s:32:\"f0bb502e7f744ebb1d86103398656485\";a:0:{}s:32:\"31ab822f7c14c007f02247b56de56601\";N;s:32:\"0a654c8369849062f60f4cb0b6c43f20\";a:0:{}s:32:\"b18e91427600e2bcce2c01e3e683961b\";a:0:{}s:32:\"72530865c7940095696d1639db98fadf\";a:0:{}s:32:\"efdfcfdbf2011884ac7b140e7bbde455\";a:0:{}s:32:\"ba877e435df13d5ab8bf1ec195a83ba0\";a:0:{}s:32:\"80988342b3132c6fa1a2f9d69bcd9477\";a:0:{}s:32:\"7c0c77f6a8f6bfec182881c9c7ba4de5\";a:0:{}s:32:\"df8b99bbe38744252e2c82f88acd5628\";N;s:32:\"1c230ac9bfb81117ba81155aebfca871\";a:0:{}s:32:\"c8e49a48b3627c3a20300a1a1328a865\";a:0:{}s:32:\"32c4766a23783d48d2072c93a572c25d\";a:0:{}s:32:\"dfcad5594be31cced37f9b959c3d694d\";a:0:{}s:32:\"46bd533e65a9fb72549f1e399f1e941e\";a:0:{}s:32:\"e98df9186ffa8e13bee15bf32d13fc91\";a:0:{}s:32:\"5d158678128acd3bfece67768a6ab9d5\";a:0:{}s:32:\"e099104ed637be52fa24f14e5e39b786\";N;s:32:\"eebfca64c5c414d7c909743c8a86511e\";a:0:{}s:32:\"fd2898dcfb8f18b11cb0837b36cdfba5\";a:0:{}s:32:\"8c2f6fb3e8eb47c6af5c71bc6819efc0\";a:0:{}s:32:\"c0581e77485864cbe4466bbf163c5233\";a:0:{}s:32:\"804e238eae8a12fe6651e69885a4f1b1\";a:0:{}s:32:\"a5e236c9f5a393945315eb0088b7a8af\";a:0:{}s:32:\"28837dec223286ffe4b3969477abe489\";a:0:{}s:32:\"4826548701075cd214ce90f3ec134732\";N;s:32:\"f30b4cb3c65c3a613217454452e8c6cf\";a:0:{}s:32:\"92b0cb64d6e73825a3050dceaed94328\";a:0:{}s:32:\"f1152d30af98d52b0866e6fbcefd7c0c\";a:0:{}s:32:\"e437c21bc71a354b4c2386ba4be86d37\";a:0:{}s:32:\"29db044b875297a1680928db4cd66c7f\";a:0:{}s:32:\"0edc62be5ee26a3358ec3d5c605e6802\";a:0:{}s:32:\"5228d1f4c4f4a812869fef88606d6c16\";a:0:{}s:32:\"27d2d513b0aced759a9408f15b4497e3\";N;s:32:\"2e8718d9704ce55df360d8f296e00f45\";a:0:{}s:32:\"68cecbe11bc040685f87ed0719bf73d3\";a:0:{}s:32:\"cf293d6bb73ff2d161ac587681f1d517\";a:0:{}s:32:\"f522a62201663eca5477d220619f137e\";a:0:{}s:32:\"074a674091b3e2c534240a54e9a851d8\";a:0:{}s:32:\"7ee3210f9106b7878c45ae8458e233fb\";a:0:{}s:32:\"6a5595d0cb9ef8ce0457739982fdd264\";a:0:{}s:32:\"2ce3ed24deba1b91cfc77e1806dce503\";N;s:32:\"1cef108cd4326226672a213fe1b1bb0e\";a:0:{}s:32:\"eea87dd6bf2592ec8415cbc811131bd9\";a:0:{}s:32:\"f0aa4b6ccbdd2398f1d045fe686d9cbc\";a:0:{}s:32:\"ccfcfe03496e288fed7f0f87f7ed01a8\";a:0:{}s:32:\"533481b3c70e8f67d6150e02952c5ebd\";a:0:{}s:32:\"63ad7e0433e6bc41201c526fbe2288ad\";a:0:{}s:32:\"c787f42661a9918999a7cadbd3918fd1\";a:0:{}s:32:\"6d42982c965e7b7cf78fe09ead9b9485\";N;s:32:\"36c99555e5e27a6443be9038e8c1680a\";a:0:{}s:32:\"fb4e7071783a815130085a4c0d24325a\";a:0:{}s:32:\"a62d829f629416ff4156023739cc9435\";a:0:{}s:32:\"02f8777641addc2e9bd007d68e6f2170\";a:0:{}s:32:\"849d3727b3e5d8cc226c0a7ff481a988\";a:0:{}s:32:\"857e37448a2ab1d683be86f328ad77ba\";a:0:{}s:32:\"5c08641a08bda2a58d5aeb60179ec40f\";a:0:{}s:32:\"26031df7a39162ddbdf15fa6667121c1\";N;s:32:\"3163b54b854c64b5b44568cdc9a2058c\";a:0:{}s:32:\"b6961f180be936db984bf10af4288cb2\";a:0:{}s:32:\"4f72ee27717be6124780dd7ff4178ebd\";a:0:{}s:32:\"32bfd4a9d17d46908f7543e8049d85cb\";a:0:{}}', 'no'),
(821, '_transient_timeout_wc_admin_report', '1543050811', 'no'),
(822, '_transient_wc_admin_report', 'a:1:{s:32:\"baf5f078ea6e325d98bc378c6f0b751f\";a:0:{}}', 'no'),
(847, '_transient_timeout_wc_shipping_method_count_1_1542963395', '1545556451', 'no'),
(848, '_transient_wc_shipping_method_count_1_1542963395', '2', 'no'),
(882, '_site_transient_timeout_theme_roots', '1543037008', 'no'),
(883, '_site_transient_theme_roots', 'a:11:{s:15:\"appointment-red\";s:7:\"/themes\";s:4:\"deck\";s:7:\"/themes\";s:5:\"flash\";s:7:\"/themes\";s:5:\"hiero\";s:7:\"/themes\";s:9:\"mesmerize\";s:7:\"/themes\";s:5:\"orfeo\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:10:\"wallstreet\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(885, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1543035211;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(886, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543035213;s:7:\"checked\";a:9:{s:4:\"deck\";s:5:\"1.0.5\";s:5:\"flash\";s:5:\"1.2.4\";s:5:\"hiero\";s:3:\"1.8\";s:9:\"mesmerize\";s:6:\"1.6.72\";s:10:\"storefront\";s:5:\"2.3.5\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";s:10:\"wallstreet\";s:7:\"1.7.8.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:7:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:4:\"deck\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"1.0.5\";s:7:\"updated\";s:19:\"2018-09-01 09:01:24\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/deck/1.0.5/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:5:\"flash\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"1.2.4\";s:7:\"updated\";s:19:\"2018-06-13 19:18:22\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/theme/flash/1.2.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:5:\"hiero\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.8\";s:7:\"updated\";s:19:\"2018-03-30 22:18:02\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/theme/hiero/1.8/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:9:\"mesmerize\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"1.6.72\";s:7:\"updated\";s:19:\"2018-09-20 13:36:54\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/mesmerize/1.6.72/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:10:\"storefront\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"2.3.5\";s:7:\"updated\";s:19:\"2018-11-23 17:02:31\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/storefront/2.3.5/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.7\";s:7:\"updated\";s:19:\"2018-11-04 19:03:56\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.7/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:6;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:10:\"wallstreet\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"1.7.4\";s:7:\"updated\";s:19:\"2017-01-29 03:09:30\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/wallstreet/1.7.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(887, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1543035214;s:7:\"checked\";a:7:{s:9:\"hello.php\";s:3:\"1.7\";s:19:\"jetpack/jetpack.php\";s:3:\"6.7\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:6:\"2.1.11\";s:49:\"acurax-social-media-widget/acurax-social-icon.php\";s:3:\"3.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.4\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.6.5\";s:28:\"wp-shop-original/wp-shop.php\";s:5:\"3.9.2\";}s:8:\"response\";a:3:{s:49:\"acurax-social-media-widget/acurax-social-icon.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:40:\"w.org/plugins/acurax-social-media-widget\";s:4:\"slug\";s:26:\"acurax-social-media-widget\";s:6:\"plugin\";s:49:\"acurax-social-media-widget/acurax-social-icon.php\";s:11:\"new_version\";s:5:\"3.2.7\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/acurax-social-media-widget/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/acurax-social-media-widget.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/acurax-social-media-widget/assets/icon-128x128.jpg?rev=1564775\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/acurax-social-media-widget/assets/banner-772x250.jpg?rev=1564775\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:86:\"<ul>\n<li>Fix - Security Improvements</li>\n<li>Fix - Perfomance Improvements</li>\n</ul>\";s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:28:\"wp-shop-original/wp-shop.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/wp-shop-original\";s:4:\"slug\";s:16:\"wp-shop-original\";s:6:\"plugin\";s:28:\"wp-shop-original/wp-shop.php\";s:11:\"new_version\";s:5:\"3.9.3\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-shop-original/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-shop-original.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-shop-original/assets/icon-256x256.png?rev=1780909\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-shop-original/assets/icon-128x128.png?rev=1780909\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-shop-original/assets/banner-772x250.png?rev=1781207\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2018-06-04 21:57:16\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"jetpack\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"6.7\";s:7:\"updated\";s:19:\"2018-09-26 18:22:26\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/jetpack/6.7/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"3.4.4\";s:7:\"updated\";s:19:\"2018-08-13 10:15:59\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/3.4.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"6.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.6.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:6:\"2.1.11\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.6.5\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1948167\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1948167\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(890, '_transient_timeout_wc_related_126', '1543121702', 'no'),
(891, '_transient_wc_related_126', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=126\";a:1:{i:0;s:3:\"129\";}}', 'no'),
(892, 'woocommerce_tracker_ua', 'a:1:{i:0;s:109:\"mozilla/5.0 (windows nt 6.3; wow64) applewebkit/537.36 (khtml, like gecko) chrome/68.0.3440.106 safari/537.36\";}', 'yes'),
(893, '_transient_timeout_woocommerce_system_status_wp_version_check', '1543121824', 'no'),
(894, '_transient_woocommerce_system_status_wp_version_check', '4.9.8', 'no'),
(895, '_transient_timeout_wc_order_132_needs_processing', '1543121834', 'no'),
(896, '_transient_wc_order_132_needs_processing', '0', 'no'),
(969, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:12:\"post-trashed\";s:1:\"1\";s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(972, '_transient_timeout_wc_low_stock_count', '1545628664', 'no'),
(973, '_transient_wc_low_stock_count', '0', 'no'),
(974, '_transient_timeout_wc_outofstock_count', '1545628664', 'no'),
(975, '_transient_wc_outofstock_count', '0', 'no'),
(979, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(982, '_site_transient_timeout_available_translations', '1543047556', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(983, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-17 18:13:01\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-22 03:45:21\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-05 11:37:23\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-21 15:34:42\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 21:28:23\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 17:08:36\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-14 19:51:46\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-07-06 08:46:24\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-13 20:39:25\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-13 20:39:12\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-13 08:48:48\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 04:07:23\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 13:34:08\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 23:34:56\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-01 02:03:58\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 16:14:01\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-09 14:53:42\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-10 17:20:09\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 16:20:18\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-15 15:46:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-15 16:32:57\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 20:43:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-04 08:05:41\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-05 07:24:22\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-08 18:24:55\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 16:02:42\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-02 09:10:15\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-12 20:01:58\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 09:43:51\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 10:29:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-19 15:55:54\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-01 10:30:44\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-02 06:28:35\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-22 02:28:45\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 17:12:13\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-13 21:42:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-11 00:57:26\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 08:41:27\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 08:41:56\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 11:11:49\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-10 17:50:37\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-21 07:25:37\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-05 14:41:09\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-11 01:38:20\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-01 17:58:21\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 16:21:25\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-31 08:30:58\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-01 13:20:12\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 20:59:54\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 15:35:13\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-07 21:08:54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 07:32:40\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-06 08:37:04\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 06:46:15\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-06 02:26:39\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-19 20:31:12\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no'),
(984, '_transient_is_multi_author', '0', 'yes'),
(985, '_transient_all_the_cool_cats', '1', 'yes'),
(986, '_transient_timeout_wc_related_140', '1543123216', 'no'),
(987, '_transient_wc_related_140', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=140\";a:4:{i:0;s:3:\"133\";i:1;s:3:\"134\";i:2;s:3:\"136\";i:3;s:3:\"138\";}}', 'no'),
(988, '_transient_timeout_wc_term_counts', '1545628816', 'no'),
(989, '_transient_wc_term_counts', 'a:1:{i:77;s:1:\"5\";}', 'no'),
(991, '_transient_timeout_jetpack_idc_allowed', '1543042484', 'no'),
(992, '_transient_jetpack_idc_allowed', '1', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1542950685:1'),
(7, 5, '_wp_trash_meta_status', 'publish'),
(8, 5, '_wp_trash_meta_time', '1542950851'),
(9, 5, '_wp_desired_post_slug', '%d0%be%d0%be%d0%be-%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%be%d0%bc%d1%84%d0%be%d1%80%d1%82'),
(10, 1, '_wp_trash_meta_status', 'publish'),
(11, 1, '_wp_trash_meta_time', '1542951382'),
(12, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(13, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(14, 8, '_edit_last', '1'),
(15, 8, '_edit_lock', '1542951513:1'),
(16, 9, '_wp_attached_file', '2018/11/22.jpg'),
(17, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4288;s:6:\"height\";i:2848;s:4:\"file\";s:14:\"2018/11/22.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"22-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"22-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"22-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"22-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"22-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"22-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"22-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"22-1200x797.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:797;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:14:\"Sergey Mironov\";s:6:\"camera\";s:10:\"NIKON D300\";s:7:\"caption\";s:34:\"Architecture blueprint &amp; tools\";s:17:\"created_timestamp\";s:10:\"1234684846\";s:9:\"copyright\";s:20:\"© by Sergey Mironov\";s:12:\"focal_length\";s:2:\"45\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:22:\"Construction blueprint\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:64:{i:0;s:10:\"background\";i:1;s:12:\" backgrounds\";i:2;s:7:\" circle\";i:3;s:13:\" illustration\";i:4;s:7:\" design\";i:5;s:6:\" paper\";i:6;s:9:\" business\";i:7;s:9:\" concepts\";i:8;s:10:\" equipment\";i:9;s:5:\" life\";i:10;s:8:\" pattern\";i:11;s:11:\" technology\";i:12;s:5:\" line\";i:13;s:5:\" hand\";i:14;s:11:\" instrument\";i:15;s:7:\" modern\";i:16;s:13:\" architecture\";i:17;s:13:\" construction\";i:18;s:7:\" estate\";i:19;s:9:\" exterior\";i:20;s:6:\" house\";i:21;s:9:\" industry\";i:22;s:7:\" office\";i:23;s:10:\" structure\";i:24;s:5:\" real\";i:25;s:9:\" interior\";i:26;s:5:\" home\";i:27;s:12:\" measurement\";i:28;s:10:\" lifestyle\";i:29;s:5:\" tool\";i:30;s:4:\" pen\";i:31;s:9:\" document\";i:32;s:5:\" desk\";i:33;s:6:\" scale\";i:34;s:6:\" still\";i:35;s:8:\" drawing\";i:36;s:7:\" pencil\";i:37;s:6:\" tools\";i:38;s:8:\" project\";i:39;s:6:\" build\";i:40;s:6:\" floor\";i:41;s:6:\" print\";i:42;s:7:\" sketch\";i:43;s:9:\" geometry\";i:44;s:8:\" outline\";i:45;s:12:\" engineering\";i:46;s:5:\" plan\";i:47;s:14:\" architectural\";i:48;s:10:\" architect\";i:49;s:8:\" housing\";i:50;s:12:\" residential\";i:51;s:10:\" technical\";i:52;s:9:\" designer\";i:53;s:9:\" engineer\";i:54;s:11:\" calculator\";i:55;s:11:\" contractor\";i:56;s:10:\" paperwork\";i:57;s:10:\" blueprint\";i:58;s:9:\" drafting\";i:59;s:12:\" geometrical\";i:60;s:6:\" plans\";i:61;s:15:\" reconstruction\";i:62;s:4:\" cad\";i:63;s:10:\" schematic\";}}}'),
(18, 10, '_wp_attached_file', '2018/11/23.jpg'),
(19, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1782;s:6:\"height\";i:1080;s:4:\"file\";s:14:\"2018/11/23.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"23-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"23-600x364.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:364;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"23-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"23-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"23-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"23-768x465.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:465;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"23-1024x621.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:621;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"23-1200x727.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:727;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 8, '_wp_trash_meta_status', 'draft'),
(21, 8, '_wp_trash_meta_time', '1542951605'),
(22, 8, '_wp_desired_post_slug', ''),
(23, 12, '_edit_last', '1'),
(24, 12, '_edit_lock', '1542951806:1'),
(27, 14, '_edit_last', '1'),
(28, 14, '_edit_lock', '1542951775:1'),
(29, 15, '_wp_attached_file', '2018/11/11.jpg'),
(30, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:975;s:4:\"file\";s:14:\"2018/11/11.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"11-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"11-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"11-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"11-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"11-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 12, '_wp_trash_meta_status', 'publish'),
(34, 12, '_wp_trash_meta_time', '1542951967'),
(35, 12, '_wp_desired_post_slug', '12'),
(36, 14, '_wp_trash_meta_status', 'publish'),
(37, 14, '_wp_trash_meta_time', '1542951971'),
(38, 14, '_wp_desired_post_slug', '14'),
(39, 18, '_wp_attached_file', '2018/11/Брус-клееный-850-руб.jpg'),
(40, 18, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:46:\"2018/11/Брус-клееный-850-руб.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 17, '_edit_last', '1'),
(42, 17, '_edit_lock', '1542952189:1'),
(43, 19, '_wp_attached_file', '2018/11/Брус-клееный-850-руб-1.jpg'),
(44, 19, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:48:\"2018/11/Брус-клееный-850-руб-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 21, '_wp_attached_file', '2018/11/Брус-клееный-600-руб-1.jpg'),
(48, 21, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:48:\"2018/11/Брус-клееный-600-руб-1.jpg\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 22, '_wp_attached_file', '2018/11/1.jpg'),
(50, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2018/11/1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 17, '_wp_trash_meta_status', 'publish'),
(56, 17, '_wp_trash_meta_time', '1542952494'),
(57, 17, '_wp_desired_post_slug', '17'),
(58, 26, '_edit_last', '1'),
(59, 26, '_edit_lock', '1542959152:1'),
(62, 28, '_wp_attached_file', '2018/11/logo1.png'),
(63, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:190;s:6:\"height\";i:95;s:4:\"file\";s:17:\"2018/11/logo1.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo1-100x95.png\";s:5:\"width\";i:100;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo1-150x95.png\";s:5:\"width\";i:150;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"thumb-small\";a:4:{s:4:\"file\";s:15:\"logo1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 30, '_wp_attached_file', '2018/11/logo.png'),
(67, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:958;s:6:\"height\";i:529;s:4:\"file\";s:16:\"2018/11/logo.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"logo-600x331.png\";s:5:\"width\";i:600;s:6:\"height\";i:331;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x166.png\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"logo-768x424.png\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"deck-s\";a:4:{s:4:\"file\";s:16:\"logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"deck-m\";a:4:{s:4:\"file\";s:16:\"logo-640x359.png\";s:5:\"width\";i:640;s:6:\"height\";i:359;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"deck-billboard-section\";a:4:{s:4:\"file\";s:16:\"logo-800x442.png\";s:5:\"width\";i:800;s:6:\"height\";i:442;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 31, '_wp_attached_file', '2018/11/cropped-logo.png'),
(69, 31, '_wp_attachment_context', 'custom-logo'),
(70, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:958;s:6:\"height\";i:529;s:4:\"file\";s:24:\"2018/11/cropped-logo.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"cropped-logo-600x331.png\";s:5:\"width\";i:600;s:6:\"height\";i:331;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x166.png\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"cropped-logo-768x424.png\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"deck-s\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"deck-m\";a:4:{s:4:\"file\";s:24:\"cropped-logo-640x359.png\";s:5:\"width\";i:640;s:6:\"height\";i:359;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"deck-billboard-section\";a:4:{s:4:\"file\";s:24:\"cropped-logo-800x442.png\";s:5:\"width\";i:800;s:6:\"height\";i:442;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 32, '_edit_lock', '1542955775:1'),
(72, 33, '_wp_attached_file', '2018/11/14.jpg'),
(73, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:14:\"2018/11/14.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"14-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"14-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"14-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"14-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"14-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"deck-s\";a:4:{s:4:\"file\";s:14:\"14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"deck-m\";a:4:{s:4:\"file\";s:14:\"14-640x359.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:359;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"deck-l\";a:4:{s:4:\"file\";s:14:\"14-980x550.jpg\";s:5:\"width\";i:980;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"deck-billboard-section\";a:4:{s:4:\"file\";s:14:\"14-800x450.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 33, '_wp_attachment_is_custom_background', 'wallstreet'),
(75, 32, '_wp_trash_meta_status', 'publish'),
(76, 32, '_wp_trash_meta_time', '1542955823'),
(77, 34, '_wp_trash_meta_status', 'publish'),
(78, 34, '_wp_trash_meta_time', '1542956061'),
(79, 35, '_edit_lock', '1542956195:1'),
(80, 35, '_wp_trash_meta_status', 'publish'),
(81, 35, '_wp_trash_meta_time', '1542956208'),
(82, 36, '_edit_last', '1'),
(83, 36, '_wp_page_template', 'default'),
(84, 36, '_edit_lock', '1542959576:1'),
(85, 39, '_wp_trash_meta_status', 'publish'),
(86, 39, '_wp_trash_meta_time', '1542956521'),
(87, 3, '_wp_trash_meta_status', 'draft'),
(88, 3, '_wp_trash_meta_time', '1542956569'),
(89, 3, '_wp_desired_post_slug', 'privacy-policy'),
(90, 2, '_wp_trash_meta_status', 'publish'),
(91, 2, '_wp_trash_meta_time', '1542956582'),
(92, 2, '_wp_desired_post_slug', 'sample-page'),
(105, 49, '_edit_last', '1'),
(106, 49, '_edit_lock', '1542959094:1'),
(107, 49, '_wp_page_template', 'default'),
(108, 49, '_yoast_wpseo_content_score', '30'),
(109, 51, '_edit_last', '1'),
(110, 51, '_edit_lock', '1542957786:1'),
(111, 52, '_wp_attached_file', '2018/11/11-1.jpg'),
(112, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:687;s:4:\"file\";s:16:\"2018/11/11-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"11-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"11-1-600x412.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:412;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"11-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"11-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"11-1-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"11-1-768x528.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-small\";a:4:{s:4:\"file\";s:14:\"11-1-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"thumb-medium\";a:4:{s:4:\"file\";s:16:\"11-1-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"thumb-featured\";a:4:{s:4:\"file\";s:16:\"11-1-250x175.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(113, 53, '_wp_attached_file', '2018/11/12.jpg'),
(114, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:675;s:4:\"file\";s:14:\"2018/11/12.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"12-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"12-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-small\";a:4:{s:4:\"file\";s:12:\"12-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"thumb-medium\";a:4:{s:4:\"file\";s:14:\"12-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"thumb-featured\";a:4:{s:4:\"file\";s:14:\"12-250x175.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1448893906\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(115, 54, '_wp_attached_file', '2018/11/21.jpg'),
(116, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:765;s:6:\"height\";i:509;s:4:\"file\";s:14:\"2018/11/21.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"21-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"21-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"21-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"21-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-small\";a:4:{s:4:\"file\";s:12:\"21-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"thumb-medium\";a:4:{s:4:\"file\";s:14:\"21-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"thumb-featured\";a:4:{s:4:\"file\";s:14:\"21-250x175.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 55, '_wp_attached_file', '2018/11/31.jpg'),
(118, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:675;s:4:\"file\";s:14:\"2018/11/31.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"31-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"31-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"31-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"31-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-small\";a:4:{s:4:\"file\";s:12:\"31-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"thumb-medium\";a:4:{s:4:\"file\";s:14:\"31-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"thumb-featured\";a:4:{s:4:\"file\";s:14:\"31-250x175.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1448897637\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(119, 56, '_wp_attached_file', '2018/11/41.jpg'),
(120, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:560;s:4:\"file\";s:14:\"2018/11/41.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"41-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"41-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"41-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"41-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"41-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"41-768x448.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-small\";a:4:{s:4:\"file\";s:12:\"41-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"thumb-medium\";a:4:{s:4:\"file\";s:14:\"41-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"thumb-featured\";a:4:{s:4:\"file\";s:14:\"41-250x175.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 51, '_wp_page_template', 'default'),
(122, 51, '_yoast_wpseo_content_score', '30'),
(131, 114, '_edit_last', '1'),
(132, 114, '_edit_lock', '1542959264:1'),
(133, 114, '_wp_page_template', 'default'),
(134, 114, '_yoast_wpseo_content_score', '30'),
(135, 26, '_wp_trash_meta_status', 'publish'),
(136, 26, '_wp_trash_meta_time', '1542959431'),
(137, 26, '_wp_desired_post_slug', '26'),
(138, 116, '_edit_last', '1'),
(141, 116, 'type_of_goods', '1'),
(142, 116, '_yoast_wpseo_content_score', '30'),
(143, 116, '_yoast_wpseo_primary_category', ''),
(144, 116, '_edit_lock', '1542959379:1'),
(145, 114, '_wp_trash_meta_status', 'publish'),
(146, 114, '_wp_trash_meta_time', '1542959528'),
(147, 114, '_wp_desired_post_slug', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f'),
(148, 36, '_yoast_wpseo_content_score', '60'),
(153, 126, '_wc_review_count', '0'),
(154, 126, '_wc_rating_count', 'a:0:{}'),
(155, 126, '_wc_average_rating', '0'),
(156, 126, '_edit_last', '1'),
(157, 126, '_edit_lock', '1542966396:1'),
(158, 127, '_wp_attached_file', '2018/11/2.jpg'),
(159, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:13:\"2018/11/2.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 128, '_wp_attached_file', '2018/11/3.jpg'),
(161, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:289;s:4:\"file\";s:13:\"2018/11/3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 129, '_wc_review_count', '0'),
(163, 129, '_wc_rating_count', 'a:0:{}'),
(164, 129, '_wc_average_rating', '0'),
(165, 129, '_edit_last', '1'),
(166, 129, '_thumbnail_id', '127'),
(167, 129, '_sku', ''),
(168, 129, '_regular_price', '12345'),
(169, 129, '_sale_price', ''),
(170, 129, '_sale_price_dates_from', ''),
(171, 129, '_sale_price_dates_to', ''),
(172, 129, 'total_sales', '0'),
(173, 129, '_tax_status', 'taxable'),
(174, 129, '_tax_class', ''),
(175, 129, '_manage_stock', 'no'),
(176, 129, '_backorders', 'no'),
(177, 129, '_sold_individually', 'no'),
(178, 129, '_weight', ''),
(179, 129, '_length', ''),
(180, 129, '_width', ''),
(181, 129, '_height', ''),
(182, 129, '_upsell_ids', 'a:0:{}'),
(183, 129, '_crosssell_ids', 'a:0:{}'),
(184, 129, '_purchase_note', ''),
(185, 129, '_default_attributes', 'a:0:{}'),
(186, 129, '_virtual', 'no'),
(187, 129, '_downloadable', 'no'),
(188, 129, '_product_image_gallery', ''),
(189, 129, '_download_limit', '-1'),
(190, 129, '_download_expiry', '-1'),
(191, 129, '_stock', NULL),
(192, 129, '_stock_status', 'instock'),
(193, 129, '_product_version', '3.4.4'),
(194, 129, '_price', '12345'),
(195, 129, '_edit_lock', '1542964372:1'),
(196, 122, '_edit_lock', '1542964403:1'),
(197, 122, '_edit_last', '1'),
(198, 131, '_wc_review_count', '0'),
(199, 131, '_wc_rating_count', 'a:0:{}'),
(200, 131, '_wc_average_rating', '0'),
(201, 126, '_sku', ''),
(202, 126, '_regular_price', ''),
(203, 126, '_sale_price', ''),
(204, 126, '_sale_price_dates_from', ''),
(205, 126, '_sale_price_dates_to', ''),
(206, 126, 'total_sales', '0'),
(207, 126, '_tax_status', 'taxable'),
(208, 126, '_tax_class', ''),
(209, 126, '_manage_stock', 'no'),
(210, 126, '_backorders', 'no'),
(211, 126, '_sold_individually', 'no'),
(212, 126, '_weight', ''),
(213, 126, '_length', ''),
(214, 126, '_width', ''),
(215, 126, '_height', ''),
(216, 126, '_upsell_ids', 'a:0:{}'),
(217, 126, '_crosssell_ids', 'a:0:{}'),
(218, 126, '_purchase_note', ''),
(219, 126, '_default_attributes', 'a:0:{}'),
(220, 126, '_virtual', 'no'),
(221, 126, '_downloadable', 'no'),
(222, 126, '_product_image_gallery', ''),
(223, 126, '_download_limit', '-1'),
(224, 126, '_download_expiry', '-1'),
(225, 126, '_stock', NULL),
(226, 126, '_stock_status', 'instock'),
(227, 126, '_product_version', '3.4.4'),
(228, 126, '_price', ''),
(229, 126, '_wp_trash_meta_status', 'publish'),
(230, 126, '_wp_trash_meta_time', '1543035491'),
(231, 126, '_wp_desired_post_slug', '%d0%b1%d1%80%d1%83%d1%81-%d0%ba%d0%bb%d0%b5%d0%b5%d0%bd%d1%8b%d0%b9'),
(232, 129, '_wp_trash_meta_status', 'publish'),
(233, 129, '_wp_trash_meta_time', '1543035502'),
(234, 129, '_wp_desired_post_slug', '%d1%82%d0%be%d0%b2%d0%b0%d1%80'),
(235, 133, '_wc_review_count', '0'),
(236, 133, '_wc_rating_count', 'a:0:{}'),
(237, 133, '_wc_average_rating', '0'),
(238, 133, '_edit_last', '1'),
(239, 133, '_edit_lock', '1543035701:1'),
(240, 133, '_thumbnail_id', '127'),
(241, 133, '_sku', ''),
(242, 133, '_regular_price', '12000'),
(243, 133, '_sale_price', ''),
(244, 133, '_sale_price_dates_from', ''),
(245, 133, '_sale_price_dates_to', ''),
(246, 133, 'total_sales', '0'),
(247, 133, '_tax_status', 'taxable'),
(248, 133, '_tax_class', ''),
(249, 133, '_manage_stock', 'no'),
(250, 133, '_backorders', 'no'),
(251, 133, '_sold_individually', 'no'),
(252, 133, '_weight', ''),
(253, 133, '_length', ''),
(254, 133, '_width', ''),
(255, 133, '_height', ''),
(256, 133, '_upsell_ids', 'a:0:{}'),
(257, 133, '_crosssell_ids', 'a:0:{}'),
(258, 133, '_purchase_note', ''),
(259, 133, '_default_attributes', 'a:0:{}'),
(260, 133, '_virtual', 'no'),
(261, 133, '_downloadable', 'no'),
(262, 133, '_product_image_gallery', ''),
(263, 133, '_download_limit', '-1'),
(264, 133, '_download_expiry', '-1'),
(265, 133, '_stock', NULL),
(266, 133, '_stock_status', 'instock'),
(267, 133, '_product_version', '3.4.4'),
(268, 133, '_price', '12000'),
(269, 134, '_wc_review_count', '0'),
(270, 134, '_wc_rating_count', 'a:0:{}'),
(271, 134, '_wc_average_rating', '0'),
(272, 134, '_edit_last', '1'),
(273, 134, '_edit_lock', '1543035876:1'),
(274, 135, '_wp_attached_file', '2018/11/4.jpg'),
(275, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:189;s:6:\"height\";i:200;s:4:\"file\";s:13:\"2018/11/4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-small\";a:4:{s:4:\"file\";s:11:\"4-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"thumb-medium\";a:4:{s:4:\"file\";s:13:\"4-189x135.jpg\";s:5:\"width\";i:189;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"thumb-featured\";a:4:{s:4:\"file\";s:13:\"4-189x175.jpg\";s:5:\"width\";i:189;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 134, '_thumbnail_id', '135'),
(277, 134, '_sku', ''),
(278, 134, '_regular_price', '10000'),
(279, 134, '_sale_price', ''),
(280, 134, '_sale_price_dates_from', ''),
(281, 134, '_sale_price_dates_to', ''),
(282, 134, 'total_sales', '0'),
(283, 134, '_tax_status', 'taxable'),
(284, 134, '_tax_class', ''),
(285, 134, '_manage_stock', 'no'),
(286, 134, '_backorders', 'no'),
(287, 134, '_sold_individually', 'no'),
(288, 134, '_weight', ''),
(289, 134, '_length', ''),
(290, 134, '_width', ''),
(291, 134, '_height', ''),
(292, 134, '_upsell_ids', 'a:0:{}'),
(293, 134, '_crosssell_ids', 'a:0:{}'),
(294, 134, '_purchase_note', ''),
(295, 134, '_default_attributes', 'a:0:{}'),
(296, 134, '_virtual', 'no'),
(297, 134, '_downloadable', 'no'),
(298, 134, '_product_image_gallery', ''),
(299, 134, '_download_limit', '-1'),
(300, 134, '_download_expiry', '-1'),
(301, 134, '_stock', NULL),
(302, 134, '_stock_status', 'instock'),
(303, 134, '_product_version', '3.4.4'),
(304, 134, '_price', '10000'),
(305, 136, '_wc_review_count', '0'),
(306, 136, '_wc_rating_count', 'a:0:{}'),
(307, 136, '_wc_average_rating', '0'),
(308, 136, '_edit_last', '1'),
(309, 136, '_edit_lock', '1543036110:1'),
(310, 137, '_wp_attached_file', '2018/11/13.jpg'),
(311, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:773;s:6:\"height\";i:510;s:4:\"file\";s:14:\"2018/11/13.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"13-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"13-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-small\";a:4:{s:4:\"file\";s:12:\"13-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"thumb-medium\";a:4:{s:4:\"file\";s:14:\"13-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"thumb-featured\";a:4:{s:4:\"file\";s:14:\"13-250x175.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"13-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"13-600x396.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:396;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"13-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"13-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"13-600x396.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:396;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"13-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(312, 136, '_thumbnail_id', '137'),
(313, 136, '_sku', ''),
(314, 136, '_regular_price', '3500000'),
(315, 136, '_sale_price', ''),
(316, 136, '_sale_price_dates_from', ''),
(317, 136, '_sale_price_dates_to', ''),
(318, 136, 'total_sales', '0'),
(319, 136, '_tax_status', 'taxable'),
(320, 136, '_tax_class', ''),
(321, 136, '_manage_stock', 'no'),
(322, 136, '_backorders', 'no'),
(323, 136, '_sold_individually', 'no'),
(324, 136, '_weight', ''),
(325, 136, '_length', ''),
(326, 136, '_width', ''),
(327, 136, '_height', ''),
(328, 136, '_upsell_ids', 'a:0:{}'),
(329, 136, '_crosssell_ids', 'a:0:{}'),
(330, 136, '_purchase_note', ''),
(331, 136, '_default_attributes', 'a:0:{}'),
(332, 136, '_virtual', 'no'),
(333, 136, '_downloadable', 'no'),
(334, 136, '_product_image_gallery', ''),
(335, 136, '_download_limit', '-1'),
(336, 136, '_download_expiry', '-1'),
(337, 136, '_stock', NULL),
(338, 136, '_stock_status', 'instock'),
(339, 136, '_product_version', '3.4.4'),
(340, 136, '_price', '3500000'),
(341, 138, '_wc_review_count', '0'),
(342, 138, '_wc_rating_count', 'a:0:{}'),
(343, 138, '_wc_average_rating', '0'),
(344, 138, '_edit_last', '1'),
(345, 138, '_edit_lock', '1543036310:1'),
(346, 139, '_wp_attached_file', '2018/11/22-1.jpg'),
(347, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:658;s:4:\"file\";s:16:\"2018/11/22-1.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"22-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"22-1-300x219.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:219;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"22-1-768x561.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:561;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-small\";a:4:{s:4:\"file\";s:14:\"22-1-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"thumb-medium\";a:4:{s:4:\"file\";s:16:\"22-1-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"thumb-featured\";a:4:{s:4:\"file\";s:16:\"22-1-250x175.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"22-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"22-1-600x439.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"22-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"22-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"22-1-600x439.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"22-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1448895457\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(348, 138, '_thumbnail_id', '139'),
(349, 138, '_sku', ''),
(350, 138, '_regular_price', '1700000'),
(351, 138, '_sale_price', ''),
(352, 138, '_sale_price_dates_from', ''),
(353, 138, '_sale_price_dates_to', ''),
(354, 138, 'total_sales', '0'),
(355, 138, '_tax_status', 'taxable'),
(356, 138, '_tax_class', ''),
(357, 138, '_manage_stock', 'no'),
(358, 138, '_backorders', 'no'),
(359, 138, '_sold_individually', 'no'),
(360, 138, '_weight', ''),
(361, 138, '_length', ''),
(362, 138, '_width', ''),
(363, 138, '_height', ''),
(364, 138, '_upsell_ids', 'a:0:{}'),
(365, 138, '_crosssell_ids', 'a:0:{}'),
(366, 138, '_purchase_note', ''),
(367, 138, '_default_attributes', 'a:0:{}'),
(368, 138, '_virtual', 'no'),
(369, 138, '_downloadable', 'no'),
(370, 138, '_product_image_gallery', ''),
(371, 138, '_download_limit', '-1'),
(372, 138, '_download_expiry', '-1'),
(373, 138, '_stock', NULL),
(374, 138, '_stock_status', 'instock'),
(375, 138, '_product_version', '3.4.4'),
(376, 138, '_price', '1700000'),
(377, 140, '_wc_review_count', '0'),
(378, 140, '_wc_rating_count', 'a:0:{}'),
(379, 140, '_wc_average_rating', '0'),
(380, 140, '_edit_last', '1'),
(381, 140, '_edit_lock', '1543036503:1'),
(382, 141, '_wp_attached_file', '2018/11/32.jpg'),
(383, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:560;s:4:\"file\";s:14:\"2018/11/32.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"32-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"32-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"32-768x448.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-small\";a:4:{s:4:\"file\";s:12:\"32-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"thumb-medium\";a:4:{s:4:\"file\";s:14:\"32-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"thumb-featured\";a:4:{s:4:\"file\";s:14:\"32-250x175.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"32-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"32-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"32-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"32-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"32-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"32-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(384, 140, '_thumbnail_id', '141'),
(385, 140, '_sku', ''),
(386, 140, '_regular_price', '1520000'),
(387, 140, '_sale_price', ''),
(388, 140, '_sale_price_dates_from', ''),
(389, 140, '_sale_price_dates_to', ''),
(390, 140, 'total_sales', '0'),
(391, 140, '_tax_status', 'taxable'),
(392, 140, '_tax_class', ''),
(393, 140, '_manage_stock', 'no'),
(394, 140, '_backorders', 'no'),
(395, 140, '_sold_individually', 'no'),
(396, 140, '_weight', ''),
(397, 140, '_length', ''),
(398, 140, '_width', ''),
(399, 140, '_height', ''),
(400, 140, '_upsell_ids', 'a:0:{}'),
(401, 140, '_crosssell_ids', 'a:0:{}'),
(402, 140, '_purchase_note', ''),
(403, 140, '_default_attributes', 'a:0:{}'),
(404, 140, '_virtual', 'no'),
(405, 140, '_downloadable', 'no'),
(406, 140, '_product_image_gallery', ''),
(407, 140, '_download_limit', '-1'),
(408, 140, '_download_expiry', '-1'),
(409, 140, '_stock', NULL),
(410, 140, '_stock_status', 'instock'),
(411, 140, '_product_version', '3.4.4'),
(412, 140, '_price', '1520000'),
(413, 142, '_menu_item_type', 'custom'),
(414, 142, '_menu_item_menu_item_parent', '0'),
(415, 142, '_menu_item_object_id', '142'),
(416, 142, '_menu_item_object', 'custom'),
(417, 142, '_menu_item_target', ''),
(418, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(419, 142, '_menu_item_xfn', ''),
(420, 142, '_menu_item_url', 'http://wordpress/'),
(421, 142, '_menu_item_orphaned', '1543036678'),
(422, 143, '_menu_item_type', 'post_type'),
(423, 143, '_menu_item_menu_item_parent', '0'),
(424, 143, '_menu_item_object_id', '123'),
(425, 143, '_menu_item_object', 'page'),
(426, 143, '_menu_item_target', ''),
(427, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(428, 143, '_menu_item_xfn', ''),
(429, 143, '_menu_item_url', ''),
(430, 143, '_menu_item_orphaned', '1543036678'),
(431, 144, '_menu_item_type', 'post_type'),
(432, 144, '_menu_item_menu_item_parent', '0'),
(433, 144, '_menu_item_object_id', '124'),
(434, 144, '_menu_item_object', 'page'),
(435, 144, '_menu_item_target', ''),
(436, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(437, 144, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(438, 144, '_menu_item_url', ''),
(439, 144, '_menu_item_orphaned', '1543036678'),
(440, 145, '_menu_item_type', 'post_type'),
(441, 145, '_menu_item_menu_item_parent', '0'),
(442, 145, '_menu_item_object_id', '125'),
(443, 145, '_menu_item_object', 'page'),
(444, 145, '_menu_item_target', ''),
(445, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(446, 145, '_menu_item_xfn', ''),
(447, 145, '_menu_item_url', ''),
(448, 145, '_menu_item_orphaned', '1543036678'),
(449, 146, '_menu_item_type', 'post_type'),
(450, 146, '_menu_item_menu_item_parent', '0'),
(451, 146, '_menu_item_object_id', '49'),
(452, 146, '_menu_item_object', 'page'),
(453, 146, '_menu_item_target', ''),
(454, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(455, 146, '_menu_item_xfn', ''),
(456, 146, '_menu_item_url', ''),
(457, 146, '_menu_item_orphaned', '1543036678'),
(458, 147, '_menu_item_type', 'post_type'),
(459, 147, '_menu_item_menu_item_parent', '0'),
(460, 147, '_menu_item_object_id', '122'),
(461, 147, '_menu_item_object', 'page'),
(462, 147, '_menu_item_target', ''),
(463, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(464, 147, '_menu_item_xfn', ''),
(465, 147, '_menu_item_url', ''),
(466, 147, '_menu_item_orphaned', '1543036678'),
(467, 148, '_menu_item_type', 'post_type'),
(468, 148, '_menu_item_menu_item_parent', '0'),
(469, 148, '_menu_item_object_id', '36'),
(470, 148, '_menu_item_object', 'page'),
(471, 148, '_menu_item_target', ''),
(472, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(473, 148, '_menu_item_xfn', ''),
(474, 148, '_menu_item_url', ''),
(475, 148, '_menu_item_orphaned', '1543036678'),
(476, 149, '_menu_item_type', 'post_type'),
(477, 149, '_menu_item_menu_item_parent', '0'),
(478, 149, '_menu_item_object_id', '51'),
(479, 149, '_menu_item_object', 'page'),
(480, 149, '_menu_item_target', ''),
(481, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(482, 149, '_menu_item_xfn', ''),
(483, 149, '_menu_item_url', ''),
(484, 149, '_menu_item_orphaned', '1543036678'),
(485, 150, '_menu_item_type', 'custom'),
(486, 150, '_menu_item_menu_item_parent', '0'),
(487, 150, '_menu_item_object_id', '150'),
(488, 150, '_menu_item_object', 'custom'),
(489, 150, '_menu_item_target', ''),
(490, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(491, 150, '_menu_item_xfn', ''),
(492, 150, '_menu_item_url', 'http://wordpress/'),
(494, 151, '_menu_item_type', 'post_type'),
(495, 151, '_menu_item_menu_item_parent', '0'),
(496, 151, '_menu_item_object_id', '123'),
(497, 151, '_menu_item_object', 'page'),
(498, 151, '_menu_item_target', ''),
(499, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(500, 151, '_menu_item_xfn', ''),
(501, 151, '_menu_item_url', ''),
(502, 151, '_menu_item_orphaned', '1543036715'),
(503, 152, '_menu_item_type', 'post_type'),
(504, 152, '_menu_item_menu_item_parent', '0'),
(505, 152, '_menu_item_object_id', '124'),
(506, 152, '_menu_item_object', 'page'),
(507, 152, '_menu_item_target', ''),
(508, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(509, 152, '_menu_item_xfn', ''),
(510, 152, '_menu_item_url', ''),
(511, 152, '_menu_item_orphaned', '1543036715'),
(512, 153, '_menu_item_type', 'post_type'),
(513, 153, '_menu_item_menu_item_parent', '0'),
(514, 153, '_menu_item_object_id', '125'),
(515, 153, '_menu_item_object', 'page'),
(516, 153, '_menu_item_target', ''),
(517, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(518, 153, '_menu_item_xfn', ''),
(519, 153, '_menu_item_url', ''),
(520, 153, '_menu_item_orphaned', '1543036715'),
(521, 154, '_menu_item_type', 'post_type'),
(522, 154, '_menu_item_menu_item_parent', '0'),
(523, 154, '_menu_item_object_id', '49'),
(524, 154, '_menu_item_object', 'page'),
(525, 154, '_menu_item_target', ''),
(526, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(527, 154, '_menu_item_xfn', ''),
(528, 154, '_menu_item_url', ''),
(530, 155, '_menu_item_type', 'post_type'),
(531, 155, '_menu_item_menu_item_parent', '0'),
(532, 155, '_menu_item_object_id', '122'),
(533, 155, '_menu_item_object', 'page'),
(534, 155, '_menu_item_target', ''),
(535, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(536, 155, '_menu_item_xfn', ''),
(537, 155, '_menu_item_url', ''),
(539, 156, '_menu_item_type', 'post_type'),
(540, 156, '_menu_item_menu_item_parent', '0'),
(541, 156, '_menu_item_object_id', '36'),
(542, 156, '_menu_item_object', 'page'),
(543, 156, '_menu_item_target', ''),
(544, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(545, 156, '_menu_item_xfn', ''),
(546, 156, '_menu_item_url', ''),
(548, 157, '_menu_item_type', 'post_type'),
(549, 157, '_menu_item_menu_item_parent', '0'),
(550, 157, '_menu_item_object_id', '51'),
(551, 157, '_menu_item_object', 'page'),
(552, 157, '_menu_item_target', ''),
(553, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(554, 157, '_menu_item_xfn', ''),
(555, 157, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-22 14:10:39', '2018-11-22 11:10:39', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2018-11-23 08:36:23', '2018-11-23 05:36:23', '', 0, 'http://wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-22 14:10:39', '2018-11-22 11:10:39', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://wordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-11-23 10:03:02', '2018-11-23 07:03:02', '', 0, 'http://wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-22 14:10:39', '2018-11-22 11:10:39', '<h2>Кто мы</h2><p>Наш адрес сайта: http://wordpress.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-11-23 10:02:49', '2018-11-23 07:02:49', '', 0, 'http://wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-11-22 14:11:33', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-22 14:11:33', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2018-11-23 08:27:05', '2018-11-23 05:27:05', '', 'ООО «СтройКомфорт»', '', 'trash', 'open', 'open', '', '%d0%be%d0%be%d0%be-%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%be%d0%bc%d1%84%d0%be%d1%80%d1%82__trashed', '', '', '2018-11-23 08:27:31', '2018-11-23 05:27:31', '', 0, 'http://wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2018-11-23 08:27:05', '2018-11-23 05:27:05', '', 'ООО «СтройКомфорт»', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-11-23 08:27:05', '2018-11-23 05:27:05', '', 5, 'http://wordpress/2018/11/23/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-11-23 08:36:23', '2018-11-23 05:36:23', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-11-23 08:36:23', '2018-11-23 05:36:23', '', 1, 'http://wordpress/2018/11/23/1-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-11-23 08:40:05', '2018-11-23 05:40:05', '<p style=\"text-align: left;\"><em>1.Проектирование домов.</em></p>\n<p style=\"text-align: left;\"><em>Самое главное заключается в том, чтобы разработанный проект строительства дома создавался опираясь на следующие принципы:</em></p>\n<p style=\"text-align: left;\"><em>Множественная функциональность – то есть, возведенный дом по этому проекту будет удобен и практичен во всех отношениях. Проект дома своими руками должен быть не хуже архитекторского;</em></p>\n<p style=\"text-align: left;\"><em>Простота конструкции – сделать проект дома несложно будет только в том случае, если он не будет предполагать каких-либо изысков. Создание какого-то особо сложного проекта, реализация которого потребует огромного количества творческих изысков, человеку, не имеющему специального образования, крайне не рекомендуется, ибо можно не учесть некоторые принципиально важные вещи;</em></p>\n<p style=\"text-align: left;\"><em>Эстетичность – конечно же, дом должен выглядеть красиво и радовать взор своих хозяев. Проект надежного дома должен быть еще и эффектным! </em></p>', '', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-11-23 08:40:05', '2018-11-23 05:40:05', '', 0, 'http://wordpress/?p=8', 0, 'post', '', 0),
(9, 1, '2018-11-23 08:38:43', '2018-11-23 05:38:43', '', 'Construction blueprint', 'Architecture blueprint &amp; tools', 'inherit', 'open', 'closed', '', 'construction-blueprint', '', '', '2018-11-23 08:38:43', '2018-11-23 05:38:43', '', 8, 'http://wordpress/wp-content/uploads/2018/11/22.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-11-23 08:39:00', '2018-11-23 05:39:00', '', '23', '', 'inherit', 'open', 'closed', '', '23', '', '', '2018-11-23 08:39:00', '2018-11-23 05:39:00', '', 8, 'http://wordpress/wp-content/uploads/2018/11/23.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-11-23 08:40:05', '2018-11-23 05:40:05', '<p style=\"text-align: left;\"><em>1.Проектирование домов.</em></p>\n<p style=\"text-align: left;\"><em>Самое главное заключается в том, чтобы разработанный проект строительства дома создавался опираясь на следующие принципы:</em></p>\n<p style=\"text-align: left;\"><em>Множественная функциональность – то есть, возведенный дом по этому проекту будет удобен и практичен во всех отношениях. Проект дома своими руками должен быть не хуже архитекторского;</em></p>\n<p style=\"text-align: left;\"><em>Простота конструкции – сделать проект дома несложно будет только в том случае, если он не будет предполагать каких-либо изысков. Создание какого-то особо сложного проекта, реализация которого потребует огромного количества творческих изысков, человеку, не имеющему специального образования, крайне не рекомендуется, ибо можно не учесть некоторые принципиально важные вещи;</em></p>\n<p style=\"text-align: left;\"><em>Эстетичность – конечно же, дом должен выглядеть красиво и радовать взор своих хозяев. Проект надежного дома должен быть еще и эффектным! </em></p>', '', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-11-23 08:40:05', '2018-11-23 05:40:05', '', 8, 'http://wordpress/2018/11/23/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-11-23 08:41:55', '2018-11-23 05:41:55', '<em>    <strong>  1.Проектирование домов.</strong></em>\r\n<em>Самое главное заключается в том, чтобы разработанный проект строительства дома создавался опираясь на следующие принципы:</em>\r\n<em>Множественная функциональность – то есть, возведенный дом по этому проекту будет удобен и практичен во всех отношениях. Проект дома своими руками должен быть не хуже архитекторского;</em>\r\n<em>Простота конструкции – сделать проект дома несложно будет только в том случае, если он не будет предполагать каких-либо изысков. Создание какого-то особо сложного проекта, реализация которого потребует огромного количества творческих изысков, человеку, не имеющему специального образования, крайне не рекомендуется, ибо можно не учесть некоторые принципиально важные вещи;</em>\r\n<em>Эстетичность – конечно же, дом должен выглядеть красиво и радовать взор своих хозяев. Проект надежного дома должен быть еще и эффектным!</em>\r\n\r\n<img class=\"size-medium wp-image-9\" src=\"http://wordpress/wp-content/uploads/2018/11/22-300x199.jpg\" alt=\"\" width=\"300\" height=\"199\" />\r\n\r\n&nbsp;', '', '', 'trash', 'open', 'open', '', '12__trashed', '', '', '2018-11-23 08:46:07', '2018-11-23 05:46:07', '', 0, 'http://wordpress/?p=12', 0, 'post', '', 0),
(13, 1, '2018-11-23 08:41:55', '2018-11-23 05:41:55', '<em>    <strong>  1.Проектирование домов.</strong></em>\r\n<em>Самое главное заключается в том, чтобы разработанный проект строительства дома создавался опираясь на следующие принципы:</em>\r\n<em>Множественная функциональность – то есть, возведенный дом по этому проекту будет удобен и практичен во всех отношениях. Проект дома своими руками должен быть не хуже архитекторского;</em>\r\n<em>Простота конструкции – сделать проект дома несложно будет только в том случае, если он не будет предполагать каких-либо изысков. Создание какого-то особо сложного проекта, реализация которого потребует огромного количества творческих изысков, человеку, не имеющему специального образования, крайне не рекомендуется, ибо можно не учесть некоторые принципиально важные вещи;</em>\r\n<em>Эстетичность – конечно же, дом должен выглядеть красиво и радовать взор своих хозяев. Проект надежного дома должен быть еще и эффектным!</em>\r\n\r\n<img class=\"size-medium wp-image-9\" src=\"http://wordpress/wp-content/uploads/2018/11/22-300x199.jpg\" alt=\"\" width=\"300\" height=\"199\" />\r\n\r\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-11-23 08:41:55', '2018-11-23 05:41:55', '', 12, 'http://wordpress/2018/11/23/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-11-23 08:45:13', '2018-11-23 05:45:13', '<em> <strong> 2.Монтаж фундамента.</strong></em>\r\n<em>ООО «СтройКомфорт» оказывает услуги в заливке фундамента на территории Тульской области. Сотрудники рады приветствовать всех желающих заказать комплексное строительство «под ключ» или отдельно взятый этап работ.В своей деятельности компания руководствуется ответственным отношением к делу и безупречным выполнением поставленных задач. На каждой стадии осуществления строительных работ специалисты ООО «СтройКомфорт» пристально контролируют все процессы, осознавая важность таких показателей как надежность, прочность, долговечность. Взаимодействуя с заказчиками, сотрудники оперируют реальными цифрами, предельно четкими замерами и оптимальными коэффициентами затрат. Строя фундаменты для жилых и промышленных зданий, компания строго придерживается нормативов СНиП и ГОСТ.               </em>\r\n\r\n<img class=\"size-medium wp-image-15 aligncenter\" src=\"http://wordpress/wp-content/uploads/2018/11/11-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />', '', '', 'trash', 'open', 'open', '', '14__trashed', '', '', '2018-11-23 08:46:11', '2018-11-23 05:46:11', '', 0, 'http://wordpress/?p=14', 0, 'post', '', 0),
(15, 1, '2018-11-23 08:44:33', '2018-11-23 05:44:33', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2018-11-23 08:44:33', '2018-11-23 05:44:33', '', 14, 'http://wordpress/wp-content/uploads/2018/11/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-11-23 08:45:13', '2018-11-23 05:45:13', '<em> <strong> 2.Монтаж фундамента.</strong></em>\r\n<em>ООО «СтройКомфорт» оказывает услуги в заливке фундамента на территории Тульской области. Сотрудники рады приветствовать всех желающих заказать комплексное строительство «под ключ» или отдельно взятый этап работ.В своей деятельности компания руководствуется ответственным отношением к делу и безупречным выполнением поставленных задач. На каждой стадии осуществления строительных работ специалисты ООО «СтройКомфорт» пристально контролируют все процессы, осознавая важность таких показателей как надежность, прочность, долговечность. Взаимодействуя с заказчиками, сотрудники оперируют реальными цифрами, предельно четкими замерами и оптимальными коэффициентами затрат. Строя фундаменты для жилых и промышленных зданий, компания строго придерживается нормативов СНиП и ГОСТ.               </em>\r\n\r\n<img class=\"size-medium wp-image-15 aligncenter\" src=\"http://wordpress/wp-content/uploads/2018/11/11-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-11-23 08:45:13', '2018-11-23 05:45:13', '', 14, 'http://wordpress/2018/11/23/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-11-23 08:51:38', '2018-11-23 05:51:38', '<em><strong>       6. Продажа бруса для строительства дома.</strong></em>\r\n<em>У ООО «СтройКомфорт» можно приобрести любой брус для строительства, с учетом самых доступных цен. Брус компании это прочный, надежный и крепкий материал, который можно с легкостью использовать для строительства, как одноэтажных зданий, так и многоэтажных, все зависит от предпочтений каждого отдельно взятого человека.</em><img class=\" wp-image-22 aligncenter\" src=\"http://wordpress/wp-content/uploads/2018/11/1-300x300.jpg\" alt=\"\" width=\"206\" height=\"206\" />', '', '', 'trash', 'open', 'open', '', '17__trashed', '', '', '2018-11-23 08:54:54', '2018-11-23 05:54:54', '', 0, 'http://wordpress/?p=17', 0, 'post', '', 0),
(18, 1, '2018-11-23 08:48:47', '2018-11-23 05:48:47', '', 'Брус клееный 850 руб', '', 'inherit', 'open', 'closed', '', '%d0%b1%d1%80%d1%83%d1%81-%d0%ba%d0%bb%d0%b5%d0%b5%d0%bd%d1%8b%d0%b9-850-%d1%80%d1%83%d0%b1', '', '', '2018-11-23 08:48:47', '2018-11-23 05:48:47', '', 17, 'http://wordpress/wp-content/uploads/2018/11/Брус-клееный-850-руб.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-11-23 08:49:15', '2018-11-23 05:49:15', '', 'Брус клееный 850 руб', '', 'inherit', 'open', 'closed', '', '%d0%b1%d1%80%d1%83%d1%81-%d0%ba%d0%bb%d0%b5%d0%b5%d0%bd%d1%8b%d0%b9-850-%d1%80%d1%83%d0%b1-2', '', '', '2018-11-23 08:49:15', '2018-11-23 05:49:15', '', 17, 'http://wordpress/wp-content/uploads/2018/11/Брус-клееный-850-руб-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-11-23 08:50:47', '2018-11-23 05:50:47', '', 'Брус клееный 600 руб', '', 'inherit', 'open', 'closed', '', '%d0%b1%d1%80%d1%83%d1%81-%d0%ba%d0%bb%d0%b5%d0%b5%d0%bd%d1%8b%d0%b9-600-%d1%80%d1%83%d0%b1-2', '', '', '2018-11-23 08:50:47', '2018-11-23 05:50:47', '', 17, 'http://wordpress/wp-content/uploads/2018/11/Брус-клееный-600-руб-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-11-23 08:51:18', '2018-11-23 05:51:18', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-11-23 08:51:18', '2018-11-23 05:51:18', '', 17, 'http://wordpress/wp-content/uploads/2018/11/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-11-23 08:51:38', '2018-11-23 05:51:38', '<em><strong> 6. Продажа бруса для строительства дома.</strong></em>\r\n<em>У ООО «СтройКомфорт» можно приобрести любой брус для строительства, с учетом самых доступных цен. Брус компании это прочный, надежный и крепкий материал, который можно с легкостью использовать для строительства, как одноэтажных зданий, так и многоэтажных, все зависит от предпочтений каждого отдельно взятого человека.</em><img class=\" wp-image-22 aligncenter\" src=\"http://wordpress/wp-content/uploads/2018/11/1-300x300.jpg\" alt=\"\" width=\"206\" height=\"206\" />', '', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-11-23 08:51:38', '2018-11-23 05:51:38', '', 17, 'http://wordpress/2018/11/23/17-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-11-23 08:52:07', '2018-11-23 05:52:07', '<em><strong>       6. Продажа бруса для строительства дома.</strong></em>\r\n<em>У ООО «СтройКомфорт» можно приобрести любой брус для строительства, с учетом самых доступных цен. Брус компании это прочный, надежный и крепкий материал, который можно с легкостью использовать для строительства, как одноэтажных зданий, так и многоэтажных, все зависит от предпочтений каждого отдельно взятого человека.</em><img class=\" wp-image-22 aligncenter\" src=\"http://wordpress/wp-content/uploads/2018/11/1-300x300.jpg\" alt=\"\" width=\"206\" height=\"206\" />', '', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-11-23 08:52:07', '2018-11-23 05:52:07', '', 17, 'http://wordpress/2018/11/23/17-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-11-23 08:52:13', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-23 08:52:13', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=25', 0, 'post', '', 0),
(26, 1, '2018-11-23 08:56:34', '2018-11-23 05:56:34', '<h2 style=\"text-align: center;\"><strong>ООО «СтройКомфорт»</strong></h2>\r\nООО «СтройКомфорт» была основана в 2011 г. в городе мастеров – Туле. Сегодня компания строит деревянные дачные дома и бани в Московской, Тульской, Калужской, Рязанской, Орловской и Липецкой областях.\r\n\r\nОсновная цель деятельности - удовлетворение ростущей потребности российского рынка в быстровозводимых домах для круглогодичного проживания и их строительство по доступным ценам.\r\n\r\nДля этого сотрудники компании «СтройКомфорт» постоянно следят за всеми тенденциями рынка малоэтажного домостроения и стараются подобрать оптимальный проект для каждого клиента.\r\n\r\nНесмотря на молодой возраст компании, опыт и профессиональные знания сотрудников являются большим преимуществом.\r\n\r\nСтроительные бригады формируются из опытных специалистов, поэтому работают они достаточно быстро, качественно и за очень разумные деньги. Строительные бригады — настоящие профессионалы в деле строительства домов из бруса. При строительстве деревянных домов и бань из бруса, используются только качественные, экологически чистые строительные материалы, поэтому в построенных домах безопасно, комфортно и уютно. Помимо этого, осуществляется строительство бань и домов по индивидуальным проектам любой планировки и сложности.\r\n\r\nВ компании работают, как молодые дипломированные специалисты в области проектирования и строительства, так и уже опытные сотрудники, имеющие за плечами огромный опыт советской школы домостроения.\r\n\r\nНа сегодняшний день клиентами компании стали более 1 000 счастливых обладателей домов, бань, пристроек и фундаментов строений. Многие из клиентов поделились положительным отзывом о работе строительных бригад.\r\n\r\nОсновной материал, который использует компания - это доска хвойных пород деревьев, которая закупается у партнеров в Новгородской, Пермской, Кировской областях уже на протяжении 5 лет.\r\n\r\nОсновная миссия компании – максимально полное удовлетворение спроса своих клиентов, желающих создать уютное и практичное интерьерное пространство.\r\n\r\n<img class=\" wp-image-28 aligncenter\" src=\"http://wordpress/wp-content/uploads/2018/11/logo1.png\" alt=\"\" width=\"290\" height=\"145\" />', '', '', 'trash', 'open', 'open', '', '26__trashed', '', '', '2018-11-23 10:50:31', '2018-11-23 07:50:31', '', 0, 'http://wordpress/?p=26', 0, 'post', '', 0),
(27, 1, '2018-11-23 08:56:34', '2018-11-23 05:56:34', '<h2 style=\"text-align: center;\"><strong>ООО «СтройКомфорт»</strong></h2>\r\nООО «СтройКомфорт» была основана в 2011 г. в городе мастеров – Туле. Сегодня компания строит деревянные дачные дома и бани в Московской, Тульской, Калужской, Рязанской, Орловской и Липецкой областях.\r\n\r\nОсновная цель деятельности - удовлетворение ростущей потребности российского рынка в быстровозводимых домах для круглогодичного проживания и их строительство по доступным ценам.\r\n\r\nДля этого сотрудники компании «СтройКомфорт» постоянно следят за всеми тенденциями рынка малоэтажного домостроения и стараются подобрать оптимальный проект для каждого клиента.\r\n\r\nНесмотря на молодой возраст компании, опыт и профессиональные знания сотрудников являются большим преимуществом.\r\n\r\nСтроительные бригады формируются из опытных специалистов, поэтому работают они достаточно быстро, качественно и за очень разумные деньги. Строительные бригады — настоящие профессионалы в деле строительства домов из бруса. При строительстве деревянных домов и бань из бруса, используются только качественные, экологически чистые строительные материалы, поэтому в построенных домах безопасно, комфортно и уютно. Помимо этого, осуществляется строительство бань и домов по индивидуальным проектам любой планировки и сложности.\r\n\r\nВ компании работают, как молодые дипломированные специалисты в области проектирования и строительства, так и уже опытные сотрудники, имеющие за плечами огромный опыт советской школы домостроения.\r\n\r\nНа сегодняшний день клиентами компании стали более 1 000 счастливых обладателей домов, бань, пристроек и фундаментов строений. Многие из клиентов поделились положительным отзывом о работе строительных бригад.\r\n\r\nОсновной материал, который использует компания - это доска хвойных пород деревьев, которая закупается у партнеров в Новгородской, Пермской, Кировской областях уже на протяжении 5 лет.\r\n\r\nОсновная миссия компании – максимально полное удовлетворение спроса своих клиентов, желающих создать уютное и практичное интерьерное пространство.', '', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-11-23 08:56:34', '2018-11-23 05:56:34', '', 26, 'http://wordpress/2018/11/23/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-11-23 09:37:44', '2018-11-23 06:37:44', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2018-11-23 09:37:44', '2018-11-23 06:37:44', '', 26, 'http://wordpress/wp-content/uploads/2018/11/logo1.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2018-11-23 09:38:27', '2018-11-23 06:38:27', '<h2 style=\"text-align: center;\"><strong>ООО «СтройКомфорт»</strong></h2>\r\nООО «СтройКомфорт» была основана в 2011 г. в городе мастеров – Туле. Сегодня компания строит деревянные дачные дома и бани в Московской, Тульской, Калужской, Рязанской, Орловской и Липецкой областях.\r\n\r\nОсновная цель деятельности - удовлетворение ростущей потребности российского рынка в быстровозводимых домах для круглогодичного проживания и их строительство по доступным ценам.\r\n\r\nДля этого сотрудники компании «СтройКомфорт» постоянно следят за всеми тенденциями рынка малоэтажного домостроения и стараются подобрать оптимальный проект для каждого клиента.\r\n\r\nНесмотря на молодой возраст компании, опыт и профессиональные знания сотрудников являются большим преимуществом.\r\n\r\nСтроительные бригады формируются из опытных специалистов, поэтому работают они достаточно быстро, качественно и за очень разумные деньги. Строительные бригады — настоящие профессионалы в деле строительства домов из бруса. При строительстве деревянных домов и бань из бруса, используются только качественные, экологически чистые строительные материалы, поэтому в построенных домах безопасно, комфортно и уютно. Помимо этого, осуществляется строительство бань и домов по индивидуальным проектам любой планировки и сложности.\r\n\r\nВ компании работают, как молодые дипломированные специалисты в области проектирования и строительства, так и уже опытные сотрудники, имеющие за плечами огромный опыт советской школы домостроения.\r\n\r\nНа сегодняшний день клиентами компании стали более 1 000 счастливых обладателей домов, бань, пристроек и фундаментов строений. Многие из клиентов поделились положительным отзывом о работе строительных бригад.\r\n\r\nОсновной материал, который использует компания - это доска хвойных пород деревьев, которая закупается у партнеров в Новгородской, Пермской, Кировской областях уже на протяжении 5 лет.\r\n\r\nОсновная миссия компании – максимально полное удовлетворение спроса своих клиентов, желающих создать уютное и практичное интерьерное пространство.\r\n\r\n<img class=\" wp-image-28 aligncenter\" src=\"http://wordpress/wp-content/uploads/2018/11/logo1.png\" alt=\"\" width=\"290\" height=\"145\" />', '', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-11-23 09:38:27', '2018-11-23 06:38:27', '', 26, 'http://wordpress/2018/11/23/26-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-11-23 09:46:18', '2018-11-23 06:46:18', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-11-23 09:46:18', '2018-11-23 06:46:18', '', 0, 'http://wordpress/wp-content/uploads/2018/11/logo.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2018-11-23 09:46:32', '2018-11-23 06:46:32', 'http://wordpress/wp-content/uploads/2018/11/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2018-11-23 09:46:32', '2018-11-23 06:46:32', '', 0, 'http://wordpress/wp-content/uploads/2018/11/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2018-11-23 09:50:23', '2018-11-23 06:50:23', '{\n    \"deck::custom_logo\": {\n        \"value\": 31,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:47:34\"\n    },\n    \"deck::background_color\": {\n        \"value\": \"#5e5e5e\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:48:34\"\n    },\n    \"deck::dp_link_accent_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:47:34\"\n    },\n    \"deck::dp_blog_layout\": {\n        \"value\": \"blogwide\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:48:34\"\n    },\n    \"deck::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:50:23\"\n    },\n    \"deck::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:50:23\"\n    },\n    \"deck::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:50:23\"\n    },\n    \"deck::background_preset\": {\n        \"value\": \"fit\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:50:23\"\n    },\n    \"deck::background_size\": {\n        \"value\": \"contain\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:50:23\"\n    },\n    \"deck::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:50:23\"\n    },\n    \"deck::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:50:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '29613683-481a-4d4b-a391-f12271546ca6', '', '', '2018-11-23 09:50:23', '2018-11-23 06:50:23', '', 0, 'http://wordpress/?p=32', 0, 'customize_changeset', '', 0),
(33, 1, '2018-11-23 09:49:17', '2018-11-23 06:49:17', '', '14', '', 'inherit', 'open', 'closed', '', '14', '', '', '2018-11-23 10:03:26', '2018-11-23 07:03:26', '', 36, 'http://wordpress/wp-content/uploads/2018/11/14.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-11-23 09:54:21', '2018-11-23 06:54:21', '{\n    \"hiero::site_logo\": {\n        \"value\": \"http://wordpress/wp-content/uploads/2018/11/logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:54:21\"\n    },\n    \"hiero::site_favicon\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:54:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b32e585c-37e8-459b-9fcf-8e1e8445c8c1', '', '', '2018-11-23 09:54:21', '2018-11-23 06:54:21', '', 0, 'http://wordpress/2018/11/23/b32e585c-37e8-459b-9fcf-8e1e8445c8c1/', 0, 'customize_changeset', '', 0),
(35, 1, '2018-11-23 09:56:48', '2018-11-23 06:56:48', '{\n    \"hiero::main_color\": {\n        \"value\": \"#ff0000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:55:45\"\n    },\n    \"hiero::site_desc\": {\n        \"value\": \"#f40000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:55:45\"\n    },\n    \"hiero::entry_title\": {\n        \"value\": \"#f40000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:55:45\"\n    },\n    \"hiero::body_text\": {\n        \"value\": \"#0a0a0a\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:55:45\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:56:48\"\n    },\n    \"hiero::site_title\": {\n        \"value\": \"#161616\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 06:56:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9944f0b4-688a-4cff-8ce8-7b62fe621edc', '', '', '2018-11-23 09:56:48', '2018-11-23 06:56:48', '', 0, 'http://wordpress/?p=35', 0, 'customize_changeset', '', 0),
(36, 1, '2018-11-23 09:59:37', '2018-11-23 06:59:37', '<p>\r\n	В ООО &quot;СтройКомфорт&quot;представлен большой ассортимент продукции, завоевавших отличную репутацию на рынке. которые имеются в продаже, производятся в соответствии с государственными стандартами.\r\n</p>\r\n\r\n<p>\r\n	В наличии большие запасы строительных материалов, готовых к отправке в любой день. Поэтому у клиентов есть возможность приобрести стройматериалы оптом и в розницу, в любых объемах.\r\n</p>\r\n\r\n<p>\r\n	<strong>ВЫГОДНЫЕ УСЛОВИЯ СОТРУДНИЧЕСТВА</strong>\r\n</p>\r\n\r\n<p>\r\n	С компанией сотрудничают по многим причинам:\r\n</p>\r\n\r\n<p>\r\n	Мы занимаемся строительством и ремонтом загородных домов с гарантией качества!\r\n</p>\r\n\r\n<p>\r\n	Наличие партнерского производства позволяет осуществлять закупки надежных стройматериалов по низким ценам.\r\n</p>\r\n\r\n<p>\r\n	ООО &quot;СтройКомфорт&quot; сотрудничаем с ведущими поставщиками, которые выпускают экологически чистую продукцию.\r\n</p>\r\n\r\n<p>\r\n	Компания возводит дома в соответствии с установленным графиком работ. График согласовывается на этапе подписания договора. Каждую неделю постройки проверят инженеры или прорабы;\r\n</p>\r\n\r\n<p>\r\n	Сотрудники &laquo;Стройкомфорт&raquo; &ndash; квалифицированные специалисты, которые прошли специальную подготовку и имеют за плечами большой опыт. Они постоянно повышают свою квалификацию, обучаясь новейшим строительным технологиям.<br />\r\n	Для сокращения сроков работы, регулярно обновляется парк спецтехники;\r\n</p>\r\n\r\n<p>\r\n	Доступные цены. Обозначенная стоимость работ остается неизменной на протяжении всего процесса строительства;\r\n</p>\r\n\r\n<p>\r\n	Каждый объект, возведенный специалистами ООО &quot;СтройКомфорт, продуман до мелочей и соответствует европейским стандартам качества!\r\n</p>\r\n\r\n<p>\r\n	удобное оформление заказа.<br />\r\n	Заказ строительных материалов занимает всего несколько мину\r\n</p>\r\n\r\n<p>\r\n	ООО &laquo;Стройкомфорт&raquo; &mdash; это выбор тысячи жильцов коттеджных поселков!\r\n</p>\r\n\r\n<p>\r\n	<img alt=\"\" class=\"wp-image-33 aligncenter\" height=\"258\" src=\"http://wordpress/wp-content/uploads/2018/11/14-300x169.jpg\" width=\"458\" />\r\n</p>\r\n', 'О компании', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%b3%d0%be%d0%b2%d0%be%d1%80', '', '', '2018-11-23 10:55:15', '2018-11-23 07:55:15', '', 0, 'http://wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-11-23 09:59:37', '2018-11-23 06:59:37', 'В ООО \"СтройКомфорт\"представлен большой ассортимент продукции, завоевавших отличную репутацию на рынке. которые имеются в продаже, производятся в соответствии с государственными стандартами.\r\n\r\nВ наличии большие запасы строительных материалов, готовых к отправке в любой день. Поэтому у клиентов есть возможность приобрести стройматериалы оптом и в розницу, в любых объемах.\r\n\r\nВЫГОДНЫЕ УСЛОВИЯ СОТРУДНИЧЕСТВА\r\n\r\nС компанией сотрудничают по многим причинам:\r\n\r\nМы занимаемся строительством и ремонтом загородных домов с гарантией качества!\r\n\r\nНаличие партнерского производства позволяет осуществлять закупки надежных стройматериалов по низким ценам.\r\n\r\nООО \"СтройКомфорт\" сотрудничаем с ведущими поставщиками, которые выпускают экологически чистую продукцию.\r\n\r\nКомпания возводит дома в соответствии с установленным графиком работ. График согласовывается на этапе подписания договора. Каждую неделю постройки проверят инженеры или прорабы;\r\n\r\nСотрудники «Стройкомфорт» – квалифицированные специалисты, которые прошли специальную подготовку и имеют за плечами большой опыт. Они постоянно повышают свою квалификацию, обучаясь новейшим строительным технологиям.\r\nДля сокращения сроков работы, регулярно обновляется парк спецтехники;\r\n\r\nДоступные цены. Обозначенная стоимость работ остается неизменной на протяжении всего процесса строительства;\r\n\r\nКаждый объект, возведенный специалистами ООО \"СтройКомфорт, продуман до мелочей и соответствует европейским стандартам качества!\r\n\r\nудобное оформление заказа.\r\nЗаказ строительных материалов занимает всего несколько мину\r\n\r\nООО «Стройкомфорт» — это выбор тысячи жильцов коттеджных поселков!', 'Договор', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-11-23 09:59:37', '2018-11-23 06:59:37', '', 36, 'http://wordpress/2018/11/23/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-11-23 10:00:45', '2018-11-23 07:00:45', 'В ООО \"СтройКомфорт\"представлен большой ассортимент продукции, завоевавших отличную репутацию на рынке. которые имеются в продаже, производятся в соответствии с государственными стандартами.\r\n\r\nВ наличии большие запасы строительных материалов, готовых к отправке в любой день. Поэтому у клиентов есть возможность приобрести стройматериалы оптом и в розницу, в любых объемах.\r\n\r\nВЫГОДНЫЕ УСЛОВИЯ СОТРУДНИЧЕСТВА\r\n\r\nС компанией сотрудничают по многим причинам:\r\n\r\nМы занимаемся строительством и ремонтом загородных домов с гарантией качества!\r\n\r\nНаличие партнерского производства позволяет осуществлять закупки надежных стройматериалов по низким ценам.\r\n\r\nООО \"СтройКомфорт\" сотрудничаем с ведущими поставщиками, которые выпускают экологически чистую продукцию.\r\n\r\nКомпания возводит дома в соответствии с установленным графиком работ. График согласовывается на этапе подписания договора. Каждую неделю постройки проверят инженеры или прорабы;\r\n\r\nСотрудники «Стройкомфорт» – квалифицированные специалисты, которые прошли специальную подготовку и имеют за плечами большой опыт. Они постоянно повышают свою квалификацию, обучаясь новейшим строительным технологиям.\r\nДля сокращения сроков работы, регулярно обновляется парк спецтехники;\r\n\r\nДоступные цены. Обозначенная стоимость работ остается неизменной на протяжении всего процесса строительства;\r\n\r\nКаждый объект, возведенный специалистами ООО \"СтройКомфорт, продуман до мелочей и соответствует европейским стандартам качества!\r\n\r\nудобное оформление заказа.\r\nЗаказ строительных материалов занимает всего несколько мину\r\n\r\nООО «Стройкомфорт» — это выбор тысячи жильцов коттеджных поселков!', 'О компании', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-11-23 10:00:45', '2018-11-23 07:00:45', '', 36, 'http://wordpress/2018/11/23/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-11-23 10:02:01', '2018-11-23 07:02:01', '{\n    \"hiero::site_desc\": {\n        \"value\": \"#0a0007\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 07:02:01\"\n    },\n    \"hiero::entry_title\": {\n        \"value\": \"#0a0002\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 07:02:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5c7a162b-395e-43c6-a504-4f16250c5472', '', '', '2018-11-23 10:02:01', '2018-11-23 07:02:01', '', 0, 'http://wordpress/2018/11/23/5c7a162b-395e-43c6-a504-4f16250c5472/', 0, 'customize_changeset', '', 0),
(40, 1, '2018-11-23 10:02:49', '2018-11-23 07:02:49', '<h2>Кто мы</h2><p>Наш адрес сайта: http://wordpress.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-11-23 10:02:49', '2018-11-23 07:02:49', '', 3, 'http://wordpress/2018/11/23/3-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-11-23 10:03:02', '2018-11-23 07:03:02', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://wordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-11-23 10:03:02', '2018-11-23 07:03:02', '', 2, 'http://wordpress/2018/11/23/2-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-11-23 10:04:03', '2018-11-23 07:04:03', 'В ООО \"СтройКомфорт\"представлен большой ассортимент продукции, завоевавших отличную репутацию на рынке. которые имеются в продаже, производятся в соответствии с государственными стандартами.\r\n\r\nВ наличии большие запасы строительных материалов, готовых к отправке в любой день. Поэтому у клиентов есть возможность приобрести стройматериалы оптом и в розницу, в любых объемах.\r\n\r\nВЫГОДНЫЕ УСЛОВИЯ СОТРУДНИЧЕСТВА\r\n\r\nС компанией сотрудничают по многим причинам:\r\n\r\nМы занимаемся строительством и ремонтом загородных домов с гарантией качества!\r\n\r\nНаличие партнерского производства позволяет осуществлять закупки надежных стройматериалов по низким ценам.\r\n\r\nООО \"СтройКомфорт\" сотрудничаем с ведущими поставщиками, которые выпускают экологически чистую продукцию.\r\n\r\nКомпания возводит дома в соответствии с установленным графиком работ. График согласовывается на этапе подписания договора. Каждую неделю постройки проверят инженеры или прорабы;\r\n\r\nСотрудники «Стройкомфорт» – квалифицированные специалисты, которые прошли специальную подготовку и имеют за плечами большой опыт. Они постоянно повышают свою квалификацию, обучаясь новейшим строительным технологиям.\r\nДля сокращения сроков работы, регулярно обновляется парк спецтехники;\r\n\r\nДоступные цены. Обозначенная стоимость работ остается неизменной на протяжении всего процесса строительства;\r\n\r\nКаждый объект, возведенный специалистами ООО \"СтройКомфорт, продуман до мелочей и соответствует европейским стандартам качества!\r\n\r\nудобное оформление заказа.\r\nЗаказ строительных материалов занимает всего несколько мину\r\n\r\nООО «Стройкомфорт» — это выбор тысячи жильцов коттеджных поселков!\r\n\r\n<img class=\" wp-image-33 aligncenter\" src=\"http://wordpress/wp-content/uploads/2018/11/14-300x169.jpg\" alt=\"\" width=\"458\" height=\"258\" />', 'О компании', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-11-23 10:04:03', '2018-11-23 07:04:03', '', 36, 'http://wordpress/2018/11/23/36-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(49, 1, '2018-11-23 10:13:58', '2018-11-23 07:13:58', '<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Настоящее пользовательское соглашение, далее &quot;Соглашение&quot;, заключается между Интернет-магазином, далее &quot;Интернет-магазин&quot; или &quot;Сайт&quot;, и пользователем услуг Интернет-магазина, далее &quot;Покупатель&quot;, и определяет условия приобретения товаров через Сайт.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;1.Основные положения</strong><br />\r\n	1.1. Настоящее Соглашение заключается между Покупателем и Интернет-магазинов момент оформления заказа. Покупатель подтверждает свое согласие с условиями, установленными настоящим Соглашением, путем проставления отметки в графе &quot;Я согласен с правилами магазина&quot; при оформлении заказа.&nbsp;<br />\r\n	1.2. Настоящие Соглашение, а также информация о товаре, представленная на Сайте, являются публичной офертой в соответствии со ст.435 и &nbsp;ч.2 ст.437 ГК РФ.&nbsp;<br />\r\n	1.3. К отношениям между Покупателем и Интернет-магазином применяются положения ГК РФ о продажи товаров дистанционным способом (ст.497 Федерального закона РФ от 25.10.2007 N 234-ФЗ ), &nbsp;а также Закон РФ &laquo;О защите прав потребителей&raquo; от 07.02.1992 № 2300-1 и иные правовые акты, принятые в соответствии с ними.&nbsp;<br />\r\n	1.4. Покупателем может быть любое физическое или юридическое лицо, способное принять и оплатить заказанный им товар в порядке и на условиях, установленныx настоящим Соглашением, на территории Российской Федерации.&nbsp;<br />\r\n	1.5. Интернет-магазин оставляет за собой право вносить изменения в настоящее Соглашение.&nbsp;<br />\r\n	1.6. Настоящее Соглашение должно рассматриваться в том виде, как оно опубликовано на Сайте, и должно применяться и толковаться в соответствии с законодательством Российской Федерации.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;2. Информация о товаре</strong><br />\r\n	2.1. Товар представлен на Сайте через фото-образцы, являющиеся собственностью Интернет-магазина.&nbsp;<br />\r\n	2.2. Каждый фото-образец сопровождается текстовой информацией: артикулом, ценой и описанием товара.&nbsp;<br />\r\n	2.3. По просьбе Покупателя менеджер Интернет-магазина обязан предоставить (по телефону или посредством электронной почты) прочую информацию, необходимую и достаточную, с точки зрения Покупателя, для принятия им решения о покупке товара.&nbsp;<br />\r\n	2.4. Указанная на Сайте цена товара может быть изменена Интернет-магазином в одностороннем порядке. &nbsp;<br />\r\n	2.5. В случае изменения цены товара, заказанного Покупателем, менеджер Интернет-магазина при первой возможности информирует об этом Покупателя (по телефону или посредством электронной почты) для получения подтверждения либо аннулирования заказа. При невозможности связаться с Покупателем данный заказ считается аннулированным.&nbsp;<br />\r\n	2.6 Все размеры обуви указы в европейской размерной сетке.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;3. Порядок приобретения товара</strong><br />\r\n	3.1. Покупатель вправе оформить заказ на любой товар, представленный на Сайте. Каждый товар может быть заказан в любом количестве при условии, что заказано будет не более 2-х единиц одной категории. Заказ может быть оформлен Покупателем следующим способом: самостоятельно на Сайте.&nbsp;<br />\r\n	3.2. После оформления заказа на e-mail Покупателя отправляется письмо, подтверждающее принятие заказа, с указанием наименований выбранных товаров и общей суммы заказа, являющийся неотъемлемой частью настоящего Соглашения. Далее менеджер Интернет-магазина связывается с Покупателем &nbsp;(по телефону или посредством электронной почты) для получения подтверждения заказа.&nbsp;<br />\r\n	3.3. При отсутствии товара на складе менеджер Интернет-магазина обязан поставить в известность об этом Покупателя (по телефону или посредством электронной почты).&nbsp;<br />\r\n	3.4. При отсутствии товара Покупатель вправе заменить его другим товаром либо аннулировать заказ.&nbsp;<br />\r\n	3.6. Покупатель вправе отказаться от заказанного товара в любое время до его отправки Покупателю, заблаговременно (но не позднее чем за 12 часов до времени доставки) поставив в известность об этом Интернет-магазин (по телефону или посредством электронной почты).&nbsp;<br />\r\n	3.7. Покупатель вправе отказаться от заказанного товара и вернуть его курьеру в момент его получения, если ему не подошел размер, цвет или по любым другим причинам.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;4. Доставка и приемка-передача товара</strong><br />\r\n	4.1. Доставка товара, заказанного в Интернет-магазине, в согласованном количестве и ассортименте, осуществляется службой доставки по территории города Москвы и Московской области, а так же в другие города Российской Федерации.&nbsp;<br />\r\n	4.2. Расходы по доставке товара оплачиваются Покупателем по тарифам, указанным на Сайте в разделе &laquo;Оплата&raquo; и &laquo;Доставка&raquo; .&nbsp;<br />\r\n	4.4. Отправка и доставка заказанного товара производится в оговоренные с Покупателем сроки.&nbsp;<br />\r\n	4.5. Покупатель обязан в присутствии курьера Интернет-магазина произвести приемку заказанного товара по количеству, качеству, ассортименту и комплектности товара. &nbsp;<br />\r\n	4.6. Фактом приемки товара Покупателем является оплата товара (оплата общей суммы заказа и суммы расходов по доставке товара Покупателю).\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;5. Оплата товара</strong><br />\r\n	5.1. Способы оплаты товара указаны на Сайте в разделе &quot;Оплата&quot; и &quot;Доставка&quot;.&nbsp;<br />\r\n	5.2. При &nbsp;расчете Покупатель оплачивает товар путем передачи денег представителю Интернет-магазина в лице курьера службы доставки.&nbsp;<br />\r\n	5.3. Товар оплачивается только в рублях.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;6. Возврат товара</strong><br />\r\n	6.1. Покупатель вправе отказаться от товара после его получения в течение семи дней. Возврат товара надлежащего качества возможен в случае, если сохранены его товарный вид, потребительские свойства, а также документ, подтверждающий факт и условия покупки указанного товара (товарная накладная, кассовый чек). В течение этого периода Покупатель обязан известить менеджера магазина письменно &nbsp;или по телефону +7 (123) 456-78-90 о желании вернуть товар.&nbsp;<br />\r\n	6.2. Покупатель не вправе отказаться от товара надлежащего качества, имеющего индивидуально-определенные свойства, если указанный товар может быть использован исключительно приобретающим его Покупателем.&nbsp;<br />\r\n	6.3. При отказе Покупателя от товара Интернет-магазин возвращает ему денежную сумму, уплаченную за товар, за вычетом суммы расходов Интернет-магазина, связанных с доставкой товара Покупателю и вывозом товара от Покупателя, не позднее, чем через десять дней со дня предъявления Покупателем соответствующего требования.&nbsp;<br />\r\n	6.4. Товар ненадлежащего качества может быть заменен на аналогичный товар надлежащего качества, либо возвращен Продавцу, в данном случае доставку товара оплачивает Продавец.&nbsp;<br />\r\n	6.5 Товар приобретенный во время акции 1+1=1, 50% на второй товар и т.п., должен быть возвращен полным чеком.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;7. Прочее</strong><br />\r\n	7.1. Интернет-магазин оставляет за собой право расширять и сокращать товарное предложение на Сайте, регулировать доступ к покупке любых товаров, а также приостанавливать или прекращать продажу любых товаров по своему собственному усмотрению.&nbsp;<br />\r\n	7.2. Интернет-магазин вправе проводить специальные акции.&nbsp;<br />\r\n	7.3. В соответствии с Федеральным законом &laquo;О персональных данных&raquo;, размещая заказ, Вы даете согласие Интернет-магазину на обработку &nbsp;своих персональных данных в целях рассылки информации и продвижения товаров на рынке, без ограничения срока. Указанное согласие может быть отозвано Вами путём направления письменного уведомления. В этом случае Ваши персональные данные будут уничтожены, а их обработка прекращена в течение 7 рабочих дней с даты получения нами уведомления.&nbsp;<br />\r\n	7.4. Продавец обязуется соблюдать конфиденциальность в отношении персональных данных Покупателя, а также иной информации о Покупателе, ставшей известной Продавцу в связи с исполнением настоящего Соглашения, за исключением случаев, когда такая информация:<br />\r\n	является общедоступной;<br />\r\n	раскрыта по требованию или с разрешения Покупателя;<br />\r\n	требует раскрытия по основаниям, предусмотренным законодательством, или при поступлении соответствующих запросов суда или уполномоченных государственных органов;<br />\r\n	раскрыта по иным основаниям, предусмотренным соглашением Сторон.<br />\r\n	7.5. Продавец вправе в одностороннем порядке вносить изменения в Соглашение путем публикации изменений на Сайте, если иное не предусмотрено новой редакцией Соглашения.&nbsp;<br />\r\n	7.6. Соглашение является юридически обязывающим договором между Покупателем и Продавцом содержит правила совершения покупок в Интернет-магазине.&nbsp;<br />\r\n	7.7. Данный договор считается заключенным с момента выдачи продавцом покупателю кассового или товарного чека, либо иного документа, подтверждающего оплату товара, или с момента получения продавцом сообщения о намерении приобрести товар.<br />\r\n	&nbsp;\r\n</p>\r\n', 'Договор', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%b3%d0%be%d0%b2%d0%be%d1%80-2', '', '', '2018-11-23 10:47:13', '2018-11-23 07:47:13', '', 0, 'http://wordpress/?page_id=49', 0, 'page', '', 0),
(50, 1, '2018-11-23 10:13:58', '2018-11-23 07:13:58', '<p>\r\n	Настоящее пользовательское соглашение, далее &quot;Соглашение&quot;, заключается между Интернет-магазином, далее &quot;Интернет-магазин&quot; или &quot;Сайт&quot;, и пользователем услуг Интернет-магазина, далее &quot;Покупатель&quot;, и определяет условия приобретения товаров через Сайт.\r\n</p>\r\n\r\n<p>\r\n	<strong>1.Основные положения</strong><br />\r\n	1.1. Настоящее Соглашение заключается между Покупателем и Интернет-магазинов момент оформления заказа. Покупатель подтверждает свое согласие с условиями, установленными настоящим Соглашением, путем проставления отметки в графе &quot;Я согласен с правилами магазина&quot; при оформлении заказа.&nbsp;<br />\r\n	1.2. Настоящие Соглашение, а также информация о товаре, представленная на Сайте, являются публичной офертой в соответствии со ст.435 и &nbsp;ч.2 ст.437 ГК РФ.&nbsp;<br />\r\n	1.3. К отношениям между Покупателем и Интернет-магазином применяются положения ГК РФ о продажи товаров дистанционным способом (ст.497 Федерального закона РФ от 25.10.2007 N 234-ФЗ ), &nbsp;а также Закон РФ &laquo;О защите прав потребителей&raquo; от 07.02.1992 № 2300-1 и иные правовые акты, принятые в соответствии с ними.&nbsp;<br />\r\n	1.4. Покупателем может быть любое физическое или юридическое лицо, способное принять и оплатить заказанный им товар в порядке и на условиях, установленныx настоящим Соглашением, на территории Российской Федерации.&nbsp;<br />\r\n	1.5. Интернет-магазин оставляет за собой право вносить изменения в настоящее Соглашение.&nbsp;<br />\r\n	1.6. Настоящее Соглашение должно рассматриваться в том виде, как оно опубликовано на Сайте, и должно применяться и толковаться в соответствии с законодательством Российской Федерации.\r\n</p>\r\n\r\n<p>\r\n	<strong>2. Информация о товаре</strong><br />\r\n	2.1. Товар представлен на Сайте через фото-образцы, являющиеся собственностью Интернет-магазина.&nbsp;<br />\r\n	2.2. Каждый фото-образец сопровождается текстовой информацией: артикулом, ценой и описанием товара.&nbsp;<br />\r\n	2.3. По просьбе Покупателя менеджер Интернет-магазина обязан предоставить (по телефону или посредством электронной почты) прочую информацию, необходимую и достаточную, с точки зрения Покупателя, для принятия им решения о покупке товара.&nbsp;<br />\r\n	2.4. Указанная на Сайте цена товара может быть изменена Интернет-магазином в одностороннем порядке. &nbsp;<br />\r\n	2.5. В случае изменения цены товара, заказанного Покупателем, менеджер Интернет-магазина при первой возможности информирует об этом Покупателя (по телефону или посредством электронной почты) для получения подтверждения либо аннулирования заказа. При невозможности связаться с Покупателем данный заказ считается аннулированным.&nbsp;<br />\r\n	2.6 Все размеры обуви указы в европейской размерной сетке.\r\n</p>\r\n\r\n<p>\r\n	<strong>3. Порядок приобретения товара</strong><br />\r\n	3.1. Покупатель вправе оформить заказ на любой товар, представленный на Сайте. Каждый товар может быть заказан в любом количестве при условии, что заказано будет не более 2-х единиц одной категории. Заказ может быть оформлен Покупателем следующим способом: самостоятельно на Сайте.&nbsp;<br />\r\n	3.2. После оформления заказа на e-mail Покупателя отправляется письмо, подтверждающее принятие заказа, с указанием наименований выбранных товаров и общей суммы заказа, являющийся неотъемлемой частью настоящего Соглашения. Далее менеджер Интернет-магазина связывается с Покупателем &nbsp;(по телефону или посредством электронной почты) для получения подтверждения заказа.&nbsp;<br />\r\n	3.3. При отсутствии товара на складе менеджер Интернет-магазина обязан поставить в известность об этом Покупателя (по телефону или посредством электронной почты).&nbsp;<br />\r\n	3.4. При отсутствии товара Покупатель вправе заменить его другим товаром либо аннулировать заказ.&nbsp;<br />\r\n	3.6. Покупатель вправе отказаться от заказанного товара в любое время до его отправки Покупателю, заблаговременно (но не позднее чем за 12 часов до времени доставки) поставив в известность об этом Интернет-магазин (по телефону или посредством электронной почты).&nbsp;<br />\r\n	3.7. Покупатель вправе отказаться от заказанного товара и вернуть его курьеру в момент его получения, если ему не подошел размер, цвет или по любым другим причинам.\r\n</p>\r\n\r\n<p>\r\n	<strong>4. Доставка и приемка-передача товара</strong><br />\r\n	4.1. Доставка товара, заказанного в Интернет-магазине, в согласованном количестве и ассортименте, осуществляется службой доставки по территории города Москвы и Московской области, а так же в другие города Российской Федерации.&nbsp;<br />\r\n	4.2. Расходы по доставке товара оплачиваются Покупателем по тарифам, указанным на Сайте в разделе &laquo;Оплата&raquo; и &laquo;Доставка&raquo; .&nbsp;<br />\r\n	4.4. Отправка и доставка заказанного товара производится в оговоренные с Покупателем сроки.&nbsp;<br />\r\n	4.5. Покупатель обязан в присутствии курьера Интернет-магазина произвести приемку заказанного товара по количеству, качеству, ассортименту и комплектности товара. &nbsp;<br />\r\n	4.6. Фактом приемки товара Покупателем является оплата товара (оплата общей суммы заказа и суммы расходов по доставке товара Покупателю).\r\n</p>\r\n\r\n<p>\r\n	<strong>5. Оплата товара</strong><br />\r\n	5.1. Способы оплаты товара указаны на Сайте в разделе &quot;Оплата&quot; и &quot;Доставка&quot;.&nbsp;<br />\r\n	5.2. При &nbsp;расчете Покупатель оплачивает товар путем передачи денег представителю Интернет-магазина в лице курьера службы доставки.&nbsp;<br />\r\n	5.3. Товар оплачивается только в рублях.\r\n</p>\r\n\r\n<p>\r\n	<strong>6. Возврат товара</strong><br />\r\n	6.1. Покупатель вправе отказаться от товара после его получения в течение семи дней. Возврат товара надлежащего качества возможен в случае, если сохранены его товарный вид, потребительские свойства, а также документ, подтверждающий факт и условия покупки указанного товара (товарная накладная, кассовый чек). В течение этого периода Покупатель обязан известить менеджера магазина письменно &nbsp;или по телефону +7 (123) 456-78-90 о желании вернуть товар.&nbsp;<br />\r\n	6.2. Покупатель не вправе отказаться от товара надлежащего качества, имеющего индивидуально-определенные свойства, если указанный товар может быть использован исключительно приобретающим его Покупателем.&nbsp;<br />\r\n	6.3. При отказе Покупателя от товара Интернет-магазин возвращает ему денежную сумму, уплаченную за товар, за вычетом суммы расходов Интернет-магазина, связанных с доставкой товара Покупателю и вывозом товара от Покупателя, не позднее, чем через десять дней со дня предъявления Покупателем соответствующего требования.&nbsp;<br />\r\n	6.4. Товар ненадлежащего качества может быть заменен на аналогичный товар надлежащего качества, либо возвращен Продавцу, в данном случае доставку товара оплачивает Продавец.&nbsp;<br />\r\n	6.5 Товар приобретенный во время акции 1+1=1, 50% на второй товар и т.п., должен быть возвращен полным чеком.\r\n</p>\r\n\r\n<p>\r\n	<strong>7. Прочее</strong><br />\r\n	7.1. Интернет-магазин оставляет за собой право расширять и сокращать товарное предложение на Сайте, регулировать доступ к покупке любых товаров, а также приостанавливать или прекращать продажу любых товаров по своему собственному усмотрению.&nbsp;<br />\r\n	7.2. Интернет-магазин вправе проводить специальные акции.&nbsp;<br />\r\n	7.3. В соответствии с Федеральным законом &laquo;О персональных данных&raquo;, размещая заказ, Вы даете согласие Интернет-магазину на обработку &nbsp;своих персональных данных в целях рассылки информации и продвижения товаров на рынке, без ограничения срока. Указанное согласие может быть отозвано Вами путём направления письменного уведомления. В этом случае Ваши персональные данные будут уничтожены, а их обработка прекращена в течение 7 рабочих дней с даты получения нами уведомления.&nbsp;<br />\r\n	7.4. Продавец обязуется соблюдать конфиденциальность в отношении персональных данных Покупателя, а также иной информации о Покупателе, ставшей известной Продавцу в связи с исполнением настоящего Соглашения, за исключением случаев, когда такая информация:<br />\r\n	является общедоступной;<br />\r\n	раскрыта по требованию или с разрешения Покупателя;<br />\r\n	требует раскрытия по основаниям, предусмотренным законодательством, или при поступлении соответствующих запросов суда или уполномоченных государственных органов;<br />\r\n	раскрыта по иным основаниям, предусмотренным соглашением Сторон.<br />\r\n	7.5. Продавец вправе в одностороннем порядке вносить изменения в Соглашение путем публикации изменений на Сайте, если иное не предусмотрено новой редакцией Соглашения.&nbsp;<br />\r\n	7.6. Соглашение является юридически обязывающим договором между Покупателем и Продавцом содержит правила совершения покупок в Интернет-магазине.&nbsp;<br />\r\n	7.7. Данный договор считается заключенным с момента выдачи продавцом покупателю кассового или товарного чека, либо иного документа, подтверждающего оплату товара, или с момента получения продавцом сообщения о намерении приобрести товар.<br />\r\n	&nbsp;\r\n</p>\r\n', 'Договор', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-11-23 10:13:58', '2018-11-23 07:13:58', '', 49, 'http://wordpress/2018/11/23/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-11-23 10:22:59', '2018-11-23 07:22:59', '<h2 style=\"text-align: center;\">\r\n	<strong>Дома из бруса.</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Дома из бруса обладают главным достоинством &ndash; они способны &laquo;дышать&raquo; и удерживать тепло лучше, чем дома, построенные из камня. В таких домах создаётся более благоприятный для человека микроклимат. Дома из клееного бруса, или дома из соснового прорфилированного бруса неоспоримо, имеют очень красивый вид. Однако вышеупомянутые достоинства свойственны только правильно спроектированным и построенным домам из бруса, а также соответствующим всем требованиям к проектированию и возведению таких строений.<br />\r\n	&nbsp; &nbsp;Строительство брусовых домов под ключ предполагает применение хвойных пород: ели, лиственницы, сосны, пихты, кедра. А несущие конструкции создают из более подходящих для этого пород - сосны и лиственницы, которые в отличие от пихты и ели подвержены гниению в меньшей степени. В Европе самым доступным и распространённым строительным материалом стала сосна. Лиственные породы дерева используются нечасто, из них предпочтение отдаётся дубу, буку, берёзе, ясеню, осине.<br />\r\n	&nbsp; &nbsp;Древесина по своей структуре &ndash; это природный полимер, он образуется клетками-волокнами, которые направлены вдоль ствола дерева и обладают трубчатой формой. Поэтому ей свойственен целый ряд достоинств: исключительно высокая прочность, упругость, низкая теплопроводность, устойчивость к химическим агрессивным средам, низкая плотность и вес, природная декоративность и, что немаловажно, простата обработки и монтажа. Отдельно стоит отметить низкую теплопроводность дерева, так как чем ниже её значение, тем теплее будет в доме зимой, и прохладнее летом.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-52\" height=\"206\" src=\"http://wordpress/wp-content/uploads/2018/11/11-1-300x206.jpg\" width=\"300\" />\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong>Дома из клееного бруса.</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Это на сегодняшний день самый оптимальный вариант для всех тех, кто мечтает о собственном уютном жилье. Использование при строительстве деревянных домов такого строительного материала, как клееный брус, придает дому или бане очень привлекательный и достаточно оригинальный внешний вид. Все дома из клееного бруса очень эффектно выделяются на фоне всех других построек.<br />\r\n	&nbsp; &nbsp;Клееный брус не подвергаются дальнейшей деформации в ходе их эксплуатации. Помимо этого, он не пропускают влагу и имеют пониженную теплопроводность. Все эти факторы, без сомнений, ведут к формированию комфортного и благоприятного микроклимата в доме из клееного бруса, а так же повышают интерес к использованию бруса в качестве основного строительного материала.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-54\" height=\"200\" src=\"http://wordpress/wp-content/uploads/2018/11/21-300x200.jpg\" width=\"300\" />\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<br />\r\n	<strong>Дома из профилированного бруса.</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Профилированный брус позволяет немедленно приступить к строительным работам по возведению дома или бани, при условии готовности фундамента. Профилированный клееный брус производится из хвойных пород дерева, которые дают незначительную усадку в течение первого полугодия. Построенные таким образом деревянные дома без каких либо проблем переносят естественную минимальную деформацию фундамента и срок их эксплуатации превышает 150 лет.<br />\r\n	&nbsp; &nbsp;Дома из профилированного бруса уже давно зарекомендовали себя с самых лучших сторон в условиях средней полосы, т.к. они обладают такими качествами как прочность, долговечность и имеют сравнительно низкую стоимость строительства. Дома из клееного бруса используют как в качестве летних дачных домов, так и для постоянного проживания. Так же не забываем о том, что деревянные дома из бруса строятся очень быстро и готовы для проживания сразу после окончания строительства.<br />\r\n	&nbsp; &nbsp;Отделка дома из профилированного бруса не отнимает много времени и отличается своей дешевизной, так как профилированный брус превосходно смотрится как снаружи, так и изнутри дома или бани. Несомненно, городские жители хотят свои загородные дома снабдить всеми современными удобствами и возможными коммуникациями.<br />\r\n	&nbsp; &nbsp;Необходимо отметить, что именно дома из профилированного бруса позволяют очень быстро и достаточно эффективно воплотить все задуманные действия: провести все внутренние коммуникации: водопровод, канализацию, отопление, а так же сделать монтаж теплых полов, и пр. Дома из бруса отличаются большим разнообразием форм, планировок и размеров, и при этом для них не требуется возводить какой либо сложный и дорогой фундамент.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-55\" height=\"225\" src=\"http://wordpress/wp-content/uploads/2018/11/31-300x225.jpg\" width=\"300\" />\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong>Каркасные дома.</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Современные технологии строительства каркасных домов позволяют возводить строения, не уступающие домам из кирпича или бетона как в надежности, так в прочности и долговечности. При этом каркасные дома и каркасное строительство по типовым проектам имеют целый ряд преимуществ, таких как:<br />\r\n	&nbsp; &nbsp;Высокая скорость возведения дома и относительно малая стоимость строительных работ.<br />\r\n	&nbsp; &nbsp;Малая вероятность того, что дом будет поврежден, вследствие конструктивных недочетов или &laquo;капризного&raquo; грунта. Так как предельно низкий вес каркасных домов, в сочетании с очень жесткими строительными материалами (OSB, ЦСП или СМЛ), позволяет создавать каркасные конструкции менее подверженные разрушениям из-за особенностей грунта или собственного веса строящегося каркасного дома.<br />\r\n	&nbsp; &nbsp;Круглогодичная отделка &mdash; отсутствие, так называемых, &laquo;мокрых&raquo; процессов при строительстве каркасного дома, позволяют проводить как внешнюю, так и внутреннюю отделку в любое время года, в том числе и зимой. А изначально ровные поверхности упрощают отделку каркасного дома.<br />\r\n	&nbsp; &nbsp;Малый вес конструкций каркасного дома не требует сооружения массивного и дорогостоящего фундамента. На практике, каркасные дома строятся на достаточно легких и совсем недорогих фундаментах, а именно: это может быть мелкозаглублённый ленточный фундамент, фундаментная шведская плита, буронабивные сваи или свайно-винтовой фундамент из металлических свай. Современные защитные покрытия, наносимые на винтовых свай от коррозии в виде полимерных составов, позволяют создавать свайные фундаментные поля не только быстро и дешево, но и порой долговечнее, если сравнивать с каменными или бетонными.&nbsp; &nbsp; &nbsp; &nbsp; Каркасные дома зачастую имеют настолько малую монтажную массу, что могут быть просто подняты несколькими домкратами без разрушения несущей конструкции каркасного дома.<br />\r\n	&nbsp; &nbsp;Каркасные дома идеально подходят для постоянного проживания. В холодное время года они быстро прогреваются до комфортной температуры, и стоимость отопления таких домов значительно дешевле, поскольку каркасные дома имеют низкую теплопроводность стен и перекрытий, и с другой стороны высокую теплозащиту.<br />\r\n	&nbsp; &nbsp;Технология строительства каркасных домов позволяет создавать самые смелые и разнообразные архитектурные формы, и значительное перераспределение веса каркасной конструкции, обычно не приводит к каким либо проблемам, связанными с надежностью конструкции.<br />\r\n	&nbsp; &nbsp;Пожарная безопасность. При подготовке проекты каркасных домов, каркасные дома имеют даже более надежную степень пожарной безопасности, чем дома с кирпичными стенами, так как надежно и достаточно эффективно препятствуют процессам горения.<br />\r\n	&nbsp; &nbsp;&laquo;Дышащий дом&raquo;. При правильной строительной конструкции, каркасные дома, в строительстве которых используются паропроницаемые материалы внешней обшивки (ЦСП, СМЛ, ДВП), и соответствующий вид утеплителя (минеральная вата, базальтовая вата), возможно создание совершенно паропроницаемых стен, что создает так называемый эффект &laquo;дышащего дома&raquo;, который присущ классическим деревянным домам.&nbsp; &nbsp; Поскольку паропроницаемые стены выводят избыточную влажность из каркасного дома даже без проветривания, что создает достаточно комфортный микроклимат в помещении.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-56\" height=\"175\" src=\"http://wordpress/wp-content/uploads/2018/11/41-300x175.jpg\" width=\"300\" />\r\n</p>\r\n', 'Проекты домов', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82%d1%8b-%d0%b4%d0%be%d0%bc%d0%be%d0%b2', '', '', '2018-11-23 10:25:26', '2018-11-23 07:25:26', '', 0, 'http://wordpress/?page_id=51', 0, 'page', '', 0),
(52, 1, '2018-11-23 10:18:08', '2018-11-23 07:18:08', '', '11', '', 'inherit', 'open', 'closed', '', '11-2', '', '', '2018-11-23 10:18:08', '2018-11-23 07:18:08', '', 51, 'http://wordpress/wp-content/uploads/2018/11/11-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-11-23 10:19:20', '2018-11-23 07:19:20', '', '12', '', 'inherit', 'open', 'closed', '', '12', '', '', '2018-11-23 10:19:20', '2018-11-23 07:19:20', '', 51, 'http://wordpress/wp-content/uploads/2018/11/12.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-11-23 10:20:36', '2018-11-23 07:20:36', '', '21', '', 'inherit', 'open', 'closed', '', '21', '', '', '2018-11-23 10:20:36', '2018-11-23 07:20:36', '', 51, 'http://wordpress/wp-content/uploads/2018/11/21.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-11-23 10:21:52', '2018-11-23 07:21:52', '', '31', '', 'inherit', 'open', 'closed', '', '31', '', '', '2018-11-23 10:21:52', '2018-11-23 07:21:52', '', 51, 'http://wordpress/wp-content/uploads/2018/11/31.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-11-23 10:22:46', '2018-11-23 07:22:46', '', '41', '', 'inherit', 'open', 'closed', '', '41', '', '', '2018-11-23 10:22:46', '2018-11-23 07:22:46', '', 51, 'http://wordpress/wp-content/uploads/2018/11/41.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-11-23 10:22:59', '2018-11-23 07:22:59', '<h2 style=\"text-align: center;\">\r\n	<strong>Дома из бруса.</strong>\r\n</h2>\r\n\r\n<p>\r\n	Дома из бруса обладают главным достоинством &ndash; они способны &laquo;дышать&raquo; и удерживать тепло лучше, чем дома, построенные из камня. В таких домах создаётся более благоприятный для человека микроклимат. Дома из клееного бруса, или дома из соснового прорфилированного бруса неоспоримо, имеют очень красивый вид. Однако вышеупомянутые достоинства свойственны только правильно спроектированным и построенным домам из бруса, а также соответствующим всем требованиям к проектированию и возведению таких строений.<br />\r\n	Строительство брусовых домов под ключ предполагает применение хвойных пород: ели, лиственницы, сосны, пихты, кедра. А несущие конструкции создают из более подходящих для этого пород - сосны и лиственницы, которые в отличие от пихты и ели подвержены гниению в меньшей степени. В Европе самым доступным и распространённым строительным материалом стала сосна. Лиственные породы дерева используются нечасто, из них предпочтение отдаётся дубу, буку, берёзе, ясеню, осине.<br />\r\n	Древесина по своей структуре &ndash; это природный полимер, он образуется клетками-волокнами, которые направлены вдоль ствола дерева и обладают трубчатой формой. Поэтому ей свойственен целый ряд достоинств: исключительно высокая прочность, упругость, низкая теплопроводность, устойчивость к химическим агрессивным средам, низкая плотность и вес, природная декоративность и, что немаловажно, простата обработки и монтажа. Отдельно стоит отметить низкую теплопроводность дерева, так как чем ниже её значение, тем теплее будет в доме зимой, и прохладнее летом.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-52\" height=\"206\" src=\"http://wordpress/wp-content/uploads/2018/11/11-1-300x206.jpg\" width=\"300\" />\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong>Дома из клееного бруса.</strong>\r\n</h2>\r\n\r\n<p>\r\n	Это на сегодняшний день самый оптимальный вариант для всех тех, кто мечтает о собственном уютном жилье. Использование при строительстве деревянных домов такого строительного материала, как клееный брус, придает дому или бане очень привлекательный и достаточно оригинальный внешний вид. Все дома из клееного бруса очень эффектно выделяются на фоне всех других построек.<br />\r\n	Клееный брус не подвергаются дальнейшей деформации в ходе их эксплуатации. Помимо этого, он не пропускают влагу и имеют пониженную теплопроводность. Все эти факторы, без сомнений, ведут к формированию комфортного и благоприятного микроклимата в доме из клееного бруса, а так же повышают интерес к использованию бруса в качестве основного строительного материала.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-54\" height=\"200\" src=\"http://wordpress/wp-content/uploads/2018/11/21-300x200.jpg\" width=\"300\" />\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<br />\r\n	<strong>Дома из профилированного бруса.</strong>\r\n</h2>\r\n\r\n<p>\r\n	Профилированный брус позволяет немедленно приступить к строительным работам по возведению дома или бани, при условии готовности фундамента. Профилированный клееный брус производится из хвойных пород дерева, которые дают незначительную усадку в течение первого полугодия. Построенные таким образом деревянные дома без каких либо проблем переносят естественную минимальную деформацию фундамента и срок их эксплуатации превышает 150 лет.<br />\r\n	Дома из профилированного бруса уже давно зарекомендовали себя с самых лучших сторон в условиях средней полосы, т.к. они обладают такими качествами как прочность, долговечность и имеют сравнительно низкую стоимость строительства. Дома из клееного бруса используют как в качестве летних дачных домов, так и для постоянного проживания. Так же не забываем о том, что деревянные дома из бруса строятся очень быстро и готовы для проживания сразу после окончания строительства.<br />\r\n	Отделка дома из профилированного бруса не отнимает много времени и отличается своей дешевизной, так как профилированный брус превосходно смотрится как снаружи, так и изнутри дома или бани. Несомненно, городские жители хотят свои загородные дома снабдить всеми современными удобствами и возможными коммуникациями.<br />\r\n	Необходимо отметить, что именно дома из профилированного бруса позволяют очень быстро и достаточно эффективно воплотить все задуманные действия: провести все внутренние коммуникации: водопровод, канализацию, отопление, а так же сделать монтаж теплых полов, и пр. Дома из бруса отличаются большим разнообразием форм, планировок и размеров, и при этом для них не требуется возводить какой либо сложный и дорогой фундамент.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-55\" height=\"225\" src=\"http://wordpress/wp-content/uploads/2018/11/31-300x225.jpg\" width=\"300\" />\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong>Каркасные дома.</strong>\r\n</h2>\r\n\r\n<p>\r\n	Современные технологии строительства каркасных домов позволяют возводить строения, не уступающие домам из кирпича или бетона как в надежности, так в прочности и долговечности. При этом каркасные дома и каркасное строительство по типовым проектам имеют целый ряд преимуществ, таких как:<br />\r\n	Высокая скорость возведения дома и относительно малая стоимость строительных работ.<br />\r\n	Малая вероятность того, что дом будет поврежден, вследствие конструктивных недочетов или &laquo;капризного&raquo; грунта. Так как предельно низкий вес каркасных домов, в сочетании с очень жесткими строительными материалами (OSB, ЦСП или СМЛ), позволяет создавать каркасные конструкции менее подверженные разрушениям из-за особенностей грунта или собственного веса строящегося каркасного дома.<br />\r\n	Круглогодичная отделка &mdash; отсутствие, так называемых, &laquo;мокрых&raquo; процессов при строительстве каркасного дома, позволяют проводить как внешнюю, так и внутреннюю отделку в любое время года, в том числе и зимой. А изначально ровные поверхности упрощают отделку каркасного дома.<br />\r\n	Малый вес конструкций каркасного дома не требует сооружения массивного и дорогостоящего фундамента. На практике, каркасные дома строятся на достаточно легких и совсем недорогих фундаментах, а именно: это может быть мелкозаглублённый ленточный фундамент, фундаментная шведская плита, буронабивные сваи или свайно-винтовой фундамент из металлических свай. Современные защитные покрытия, наносимые на винтовых свай от коррозии в виде полимерных составов, позволяют создавать свайные фундаментные поля не только быстро и дешево, но и порой долговечнее, если сравнивать с каменными или бетонными. Каркасные дома зачастую имеют настолько малую монтажную массу, что могут быть просто подняты несколькими домкратами без разрушения несущей конструкции каркасного дома.<br />\r\n	Каркасные дома идеально подходят для постоянного проживания. В холодное время года они быстро прогреваются до комфортной температуры, и стоимость отопления таких домов значительно дешевле, поскольку каркасные дома имеют низкую теплопроводность стен и перекрытий, и с другой стороны высокую теплозащиту.<br />\r\n	Технология строительства каркасных домов позволяет создавать самые смелые и разнообразные архитектурные формы, и значительное перераспределение веса каркасной конструкции, обычно не приводит к каким либо проблемам, связанными с надежностью конструкции.<br />\r\n	Пожарная безопасность. При подготовке проекты каркасных домов, каркасные дома имеют даже более надежную степень пожарной безопасности, чем дома с кирпичными стенами, так как надежно и достаточно эффективно препятствуют процессам горения.<br />\r\n	&laquo;Дышащий дом&raquo;. При правильной строительной конструкции, каркасные дома, в строительстве которых используются паропроницаемые материалы внешней обшивки (ЦСП, СМЛ, ДВП), и соответствующий вид утеплителя (минеральная вата, базальтовая вата), возможно создание совершенно паропроницаемых стен, что создает так называемый эффект &laquo;дышащего дома&raquo;, который присущ классическим деревянным домам. Поскольку паропроницаемые стены выводят избыточную влажность из каркасного дома даже без проветривания, что создает достаточно комфортный микроклимат в помещении.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-56\" height=\"175\" src=\"http://wordpress/wp-content/uploads/2018/11/41-300x175.jpg\" width=\"300\" />\r\n</p>\r\n', 'Проекты домов', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-11-23 10:22:59', '2018-11-23 07:22:59', '', 51, 'http://wordpress/2018/11/23/51-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-11-23 10:25:26', '2018-11-23 07:25:26', '<h2 style=\"text-align: center;\">\r\n	<strong>Дома из бруса.</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Дома из бруса обладают главным достоинством &ndash; они способны &laquo;дышать&raquo; и удерживать тепло лучше, чем дома, построенные из камня. В таких домах создаётся более благоприятный для человека микроклимат. Дома из клееного бруса, или дома из соснового прорфилированного бруса неоспоримо, имеют очень красивый вид. Однако вышеупомянутые достоинства свойственны только правильно спроектированным и построенным домам из бруса, а также соответствующим всем требованиям к проектированию и возведению таких строений.<br />\r\n	&nbsp; &nbsp;Строительство брусовых домов под ключ предполагает применение хвойных пород: ели, лиственницы, сосны, пихты, кедра. А несущие конструкции создают из более подходящих для этого пород - сосны и лиственницы, которые в отличие от пихты и ели подвержены гниению в меньшей степени. В Европе самым доступным и распространённым строительным материалом стала сосна. Лиственные породы дерева используются нечасто, из них предпочтение отдаётся дубу, буку, берёзе, ясеню, осине.<br />\r\n	&nbsp; &nbsp;Древесина по своей структуре &ndash; это природный полимер, он образуется клетками-волокнами, которые направлены вдоль ствола дерева и обладают трубчатой формой. Поэтому ей свойственен целый ряд достоинств: исключительно высокая прочность, упругость, низкая теплопроводность, устойчивость к химическим агрессивным средам, низкая плотность и вес, природная декоративность и, что немаловажно, простата обработки и монтажа. Отдельно стоит отметить низкую теплопроводность дерева, так как чем ниже её значение, тем теплее будет в доме зимой, и прохладнее летом.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-52\" height=\"206\" src=\"http://wordpress/wp-content/uploads/2018/11/11-1-300x206.jpg\" width=\"300\" />\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong>Дома из клееного бруса.</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Это на сегодняшний день самый оптимальный вариант для всех тех, кто мечтает о собственном уютном жилье. Использование при строительстве деревянных домов такого строительного материала, как клееный брус, придает дому или бане очень привлекательный и достаточно оригинальный внешний вид. Все дома из клееного бруса очень эффектно выделяются на фоне всех других построек.<br />\r\n	&nbsp; &nbsp;Клееный брус не подвергаются дальнейшей деформации в ходе их эксплуатации. Помимо этого, он не пропускают влагу и имеют пониженную теплопроводность. Все эти факторы, без сомнений, ведут к формированию комфортного и благоприятного микроклимата в доме из клееного бруса, а так же повышают интерес к использованию бруса в качестве основного строительного материала.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-54\" height=\"200\" src=\"http://wordpress/wp-content/uploads/2018/11/21-300x200.jpg\" width=\"300\" />\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<br />\r\n	<strong>Дома из профилированного бруса.</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Профилированный брус позволяет немедленно приступить к строительным работам по возведению дома или бани, при условии готовности фундамента. Профилированный клееный брус производится из хвойных пород дерева, которые дают незначительную усадку в течение первого полугодия. Построенные таким образом деревянные дома без каких либо проблем переносят естественную минимальную деформацию фундамента и срок их эксплуатации превышает 150 лет.<br />\r\n	&nbsp; &nbsp;Дома из профилированного бруса уже давно зарекомендовали себя с самых лучших сторон в условиях средней полосы, т.к. они обладают такими качествами как прочность, долговечность и имеют сравнительно низкую стоимость строительства. Дома из клееного бруса используют как в качестве летних дачных домов, так и для постоянного проживания. Так же не забываем о том, что деревянные дома из бруса строятся очень быстро и готовы для проживания сразу после окончания строительства.<br />\r\n	&nbsp; &nbsp;Отделка дома из профилированного бруса не отнимает много времени и отличается своей дешевизной, так как профилированный брус превосходно смотрится как снаружи, так и изнутри дома или бани. Несомненно, городские жители хотят свои загородные дома снабдить всеми современными удобствами и возможными коммуникациями.<br />\r\n	&nbsp; &nbsp;Необходимо отметить, что именно дома из профилированного бруса позволяют очень быстро и достаточно эффективно воплотить все задуманные действия: провести все внутренние коммуникации: водопровод, канализацию, отопление, а так же сделать монтаж теплых полов, и пр. Дома из бруса отличаются большим разнообразием форм, планировок и размеров, и при этом для них не требуется возводить какой либо сложный и дорогой фундамент.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-55\" height=\"225\" src=\"http://wordpress/wp-content/uploads/2018/11/31-300x225.jpg\" width=\"300\" />\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong>Каркасные дома.</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Современные технологии строительства каркасных домов позволяют возводить строения, не уступающие домам из кирпича или бетона как в надежности, так в прочности и долговечности. При этом каркасные дома и каркасное строительство по типовым проектам имеют целый ряд преимуществ, таких как:<br />\r\n	&nbsp; &nbsp;Высокая скорость возведения дома и относительно малая стоимость строительных работ.<br />\r\n	&nbsp; &nbsp;Малая вероятность того, что дом будет поврежден, вследствие конструктивных недочетов или &laquo;капризного&raquo; грунта. Так как предельно низкий вес каркасных домов, в сочетании с очень жесткими строительными материалами (OSB, ЦСП или СМЛ), позволяет создавать каркасные конструкции менее подверженные разрушениям из-за особенностей грунта или собственного веса строящегося каркасного дома.<br />\r\n	&nbsp; &nbsp;Круглогодичная отделка &mdash; отсутствие, так называемых, &laquo;мокрых&raquo; процессов при строительстве каркасного дома, позволяют проводить как внешнюю, так и внутреннюю отделку в любое время года, в том числе и зимой. А изначально ровные поверхности упрощают отделку каркасного дома.<br />\r\n	&nbsp; &nbsp;Малый вес конструкций каркасного дома не требует сооружения массивного и дорогостоящего фундамента. На практике, каркасные дома строятся на достаточно легких и совсем недорогих фундаментах, а именно: это может быть мелкозаглублённый ленточный фундамент, фундаментная шведская плита, буронабивные сваи или свайно-винтовой фундамент из металлических свай. Современные защитные покрытия, наносимые на винтовых свай от коррозии в виде полимерных составов, позволяют создавать свайные фундаментные поля не только быстро и дешево, но и порой долговечнее, если сравнивать с каменными или бетонными.&nbsp; &nbsp; &nbsp; &nbsp; Каркасные дома зачастую имеют настолько малую монтажную массу, что могут быть просто подняты несколькими домкратами без разрушения несущей конструкции каркасного дома.<br />\r\n	&nbsp; &nbsp;Каркасные дома идеально подходят для постоянного проживания. В холодное время года они быстро прогреваются до комфортной температуры, и стоимость отопления таких домов значительно дешевле, поскольку каркасные дома имеют низкую теплопроводность стен и перекрытий, и с другой стороны высокую теплозащиту.<br />\r\n	&nbsp; &nbsp;Технология строительства каркасных домов позволяет создавать самые смелые и разнообразные архитектурные формы, и значительное перераспределение веса каркасной конструкции, обычно не приводит к каким либо проблемам, связанными с надежностью конструкции.<br />\r\n	&nbsp; &nbsp;Пожарная безопасность. При подготовке проекты каркасных домов, каркасные дома имеют даже более надежную степень пожарной безопасности, чем дома с кирпичными стенами, так как надежно и достаточно эффективно препятствуют процессам горения.<br />\r\n	&nbsp; &nbsp;&laquo;Дышащий дом&raquo;. При правильной строительной конструкции, каркасные дома, в строительстве которых используются паропроницаемые материалы внешней обшивки (ЦСП, СМЛ, ДВП), и соответствующий вид утеплителя (минеральная вата, базальтовая вата), возможно создание совершенно паропроницаемых стен, что создает так называемый эффект &laquo;дышащего дома&raquo;, который присущ классическим деревянным домам.&nbsp; &nbsp; Поскольку паропроницаемые стены выводят избыточную влажность из каркасного дома даже без проветривания, что создает достаточно комфортный микроклимат в помещении.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-medium wp-image-56\" height=\"175\" src=\"http://wordpress/wp-content/uploads/2018/11/41-300x175.jpg\" width=\"300\" />\r\n</p>\r\n', 'Проекты домов', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-11-23 10:25:26', '2018-11-23 07:25:26', '', 51, 'http://wordpress/2018/11/23/51-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-vizit\"]', 'Оформление заказа через ‘самовывоз’ товара из нашего магазина/офиса', 'vizit', 'publish', 'closed', 'closed', '', 'vizit', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=vizit', 0, 'wpshopcarts', '', 0),
(62, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-cash\"]', 'Оформление заказа с оплатой наличными курьеру при получении товара', 'cash', 'publish', 'closed', 'closed', '', 'cash', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=cash', 0, 'wpshopcarts', '', 0),
(63, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-post\"]', 'Оформление заказа с оплатой на почте при получении товара', 'post', 'publish', 'closed', 'closed', '', 'post', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=post', 0, 'wpshopcarts', '', 0),
(64, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-wm\"]', 'Оформление заказа с оплатой через систему ‘Web-Money’', 'wm', 'publish', 'closed', 'closed', '', 'wm', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=wm', 0, 'wpshopcarts', '', 0),
(65, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘Web-Money’ принят', 'wm_success', 'publish', 'closed', 'closed', '', 'wm_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=wm_success', 0, 'wpshopcarts', '', 0),
(66, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘Web-Money’ не принят', 'wm_failed', 'publish', 'closed', 'closed', '', 'wm_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=wm_failed', 0, 'wpshopcarts', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(67, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-bank\"]', 'Оформление заказа с оплатой через банк (Безналичный расчет)', 'bank', 'publish', 'closed', 'closed', '', 'bank', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=bank', 0, 'wpshopcarts', '', 0),
(68, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-robokassa\"]', 'Оформление заказа с оплатой через систему ‘RoboKassa.ru’', 'robokassa', 'publish', 'closed', 'closed', '', 'robokassa', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=robokassa', 0, 'wpshopcarts', '', 0),
(69, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через \'Робокасса’ принят', 'robokassa_success', 'publish', 'closed', 'closed', '', 'robokassa_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=robokassa_success', 0, 'wpshopcarts', '', 0),
(70, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через \'Робокасса’ не принят', 'robokassa_failed', 'publish', 'closed', 'closed', '', 'robokassa_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=robokassa_failed', 0, 'wpshopcarts', '', 0),
(71, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-paypal\"]', 'Оформление заказа с оплатой через систему PayPal', 'paypal', 'publish', 'closed', 'closed', '', 'paypal', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=paypal', 0, 'wpshopcarts', '', 0),
(72, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘Paypal’ принят', 'paypal_success', 'publish', 'closed', 'closed', '', 'paypal_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=paypal_success', 0, 'wpshopcarts', '', 0),
(73, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘Paypal’ не принят', 'paypal_failed', 'publish', 'closed', 'closed', '', 'paypal_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=paypal_failed', 0, 'wpshopcarts', '', 0),
(74, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-simplepay\"]', 'Оформление заказа через систему Simplepay  товара из нашего магазина/офиса', 'simplepay', 'publish', 'closed', 'closed', '', 'simplepay', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=simplepay', 0, 'wpshopcarts', '', 0),
(75, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘Simplepay’ принят', 'siplepay_success', 'publish', 'closed', 'closed', '', 'simplepay_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=simplepay_success', 0, 'wpshopcarts', '', 0),
(76, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘Simplepay’ не принят', 'simplepay_failed', 'publish', 'closed', 'closed', '', 'simplepay_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=simplepay_failed', 0, 'wpshopcarts', '', 0),
(77, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-ek\"]', 'Оформление заказа с оплатой через систему ‘Единая касса’', 'ek', 'publish', 'closed', 'closed', '', 'ek', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=ek', 0, 'wpshopcarts', '', 0),
(78, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через \'Единая касса’ принят', 'ek_success', 'publish', 'closed', 'closed', '', 'ek_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=ek_success', 0, 'wpshopcarts', '', 0),
(79, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через \'Единая касса’ не принят', 'ek_failed', 'publish', 'closed', 'closed', '', 'ek_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=ek_failed', 0, 'wpshopcarts', '', 0),
(80, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-yandex_kassa\"]', 'Оформление заказа с оплатой через систему ‘Yandex касса’', 'yandex_kassa', 'publish', 'closed', 'closed', '', 'yandex_kassa', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=yandex_kassa', 0, 'wpshopcarts', '', 0),
(81, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через \'Яндекс касса’ принят', 'yandex_kassa_success', 'publish', 'closed', 'closed', '', 'yandex_kassa_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=yandex_kassa_success', 0, 'wpshopcarts', '', 0),
(82, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через \'Яндекс касса’ не принят', 'yandex_kassa_failed', 'publish', 'closed', 'closed', '', 'yandex_kassa_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=yandex_kassa_failed', 0, 'wpshopcarts', '', 0),
(83, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-chronopay\"]', 'Оформление заказа с оплатой через систему ‘Chronopay’', 'chronopay', 'publish', 'closed', 'closed', '', 'chronopay', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=chronopay', 0, 'wpshopcarts', '', 0),
(84, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘Chronopay’ принят', 'chronopay_success', 'publish', 'closed', 'closed', '', 'chronopay_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=chronopay_success', 0, 'wpshopcarts', '', 0),
(85, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘Chronopay’ не принят', 'chronopay_failed', 'publish', 'closed', 'closed', '', 'chronopay_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=chronopay_failed', 0, 'wpshopcarts', '', 0),
(86, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-sofort\"]', 'Оформление заказа с оплатой через систему ‘SOFORT’', 'sofort', 'publish', 'closed', 'closed', '', 'sofort', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=sofort', 0, 'wpshopcarts', '', 0),
(87, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘SOFORT’ принят', 'sofort_success', 'publish', 'closed', 'closed', '', 'sofort_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=sofort_success', 0, 'wpshopcarts', '', 0),
(88, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘SOFORT’ не принят', 'sofort_failed', 'publish', 'closed', 'closed', '', 'sofort_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=sofort_failed', 0, 'wpshopcarts', '', 0),
(89, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-ym\"]', 'Оформление заказа через систему Yandex деньги', 'ym', 'publish', 'closed', 'closed', '', 'ym', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=ym', 0, 'wpshopcarts', '', 0),
(90, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через Yandex деньги принят', 'ym_success', 'publish', 'closed', 'closed', '', 'ym_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=ym_success', 0, 'wpshopcarts', '', 0),
(91, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-sber\"]', 'Оформление заказа с оплатой через Сбербанк', 'sber', 'publish', 'closed', 'closed', '', 'sber', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=sber', 0, 'wpshopcarts', '', 0),
(92, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через Сбербанк принят', 'sber_success', 'publish', 'closed', 'closed', '', 'sber_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=sber_success', 0, 'wpshopcarts', '', 0),
(93, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через Сбербанк отклонен', 'sber_failed', 'publish', 'closed', 'closed', '', 'sber_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=sber_failed', 0, 'wpshopcarts', '', 0),
(94, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-icredit\"]', 'Оформление заказа с оплатой через систему ‘ICredit’', 'icredit', 'publish', 'closed', 'closed', '', 'icredit', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=icredit', 0, 'wpshopcarts', '', 0),
(95, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘iCredit’’ принят', 'icredit_success', 'publish', 'closed', 'closed', '', 'icredit_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=icredit_success', 0, 'wpshopcarts', '', 0),
(96, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-tinkoff\"]', 'Оформление заказа с оплатой через Тинькофф Банк', 'tinkoff', 'publish', 'closed', 'closed', '', 'tinkoff', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=tinkoff', 0, 'wpshopcarts', '', 0),
(97, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через Тинькофф Банк принят', 'tinkoff_success', 'publish', 'closed', 'closed', '', 'tinkoff_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=tinkoff_success', 0, 'wpshopcarts', '', 0),
(98, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через Тинькофф Банк не принят', 'tinkoff_failed', 'publish', 'closed', 'closed', '', 'tinkoff_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=tinkoff_failed', 0, 'wpshopcarts', '', 0),
(99, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-ap\"]', 'Оформление заказа с оплатой через систему - Artpay', 'ap', 'publish', 'closed', 'closed', '', 'ap', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=ap', 0, 'wpshopcarts', '', 0),
(100, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘ArtPay’ принят', 'ap_success', 'publish', 'closed', 'closed', '', 'ap_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=ap_success', 0, 'wpshopcarts', '', 0),
(101, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через ‘ArtPay’ не принят', 'ap_failed', 'publish', 'closed', 'closed', '', 'ap_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=ap_failed', 0, 'wpshopcarts', '', 0),
(102, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-cripto\"]', 'Оформление заказа с использованием платежной системы `Криптонатор`', 'cripto', 'publish', 'closed', 'closed', '', 'cripto', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=cripto', 0, 'wpshopcarts', '', 0),
(103, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через `Криптонатор` принят', 'cripto_success', 'publish', 'closed', 'closed', '', 'cripto_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=cripto_success', 0, 'wpshopcarts', '', 0),
(104, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через `Криптонатор` не выполнен', 'cripto_failed', 'publish', 'closed', 'closed', '', 'cripto_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=cripto_failed', 0, 'wpshopcarts', '', 0),
(105, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-interkassa\"]', 'Оформление заказа с оплатой через систему ‘Interkassa’', 'interkassa', 'publish', 'closed', 'closed', '', 'interkassa', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=interkassa', 0, 'wpshopcarts', '', 0),
(106, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через `Interkassa` принят', 'interkassa_success', 'publish', 'closed', 'closed', '', 'interkassa_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=interkassa_success', 0, 'wpshopcarts', '', 0),
(107, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через `Interkassa` не принят', 'interkassa_failed', 'publish', 'closed', 'closed', '', 'interkassa_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=interkassa_failed', 0, 'wpshopcarts', '', 0),
(108, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '[cart]\n\n[cforms name=\"wpshop-primearea\"]', 'Оформление заказа с оплатой через систему - Primearea', 'primearea', 'publish', 'closed', 'closed', '', 'primearea', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=primearea', 0, 'wpshopcarts', '', 0),
(109, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через «Primearea» принят', 'primearea_success', 'publish', 'closed', 'closed', '', 'primearea_success', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=primearea_success', 0, 'wpshopcarts', '', 0),
(110, 1, '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 'Ваш платеж через «Primearea» не принят', 'primearea_failed', 'publish', 'closed', 'closed', '', 'primearea_failed', '', '', '2018-11-23 10:28:38', '2018-11-23 07:28:38', '', 0, 'http://wordpress/?wpshopcarts=primearea_failed', 0, 'wpshopcarts', '', 0),
(113, 1, '2018-11-23 10:47:13', '2018-11-23 07:47:13', '<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Настоящее пользовательское соглашение, далее &quot;Соглашение&quot;, заключается между Интернет-магазином, далее &quot;Интернет-магазин&quot; или &quot;Сайт&quot;, и пользователем услуг Интернет-магазина, далее &quot;Покупатель&quot;, и определяет условия приобретения товаров через Сайт.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;1.Основные положения</strong><br />\r\n	1.1. Настоящее Соглашение заключается между Покупателем и Интернет-магазинов момент оформления заказа. Покупатель подтверждает свое согласие с условиями, установленными настоящим Соглашением, путем проставления отметки в графе &quot;Я согласен с правилами магазина&quot; при оформлении заказа.&nbsp;<br />\r\n	1.2. Настоящие Соглашение, а также информация о товаре, представленная на Сайте, являются публичной офертой в соответствии со ст.435 и &nbsp;ч.2 ст.437 ГК РФ.&nbsp;<br />\r\n	1.3. К отношениям между Покупателем и Интернет-магазином применяются положения ГК РФ о продажи товаров дистанционным способом (ст.497 Федерального закона РФ от 25.10.2007 N 234-ФЗ ), &nbsp;а также Закон РФ &laquo;О защите прав потребителей&raquo; от 07.02.1992 № 2300-1 и иные правовые акты, принятые в соответствии с ними.&nbsp;<br />\r\n	1.4. Покупателем может быть любое физическое или юридическое лицо, способное принять и оплатить заказанный им товар в порядке и на условиях, установленныx настоящим Соглашением, на территории Российской Федерации.&nbsp;<br />\r\n	1.5. Интернет-магазин оставляет за собой право вносить изменения в настоящее Соглашение.&nbsp;<br />\r\n	1.6. Настоящее Соглашение должно рассматриваться в том виде, как оно опубликовано на Сайте, и должно применяться и толковаться в соответствии с законодательством Российской Федерации.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;2. Информация о товаре</strong><br />\r\n	2.1. Товар представлен на Сайте через фото-образцы, являющиеся собственностью Интернет-магазина.&nbsp;<br />\r\n	2.2. Каждый фото-образец сопровождается текстовой информацией: артикулом, ценой и описанием товара.&nbsp;<br />\r\n	2.3. По просьбе Покупателя менеджер Интернет-магазина обязан предоставить (по телефону или посредством электронной почты) прочую информацию, необходимую и достаточную, с точки зрения Покупателя, для принятия им решения о покупке товара.&nbsp;<br />\r\n	2.4. Указанная на Сайте цена товара может быть изменена Интернет-магазином в одностороннем порядке. &nbsp;<br />\r\n	2.5. В случае изменения цены товара, заказанного Покупателем, менеджер Интернет-магазина при первой возможности информирует об этом Покупателя (по телефону или посредством электронной почты) для получения подтверждения либо аннулирования заказа. При невозможности связаться с Покупателем данный заказ считается аннулированным.&nbsp;<br />\r\n	2.6 Все размеры обуви указы в европейской размерной сетке.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;3. Порядок приобретения товара</strong><br />\r\n	3.1. Покупатель вправе оформить заказ на любой товар, представленный на Сайте. Каждый товар может быть заказан в любом количестве при условии, что заказано будет не более 2-х единиц одной категории. Заказ может быть оформлен Покупателем следующим способом: самостоятельно на Сайте.&nbsp;<br />\r\n	3.2. После оформления заказа на e-mail Покупателя отправляется письмо, подтверждающее принятие заказа, с указанием наименований выбранных товаров и общей суммы заказа, являющийся неотъемлемой частью настоящего Соглашения. Далее менеджер Интернет-магазина связывается с Покупателем &nbsp;(по телефону или посредством электронной почты) для получения подтверждения заказа.&nbsp;<br />\r\n	3.3. При отсутствии товара на складе менеджер Интернет-магазина обязан поставить в известность об этом Покупателя (по телефону или посредством электронной почты).&nbsp;<br />\r\n	3.4. При отсутствии товара Покупатель вправе заменить его другим товаром либо аннулировать заказ.&nbsp;<br />\r\n	3.6. Покупатель вправе отказаться от заказанного товара в любое время до его отправки Покупателю, заблаговременно (но не позднее чем за 12 часов до времени доставки) поставив в известность об этом Интернет-магазин (по телефону или посредством электронной почты).&nbsp;<br />\r\n	3.7. Покупатель вправе отказаться от заказанного товара и вернуть его курьеру в момент его получения, если ему не подошел размер, цвет или по любым другим причинам.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;4. Доставка и приемка-передача товара</strong><br />\r\n	4.1. Доставка товара, заказанного в Интернет-магазине, в согласованном количестве и ассортименте, осуществляется службой доставки по территории города Москвы и Московской области, а так же в другие города Российской Федерации.&nbsp;<br />\r\n	4.2. Расходы по доставке товара оплачиваются Покупателем по тарифам, указанным на Сайте в разделе &laquo;Оплата&raquo; и &laquo;Доставка&raquo; .&nbsp;<br />\r\n	4.4. Отправка и доставка заказанного товара производится в оговоренные с Покупателем сроки.&nbsp;<br />\r\n	4.5. Покупатель обязан в присутствии курьера Интернет-магазина произвести приемку заказанного товара по количеству, качеству, ассортименту и комплектности товара. &nbsp;<br />\r\n	4.6. Фактом приемки товара Покупателем является оплата товара (оплата общей суммы заказа и суммы расходов по доставке товара Покупателю).\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;5. Оплата товара</strong><br />\r\n	5.1. Способы оплаты товара указаны на Сайте в разделе &quot;Оплата&quot; и &quot;Доставка&quot;.&nbsp;<br />\r\n	5.2. При &nbsp;расчете Покупатель оплачивает товар путем передачи денег представителю Интернет-магазина в лице курьера службы доставки.&nbsp;<br />\r\n	5.3. Товар оплачивается только в рублях.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;6. Возврат товара</strong><br />\r\n	6.1. Покупатель вправе отказаться от товара после его получения в течение семи дней. Возврат товара надлежащего качества возможен в случае, если сохранены его товарный вид, потребительские свойства, а также документ, подтверждающий факт и условия покупки указанного товара (товарная накладная, кассовый чек). В течение этого периода Покупатель обязан известить менеджера магазина письменно &nbsp;или по телефону +7 (123) 456-78-90 о желании вернуть товар.&nbsp;<br />\r\n	6.2. Покупатель не вправе отказаться от товара надлежащего качества, имеющего индивидуально-определенные свойства, если указанный товар может быть использован исключительно приобретающим его Покупателем.&nbsp;<br />\r\n	6.3. При отказе Покупателя от товара Интернет-магазин возвращает ему денежную сумму, уплаченную за товар, за вычетом суммы расходов Интернет-магазина, связанных с доставкой товара Покупателю и вывозом товара от Покупателя, не позднее, чем через десять дней со дня предъявления Покупателем соответствующего требования.&nbsp;<br />\r\n	6.4. Товар ненадлежащего качества может быть заменен на аналогичный товар надлежащего качества, либо возвращен Продавцу, в данном случае доставку товара оплачивает Продавец.&nbsp;<br />\r\n	6.5 Товар приобретенный во время акции 1+1=1, 50% на второй товар и т.п., должен быть возвращен полным чеком.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	<strong>&nbsp; &nbsp;7. Прочее</strong><br />\r\n	7.1. Интернет-магазин оставляет за собой право расширять и сокращать товарное предложение на Сайте, регулировать доступ к покупке любых товаров, а также приостанавливать или прекращать продажу любых товаров по своему собственному усмотрению.&nbsp;<br />\r\n	7.2. Интернет-магазин вправе проводить специальные акции.&nbsp;<br />\r\n	7.3. В соответствии с Федеральным законом &laquo;О персональных данных&raquo;, размещая заказ, Вы даете согласие Интернет-магазину на обработку &nbsp;своих персональных данных в целях рассылки информации и продвижения товаров на рынке, без ограничения срока. Указанное согласие может быть отозвано Вами путём направления письменного уведомления. В этом случае Ваши персональные данные будут уничтожены, а их обработка прекращена в течение 7 рабочих дней с даты получения нами уведомления.&nbsp;<br />\r\n	7.4. Продавец обязуется соблюдать конфиденциальность в отношении персональных данных Покупателя, а также иной информации о Покупателе, ставшей известной Продавцу в связи с исполнением настоящего Соглашения, за исключением случаев, когда такая информация:<br />\r\n	является общедоступной;<br />\r\n	раскрыта по требованию или с разрешения Покупателя;<br />\r\n	требует раскрытия по основаниям, предусмотренным законодательством, или при поступлении соответствующих запросов суда или уполномоченных государственных органов;<br />\r\n	раскрыта по иным основаниям, предусмотренным соглашением Сторон.<br />\r\n	7.5. Продавец вправе в одностороннем порядке вносить изменения в Соглашение путем публикации изменений на Сайте, если иное не предусмотрено новой редакцией Соглашения.&nbsp;<br />\r\n	7.6. Соглашение является юридически обязывающим договором между Покупателем и Продавцом содержит правила совершения покупок в Интернет-магазине.&nbsp;<br />\r\n	7.7. Данный договор считается заключенным с момента выдачи продавцом покупателю кассового или товарного чека, либо иного документа, подтверждающего оплату товара, или с момента получения продавцом сообщения о намерении приобрести товар.<br />\r\n	&nbsp;\r\n</p>\r\n', 'Договор', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-11-23 10:47:13', '2018-11-23 07:47:13', '', 49, 'http://wordpress/2018/11/23/49-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-11-23 10:50:04', '2018-11-23 07:50:04', '<h2 style=\"text-align: center;\">\r\n	<strong>ООО &laquo;СтройКомфорт&raquo;</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;ООО &laquo;СтройКомфорт&raquo; была основана в 2011 г. в городе мастеров &ndash; Туле. Сегодня компания строит деревянные дачные дома и бани в Московской, Тульской, Калужской, Рязанской, Орловской и Липецкой областях.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основная цель деятельности - удовлетворение ростущей потребности российского рынка в быстровозводимых домах для круглогодичного проживания и их строительство по доступным ценам.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Для этого сотрудники компании &laquo;СтройКомфорт&raquo; постоянно следят за всеми тенденциями рынка малоэтажного домостроения и стараются подобрать оптимальный проект для каждого клиента.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Несмотря на молодой возраст компании, опыт и профессиональные знания сотрудников являются большим преимуществом.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; Строительные бригады формируются из опытных специалистов, поэтому работают они достаточно быстро, качественно и за очень разумные деньги. Строительные бригады &mdash; настоящие профессионалы в деле строительства домов из бруса. При строительстве деревянных домов и бань из бруса, используются только качественные, экологически чистые строительные материалы, поэтому в построенных домах безопасно, комфортно и уютно. Помимо этого, осуществляется строительство бань и домов по индивидуальным проектам любой планировки и сложности.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;В компании работают, как молодые дипломированные специалисты в области проектирования и строительства, так и уже опытные сотрудники, имеющие за плечами огромный опыт советской школы домостроения.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; На сегодняшний день клиентами компании стали более 1 000 счастливых обладателей домов, бань, пристроек и фундаментов строений. Многие из клиентов поделились положительным отзывом о работе строительных бригад.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основной материал, который использует компания - это доска хвойных пород деревьев, которая закупается у партнеров в Новгородской, Пермской, Кировской областях уже на протяжении 5 лет.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основная миссия компании &ndash; максимально полное удовлетворение спроса своих клиентов, желающих создать уютное и практичное интерьерное пространство.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-full wp-image-28\" height=\"95\" src=\"http://wordpress/wp-content/uploads/2018/11/logo1.png\" width=\"190\" />\r\n</p>\r\n', 'Главная', '', 'trash', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f__trashed', '', '', '2018-11-23 10:52:08', '2018-11-23 07:52:08', '', 0, 'http://wordpress/?page_id=114', 0, 'page', '', 0),
(115, 1, '2018-11-23 10:50:04', '2018-11-23 07:50:04', '<h2 style=\"text-align: center;\">\r\n	<strong>ООО &laquo;СтройКомфорт&raquo;</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;ООО &laquo;СтройКомфорт&raquo; была основана в 2011 г. в городе мастеров &ndash; Туле. Сегодня компания строит деревянные дачные дома и бани в Московской, Тульской, Калужской, Рязанской, Орловской и Липецкой областях.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основная цель деятельности - удовлетворение ростущей потребности российского рынка в быстровозводимых домах для круглогодичного проживания и их строительство по доступным ценам.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Для этого сотрудники компании &laquo;СтройКомфорт&raquo; постоянно следят за всеми тенденциями рынка малоэтажного домостроения и стараются подобрать оптимальный проект для каждого клиента.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Несмотря на молодой возраст компании, опыт и профессиональные знания сотрудников являются большим преимуществом.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; Строительные бригады формируются из опытных специалистов, поэтому работают они достаточно быстро, качественно и за очень разумные деньги. Строительные бригады &mdash; настоящие профессионалы в деле строительства домов из бруса. При строительстве деревянных домов и бань из бруса, используются только качественные, экологически чистые строительные материалы, поэтому в построенных домах безопасно, комфортно и уютно. Помимо этого, осуществляется строительство бань и домов по индивидуальным проектам любой планировки и сложности.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;В компании работают, как молодые дипломированные специалисты в области проектирования и строительства, так и уже опытные сотрудники, имеющие за плечами огромный опыт советской школы домостроения.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; На сегодняшний день клиентами компании стали более 1 000 счастливых обладателей домов, бань, пристроек и фундаментов строений. Многие из клиентов поделились положительным отзывом о работе строительных бригад.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основной материал, который использует компания - это доска хвойных пород деревьев, которая закупается у партнеров в Новгородской, Пермской, Кировской областях уже на протяжении 5 лет.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основная миссия компании &ndash; максимально полное удовлетворение спроса своих клиентов, желающих создать уютное и практичное интерьерное пространство.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" class=\"alignnone size-full wp-image-28\" height=\"95\" src=\"http://wordpress/wp-content/uploads/2018/11/logo1.png\" width=\"190\" />\r\n</p>\r\n', 'Главная', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2018-11-23 10:50:04', '2018-11-23 07:50:04', '', 114, 'http://wordpress/2018/11/23/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-11-23 10:51:56', '2018-11-23 07:51:56', '<h2 style=\"text-align: center;\">\r\n	<strong>ООО &laquo;СтройКомфорт&raquo;</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;ООО &laquo;СтройКомфорт&raquo; была основана в 2011 г. в городе мастеров &ndash; Туле. Сегодня компания строит деревянные дачные дома и бани в Московской, Тульской, Калужской, Рязанской, Орловской и Липецкой областях.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основная цель деятельности - удовлетворение ростущей потребности российского рынка в быстровозводимых домах для круглогодичного проживания и их строительство по доступным ценам.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Для этого сотрудники компании &laquo;СтройКомфорт&raquo; постоянно следят за всеми тенденциями рынка малоэтажного домостроения и стараются подобрать оптимальный проект для каждого клиента.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Несмотря на молодой возраст компании, опыт и профессиональные знания сотрудников являются большим преимуществом.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Строительные бригады формируются из опытных специалистов, поэтому работают они достаточно быстро, качественно и за очень разумные деньги. Строительные бригады &mdash; настоящие профессионалы в деле строительства домов из бруса. При строительстве деревянных домов и бань из бруса, используются только качественные, экологически чистые строительные материалы, поэтому в построенных домах безопасно, комфортно и уютно. Помимо этого, осуществляется строительство бань и домов по индивидуальным проектам любой планировки и сложности.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;В компании работают, как молодые дипломированные специалисты в области проектирования и строительства, так и уже опытные сотрудники, имеющие за плечами огромный опыт советской школы домостроения.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; На сегодняшний день клиентами компании стали более 1 000 счастливых обладателей домов, бань, пристроек и фундаментов строений. Многие из клиентов поделились положительным отзывом о работе строительных бригад.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основной материал, который использует компания - это доска хвойных пород деревьев, которая закупается у партнеров в Новгородской, Пермской, Кировской областях уже на протяжении 5 лет.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основная миссия компании &ndash; максимально полное удовлетворение спроса своих клиентов, желающих создать уютное и практичное интерьерное пространство\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	.<img alt=\"\" class=\"alignnone size-full wp-image-28\" height=\"95\" src=\"http://wordpress/wp-content/uploads/2018/11/logo1.png\" width=\"190\" />\r\n</p>\r\n', '', '', 'publish', 'open', 'open', '', '116', '', '', '2018-11-23 10:51:56', '2018-11-23 07:51:56', '', 0, 'http://wordpress/?p=116', 0, 'post', '', 0),
(117, 1, '2018-11-23 10:51:56', '2018-11-23 07:51:56', '<h2 style=\"text-align: center;\">\r\n	<strong>ООО &laquo;СтройКомфорт&raquo;</strong>\r\n</h2>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;ООО &laquo;СтройКомфорт&raquo; была основана в 2011 г. в городе мастеров &ndash; Туле. Сегодня компания строит деревянные дачные дома и бани в Московской, Тульской, Калужской, Рязанской, Орловской и Липецкой областях.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основная цель деятельности - удовлетворение ростущей потребности российского рынка в быстровозводимых домах для круглогодичного проживания и их строительство по доступным ценам.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Для этого сотрудники компании &laquo;СтройКомфорт&raquo; постоянно следят за всеми тенденциями рынка малоэтажного домостроения и стараются подобрать оптимальный проект для каждого клиента.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Несмотря на молодой возраст компании, опыт и профессиональные знания сотрудников являются большим преимуществом.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Строительные бригады формируются из опытных специалистов, поэтому работают они достаточно быстро, качественно и за очень разумные деньги. Строительные бригады &mdash; настоящие профессионалы в деле строительства домов из бруса. При строительстве деревянных домов и бань из бруса, используются только качественные, экологически чистые строительные материалы, поэтому в построенных домах безопасно, комфортно и уютно. Помимо этого, осуществляется строительство бань и домов по индивидуальным проектам любой планировки и сложности.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;В компании работают, как молодые дипломированные специалисты в области проектирования и строительства, так и уже опытные сотрудники, имеющие за плечами огромный опыт советской школы домостроения.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; На сегодняшний день клиентами компании стали более 1 000 счастливых обладателей домов, бань, пристроек и фундаментов строений. Многие из клиентов поделились положительным отзывом о работе строительных бригад.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основной материал, который использует компания - это доска хвойных пород деревьев, которая закупается у партнеров в Новгородской, Пермской, Кировской областях уже на протяжении 5 лет.\r\n</p>\r\n\r\n<p style=\"text-align: justify;\">\r\n	&nbsp; &nbsp;Основная миссия компании &ndash; максимально полное удовлетворение спроса своих клиентов, желающих создать уютное и практичное интерьерное пространство\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	.<img alt=\"\" class=\"alignnone size-full wp-image-28\" height=\"95\" src=\"http://wordpress/wp-content/uploads/2018/11/logo1.png\" width=\"190\" />\r\n</p>\r\n', '', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-11-23 10:51:56', '2018-11-23 07:51:56', '', 116, 'http://wordpress/2018/11/23/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-11-23 10:53:31', '2018-11-23 07:53:31', '<p>\r\n	&nbsp; &nbsp;В ООО &quot;СтройКомфорт&quot;представлен большой ассортимент продукции, завоевавших отличную репутацию на рынке. которые имеются в продаже, производятся в соответствии с государственными стандартами.\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp;В наличии большие запасы строительных материалов, готовых к отправке в любой день. Поэтому у клиентов есть возможность приобрести стройматериалы оптом и в розницу, в любых объемах.\r\n</p>\r\n\r\n<p>\r\n	<strong>&nbsp; &nbsp;ВЫГОДНЫЕ УСЛОВИЯ СОТРУДНИЧЕСТВА</strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp;С компанией сотрудничают по многим причинам:\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp;Мы занимаемся строительством и ремонтом загородных домов с гарантией качества!\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp;Наличие партнерского производства позволяет осуществлять закупки надежных стройматериалов по низким ценам.\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp;ООО &quot;СтройКомфорт&quot; сотрудничаем с ведущими поставщиками, которые выпускают экологически чистую продукцию.\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp;Компания возводит дома в соответствии с установленным графиком работ. График согласовывается на этапе подписания договора. Каждую неделю постройки проверят инженеры или прорабы;\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp;Сотрудники &laquo;Стройкомфорт&raquo; &ndash; квалифицированные специалисты, которые прошли специальную подготовку и имеют за плечами большой опыт. Они постоянно повышают свою квалификацию, обучаясь новейшим строительным технологиям.<br />\r\n	&nbsp; &nbsp;Для сокращения сроков работы, регулярно обновляется парк спецтехники;\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp;Доступные цены. Обозначенная стоимость работ остается неизменной на протяжении всего процесса строительства;\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp;Каждый объект, возведенный специалистами ООО &quot;СтройКомфорт, продуман до мелочей и соответствует европейским стандартам качества!\r\n</p>\r\n\r\n<p>\r\n	удобное оформление заказа.<br />\r\n	&nbsp; &nbsp;Заказ строительных материалов занимает всего несколько мину\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp;ООО &laquo;Стройкомфорт&raquo; &mdash; это выбор тысячи жильцов коттеджных поселков!\r\n</p>\r\n\r\n<p>\r\n	<img alt=\"\" class=\"wp-image-33 aligncenter\" height=\"258\" src=\"http://wordpress/wp-content/uploads/2018/11/14-300x169.jpg\" width=\"458\" />\r\n</p>\r\n', 'О компании', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-11-23 10:53:31', '2018-11-23 07:53:31', '', 36, 'http://wordpress/2018/11/23/36-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-11-23 10:55:15', '2018-11-23 07:55:15', '<p>\r\n	В ООО &quot;СтройКомфорт&quot;представлен большой ассортимент продукции, завоевавших отличную репутацию на рынке. которые имеются в продаже, производятся в соответствии с государственными стандартами.\r\n</p>\r\n\r\n<p>\r\n	В наличии большие запасы строительных материалов, готовых к отправке в любой день. Поэтому у клиентов есть возможность приобрести стройматериалы оптом и в розницу, в любых объемах.\r\n</p>\r\n\r\n<p>\r\n	<strong>ВЫГОДНЫЕ УСЛОВИЯ СОТРУДНИЧЕСТВА</strong>\r\n</p>\r\n\r\n<p>\r\n	С компанией сотрудничают по многим причинам:\r\n</p>\r\n\r\n<p>\r\n	Мы занимаемся строительством и ремонтом загородных домов с гарантией качества!\r\n</p>\r\n\r\n<p>\r\n	Наличие партнерского производства позволяет осуществлять закупки надежных стройматериалов по низким ценам.\r\n</p>\r\n\r\n<p>\r\n	ООО &quot;СтройКомфорт&quot; сотрудничаем с ведущими поставщиками, которые выпускают экологически чистую продукцию.\r\n</p>\r\n\r\n<p>\r\n	Компания возводит дома в соответствии с установленным графиком работ. График согласовывается на этапе подписания договора. Каждую неделю постройки проверят инженеры или прорабы;\r\n</p>\r\n\r\n<p>\r\n	Сотрудники &laquo;Стройкомфорт&raquo; &ndash; квалифицированные специалисты, которые прошли специальную подготовку и имеют за плечами большой опыт. Они постоянно повышают свою квалификацию, обучаясь новейшим строительным технологиям.<br />\r\n	Для сокращения сроков работы, регулярно обновляется парк спецтехники;\r\n</p>\r\n\r\n<p>\r\n	Доступные цены. Обозначенная стоимость работ остается неизменной на протяжении всего процесса строительства;\r\n</p>\r\n\r\n<p>\r\n	Каждый объект, возведенный специалистами ООО &quot;СтройКомфорт, продуман до мелочей и соответствует европейским стандартам качества!\r\n</p>\r\n\r\n<p>\r\n	удобное оформление заказа.<br />\r\n	Заказ строительных материалов занимает всего несколько мину\r\n</p>\r\n\r\n<p>\r\n	ООО &laquo;Стройкомфорт&raquo; &mdash; это выбор тысячи жильцов коттеджных поселков!\r\n</p>\r\n\r\n<p>\r\n	<img alt=\"\" class=\"wp-image-33 aligncenter\" height=\"258\" src=\"http://wordpress/wp-content/uploads/2018/11/14-300x169.jpg\" width=\"458\" />\r\n</p>\r\n', 'О компании', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-11-23 10:55:15', '2018-11-23 07:55:15', '', 36, 'http://wordpress/2018/11/23/36-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-11-23 11:55:18', '2018-11-23 08:55:18', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-11-23 12:13:21', '2018-11-23 09:13:21', '', 0, 'http://wordpress/shop/', 0, 'page', '', 0),
(123, 1, '2018-11-23 11:55:18', '2018-11-23 08:55:18', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-11-23 11:55:18', '2018-11-23 08:55:18', '', 0, 'http://wordpress/cart/', 0, 'page', '', 0),
(124, 1, '2018-11-23 11:55:18', '2018-11-23 08:55:18', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-11-23 11:55:18', '2018-11-23 08:55:18', '', 0, 'http://wordpress/checkout/', 0, 'page', '', 0),
(125, 1, '2018-11-23 11:55:18', '2018-11-23 08:55:18', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-11-23 11:55:18', '2018-11-23 08:55:18', '', 0, 'http://wordpress/my-account/', 0, 'page', '', 0),
(126, 1, '2018-11-23 12:48:50', '2018-11-23 09:48:50', '<img class=\"alignnone size-medium wp-image-22\" src=\"http://wordpress/wp-content/uploads/2018/11/1-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" /><img class=\"alignnone size-full wp-image-128\" src=\"http://wordpress/wp-content/uploads/2018/11/3.jpg\" alt=\"\" width=\"289\" height=\"289\" /><img class=\"alignnone size-medium wp-image-127\" src=\"http://wordpress/wp-content/uploads/2018/11/2-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />', 'Брус клееный', '', 'trash', 'open', 'closed', '', '%d0%b1%d1%80%d1%83%d1%81-%d0%ba%d0%bb%d0%b5%d0%b5%d0%bd%d1%8b%d0%b9__trashed', '', '', '2018-11-24 07:58:11', '2018-11-24 04:58:11', '', 0, 'http://wordpress/?post_type=product&#038;p=126', 0, 'product', '', 0),
(127, 1, '2018-11-23 12:00:36', '2018-11-23 09:00:36', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-11-23 12:00:36', '2018-11-23 09:00:36', '', 126, 'http://wordpress/wp-content/uploads/2018/11/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2018-11-23 12:00:45', '2018-11-23 09:00:45', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-11-23 12:00:45', '2018-11-23 09:00:45', '', 126, 'http://wordpress/wp-content/uploads/2018/11/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2018-11-23 12:12:50', '2018-11-23 09:12:50', '', 'товар', '', 'trash', 'open', 'closed', '', '%d1%82%d0%be%d0%b2%d0%b0%d1%80__trashed', '', '', '2018-11-24 07:58:22', '2018-11-24 04:58:22', '', 0, 'http://wordpress/?post_type=product&#038;p=129', 0, 'product', '', 0),
(130, 1, '2018-11-23 12:13:21', '2018-11-23 09:13:21', '', 'Магазин', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2018-11-23 12:13:21', '2018-11-23 09:13:21', '', 122, 'http://wordpress/2018/11/23/122-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-11-23 12:14:54', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-11-23 12:14:54', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?post_type=product&p=131', 0, 'product', '', 0),
(132, 1, '2018-11-24 07:57:14', '0000-00-00 00:00:00', '', 'Order &ndash; Ноябрь 24, 2018 @ 07:57 ДП', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-11-24 07:57:14', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?post_type=shop_order&p=132', 0, 'shop_order', '', 0),
(133, 1, '2018-11-24 08:01:44', '2018-11-24 05:01:44', '<img class=\"alignnone size-medium wp-image-127\" src=\"http://wordpress/wp-content/uploads/2018/11/2-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />', 'Клееновый брус', '', 'publish', 'open', 'closed', '', '%d0%ba%d0%bb%d0%b5%d0%b5%d0%bd%d0%be%d0%b2%d1%8b%d0%b9-%d0%b1%d1%80%d1%83%d1%81', '', '', '2018-11-24 08:04:00', '2018-11-24 05:04:00', '', 0, 'http://wordpress/?post_type=product&#038;p=133', 0, 'product', '', 0),
(134, 1, '2018-11-24 08:06:18', '2018-11-24 05:06:18', '<img class=\"alignnone size-full wp-image-135\" src=\"http://wordpress/wp-content/uploads/2018/11/4.jpg\" alt=\"\" width=\"189\" height=\"200\" />', 'Профилированный брус', '', 'publish', 'open', 'closed', '', '%d0%bf%d1%80%d0%be%d1%84%d0%b8%d0%bb%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%bd%d1%8b%d0%b9-%d0%b1%d1%80%d1%83%d1%81', '', '', '2018-11-24 08:06:52', '2018-11-24 05:06:52', '', 0, 'http://wordpress/?post_type=product&#038;p=134', 0, 'product', '', 0),
(135, 1, '2018-11-24 08:05:16', '2018-11-24 05:05:16', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-11-24 08:05:16', '2018-11-24 05:05:16', '', 134, 'http://wordpress/wp-content/uploads/2018/11/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2018-11-24 08:10:48', '2018-11-24 05:10:48', '<img class=\"alignnone size-medium wp-image-137\" src=\"http://wordpress/wp-content/uploads/2018/11/13-300x198.jpg\" alt=\"\" width=\"300\" height=\"198\" />', 'Дом из клееного бруса', '', 'publish', 'open', 'closed', '', '%d0%b4%d0%be%d0%bc-%d0%b8%d0%b7-%d0%ba%d0%bb%d0%b5%d0%b5%d0%bd%d0%be%d0%b3%d0%be-%d0%b1%d1%80%d1%83%d1%81%d0%b0', '', '', '2018-11-24 08:10:48', '2018-11-24 05:10:48', '', 0, 'http://wordpress/?post_type=product&#038;p=136', 0, 'product', '', 0),
(137, 1, '2018-11-24 08:10:30', '2018-11-24 05:10:30', '', '13', '', 'inherit', 'open', 'closed', '', '13', '', '', '2018-11-24 08:10:30', '2018-11-24 05:10:30', '', 136, 'http://wordpress/wp-content/uploads/2018/11/13.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2018-11-24 08:14:08', '2018-11-24 05:14:08', '<img class=\"alignnone size-medium wp-image-139\" src=\"http://wordpress/wp-content/uploads/2018/11/22-1-300x219.jpg\" alt=\"\" width=\"300\" height=\"219\" />', 'Дом из профилированного бруса', '', 'publish', 'open', 'closed', '', '%d0%b4%d0%be%d0%bc-%d0%b8%d0%b7-%d0%bf%d1%80%d0%be%d1%84%d0%b8%d0%bb%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%bd%d0%be%d0%b3%d0%be-%d0%b1%d1%80%d1%83%d1%81%d0%b0', '', '', '2018-11-24 08:14:08', '2018-11-24 05:14:08', '', 0, 'http://wordpress/?post_type=product&#038;p=138', 0, 'product', '', 0),
(139, 1, '2018-11-24 08:13:54', '2018-11-24 05:13:54', '', '22', '', 'inherit', 'open', 'closed', '', '22', '', '', '2018-11-24 08:13:54', '2018-11-24 05:13:54', '', 138, 'http://wordpress/wp-content/uploads/2018/11/22-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2018-11-24 08:17:17', '2018-11-24 05:17:17', '<img class=\"alignnone size-medium wp-image-141\" src=\"http://wordpress/wp-content/uploads/2018/11/32-300x175.jpg\" alt=\"\" width=\"300\" height=\"175\" />', 'Дом из каркасного дома', '', 'publish', 'open', 'closed', '', '%d0%b4%d0%be%d0%bc-%d0%b8%d0%b7-%d0%ba%d0%b0%d1%80%d0%ba%d0%b0%d1%81%d0%bd%d0%be%d0%b3%d0%be-%d0%b4%d0%be%d0%bc%d0%b0', '', '', '2018-11-24 08:17:17', '2018-11-24 05:17:17', '', 0, 'http://wordpress/?post_type=product&#038;p=140', 0, 'product', '', 0),
(141, 1, '2018-11-24 08:17:07', '2018-11-24 05:17:07', '', '32', '', 'inherit', 'open', 'closed', '', '32', '', '', '2018-11-24 08:17:07', '2018-11-24 05:17:07', '', 140, 'http://wordpress/wp-content/uploads/2018/11/32.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2018-11-24 08:17:58', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:17:58', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=142', 1, 'nav_menu_item', '', 0),
(143, 1, '2018-11-24 08:17:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:17:58', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=143', 1, 'nav_menu_item', '', 0),
(144, 1, '2018-11-24 08:17:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:17:58', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=144', 1, 'nav_menu_item', '', 0),
(145, 1, '2018-11-24 08:17:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:17:58', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=145', 1, 'nav_menu_item', '', 0),
(146, 1, '2018-11-24 08:17:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:17:58', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=146', 1, 'nav_menu_item', '', 0),
(147, 1, '2018-11-24 08:17:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:17:58', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=147', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(148, 1, '2018-11-24 08:17:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:17:58', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=148', 1, 'nav_menu_item', '', 0),
(149, 1, '2018-11-24 08:17:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:17:58', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=149', 1, 'nav_menu_item', '', 0),
(150, 1, '2018-11-24 08:18:46', '2018-11-24 05:18:46', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2018-11-24 08:19:41', '2018-11-24 05:19:41', '', 0, 'http://wordpress/?p=150', 1, 'nav_menu_item', '', 0),
(151, 1, '2018-11-24 08:18:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:18:35', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=151', 1, 'nav_menu_item', '', 0),
(152, 1, '2018-11-24 08:18:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:18:35', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=152', 1, 'nav_menu_item', '', 0),
(153, 1, '2018-11-24 08:18:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-24 08:18:35', '0000-00-00 00:00:00', '', 0, 'http://wordpress/?p=153', 1, 'nav_menu_item', '', 0),
(154, 1, '2018-11-24 08:18:46', '2018-11-24 05:18:46', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2018-11-24 08:19:41', '2018-11-24 05:19:41', '', 0, 'http://wordpress/?p=154', 2, 'nav_menu_item', '', 0),
(155, 1, '2018-11-24 08:18:46', '2018-11-24 05:18:46', ' ', '', '', 'publish', 'closed', 'closed', '', '155', '', '', '2018-11-24 08:19:41', '2018-11-24 05:19:41', '', 0, 'http://wordpress/?p=155', 3, 'nav_menu_item', '', 0),
(156, 1, '2018-11-24 08:18:46', '2018-11-24 05:18:46', ' ', '', '', 'publish', 'closed', 'closed', '', '156', '', '', '2018-11-24 08:19:41', '2018-11-24 05:19:41', '', 0, 'http://wordpress/?p=156', 4, 'nav_menu_item', '', 0),
(157, 1, '2018-11-24 08:18:46', '2018-11-24 05:18:46', ' ', '', '', 'publish', 'closed', 'closed', '', '157', '', '', '2018-11-24 08:19:41', '2018-11-24 05:19:41', '', 0, 'http://wordpress/?p=157', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 77, 'product_count_product_cat', '5');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Самовывоз', 'vizit', 0),
(3, 'Наличными курьеру', 'cash', 0),
(4, 'Наложенный платеж', 'post', 0),
(5, 'Web-Money', 'wm', 0),
(6, 'Безналичный расчет', 'bank', 0),
(7, 'RoboKassa', 'robokassa', 0),
(8, 'Pay Pal', 'paypal', 0),
(9, 'Simplepay', 'simplepay', 0),
(10, 'Edinaya kassa', 'ek', 0),
(11, 'Yandex kassa', 'yandex_kassa', 0),
(12, 'Chronopay', 'chronopay', 0),
(13, 'SOFORT', 'sofort', 0),
(14, 'Yandex деньги', 'ym', 0),
(15, 'Сбербанк', 'sber', 0),
(16, 'ICredit', 'icredit', 0),
(17, 'Банк Тинькофф', 'tinkoff', 0),
(18, 'Artpay', 'ap', 0),
(19, 'Cryptonator', 'cripto', 0),
(20, 'Interkassa', 'interkassa', 0),
(21, 'Primearea', 'primearea', 0),
(22, 'Самовывоз', 'vizit', 0),
(23, 'Наличными курьеру', 'cash', 0),
(24, 'Наложенный платеж', 'post', 0),
(25, 'Web-Money', 'wm', 0),
(26, 'Безналичный расчет', 'bank', 0),
(27, 'RoboKassa', 'robokassa', 0),
(28, 'Pay Pal', 'paypal', 0),
(29, 'Simplepay', 'simplepay', 0),
(30, 'Edinaya kassa', 'ek', 0),
(31, 'Yandex kassa', 'yandex_kassa', 0),
(32, 'Chronopay', 'chronopay', 0),
(33, 'SOFORT', 'sofort', 0),
(34, 'Yandex деньги', 'ym', 0),
(35, 'Сбербанк', 'sber', 0),
(36, 'ICredit', 'icredit', 0),
(37, 'Банк Тинькофф', 'tinkoff', 0),
(38, 'Artpay', 'ap', 0),
(39, 'Cryptonator', 'cripto', 0),
(40, 'Interkassa', 'interkassa', 0),
(41, 'Primearea', 'primearea', 0),
(42, 'Самовывоз', 'vizit', 0),
(43, 'Наличными курьеру', 'cash', 0),
(44, 'Наложенный платеж', 'post', 0),
(45, 'Web-Money', 'wm', 0),
(46, 'Безналичный расчет', 'bank', 0),
(47, 'RoboKassa', 'robokassa', 0),
(48, 'Pay Pal', 'paypal', 0),
(49, 'Simplepay', 'simplepay', 0),
(50, 'Edinaya kassa', 'ek', 0),
(51, 'Yandex kassa', 'yandex_kassa', 0),
(52, 'Chronopay', 'chronopay', 0),
(53, 'SOFORT', 'sofort', 0),
(54, 'Yandex деньги', 'ym', 0),
(55, 'Сбербанк', 'sber', 0),
(56, 'ICredit', 'icredit', 0),
(57, 'Банк Тинькофф', 'tinkoff', 0),
(58, 'Artpay', 'ap', 0),
(59, 'Cryptonator', 'cripto', 0),
(60, 'Interkassa', 'interkassa', 0),
(61, 'Primearea', 'primearea', 0),
(62, 'Без оплаты', 'without_payment', 0),
(63, 'Подтверждение оплаты заказа', 'confirm', 0),
(64, 'simple', 'simple', 0),
(65, 'grouped', 'grouped', 0),
(66, 'variable', 'variable', 0),
(67, 'external', 'external', 0),
(68, 'exclude-from-search', 'exclude-from-search', 0),
(69, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(70, 'featured', 'featured', 0),
(71, 'outofstock', 'outofstock', 0),
(72, 'rated-1', 'rated-1', 0),
(73, 'rated-2', 'rated-2', 0),
(74, 'rated-3', 'rated-3', 0),
(75, 'rated-4', 'rated-4', 0),
(76, 'rated-5', 'rated-5', 0),
(77, 'Uncategorized', 'uncategorized', 0),
(78, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(8, 1, 0),
(12, 1, 0),
(14, 1, 0),
(17, 1, 0),
(26, 1, 0),
(61, 2, 0),
(62, 3, 0),
(63, 4, 0),
(64, 5, 0),
(65, 5, 0),
(66, 5, 0),
(67, 6, 0),
(68, 7, 0),
(69, 7, 0),
(70, 7, 0),
(71, 8, 0),
(72, 8, 0),
(73, 8, 0),
(74, 9, 0),
(75, 9, 0),
(76, 9, 0),
(77, 10, 0),
(78, 10, 0),
(79, 10, 0),
(80, 11, 0),
(81, 11, 0),
(82, 11, 0),
(83, 12, 0),
(84, 12, 0),
(85, 12, 0),
(86, 13, 0),
(87, 13, 0),
(88, 13, 0),
(89, 14, 0),
(90, 14, 0),
(91, 15, 0),
(92, 15, 0),
(93, 15, 0),
(94, 16, 0),
(95, 16, 0),
(96, 17, 0),
(97, 17, 0),
(98, 17, 0),
(99, 18, 0),
(100, 18, 0),
(101, 18, 0),
(102, 19, 0),
(103, 19, 0),
(104, 19, 0),
(105, 20, 0),
(106, 20, 0),
(107, 20, 0),
(108, 21, 0),
(109, 21, 0),
(110, 21, 0),
(116, 1, 0),
(126, 64, 0),
(126, 77, 0),
(129, 64, 0),
(129, 77, 0),
(133, 64, 0),
(133, 77, 0),
(134, 64, 0),
(134, 77, 0),
(136, 64, 0),
(136, 77, 0),
(138, 64, 0),
(138, 77, 0),
(140, 64, 0),
(140, 77, 0),
(150, 78, 0),
(154, 78, 0),
(155, 78, 0),
(156, 78, 0),
(157, 78, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'genre', '', 0, 1),
(3, 3, 'genre', '', 0, 1),
(4, 4, 'genre', '', 0, 1),
(5, 5, 'genre', '', 0, 3),
(6, 6, 'genre', '', 0, 1),
(7, 7, 'genre', '', 0, 3),
(8, 8, 'genre', '', 0, 3),
(9, 9, 'genre', '', 0, 3),
(10, 10, 'genre', '', 0, 3),
(11, 11, 'genre', '', 0, 3),
(12, 12, 'genre', '', 0, 3),
(13, 13, 'genre', '', 0, 3),
(14, 14, 'genre', '', 0, 2),
(15, 15, 'genre', '', 0, 3),
(16, 16, 'genre', '', 0, 2),
(17, 17, 'genre', '', 0, 3),
(18, 18, 'genre', '', 0, 3),
(19, 19, 'genre', '', 0, 3),
(20, 20, 'genre', '', 0, 3),
(21, 21, 'genre', '', 0, 3),
(22, 22, 'payment_del', '', 0, 0),
(23, 23, 'payment_del', '', 0, 0),
(24, 24, 'payment_del', '', 0, 0),
(25, 25, 'payment_del', '', 0, 0),
(26, 26, 'payment_del', '', 0, 0),
(27, 27, 'payment_del', '', 0, 0),
(28, 28, 'payment_del', '', 0, 0),
(29, 29, 'payment_del', '', 0, 0),
(30, 30, 'payment_del', '', 0, 0),
(31, 31, 'payment_del', '', 0, 0),
(32, 32, 'payment_del', '', 0, 0),
(33, 33, 'payment_del', '', 0, 0),
(34, 34, 'payment_del', '', 0, 0),
(35, 35, 'payment_del', '', 0, 0),
(36, 36, 'payment_del', '', 0, 0),
(37, 37, 'payment_del', '', 0, 0),
(38, 38, 'payment_del', '', 0, 0),
(39, 39, 'payment_del', '', 0, 0),
(40, 40, 'payment_del', '', 0, 0),
(41, 41, 'payment_del', '', 0, 0),
(42, 42, 'mail_type', '', 0, 0),
(43, 43, 'mail_type', '', 0, 0),
(44, 44, 'mail_type', '', 0, 0),
(45, 45, 'mail_type', '', 0, 0),
(46, 46, 'mail_type', '', 0, 0),
(47, 47, 'mail_type', '', 0, 0),
(48, 48, 'mail_type', '', 0, 0),
(49, 49, 'mail_type', '', 0, 0),
(50, 50, 'mail_type', '', 0, 0),
(51, 51, 'mail_type', '', 0, 0),
(52, 52, 'mail_type', '', 0, 0),
(53, 53, 'mail_type', '', 0, 0),
(54, 54, 'mail_type', '', 0, 0),
(55, 55, 'mail_type', '', 0, 0),
(56, 56, 'mail_type', '', 0, 0),
(57, 57, 'mail_type', '', 0, 0),
(58, 58, 'mail_type', '', 0, 0),
(59, 59, 'mail_type', '', 0, 0),
(60, 60, 'mail_type', '', 0, 0),
(61, 61, 'mail_type', '', 0, 0),
(62, 62, 'mail_type', '', 0, 0),
(63, 63, 'mail_type', '', 0, 0),
(64, 64, 'product_type', '', 0, 5),
(65, 65, 'product_type', '', 0, 0),
(66, 66, 'product_type', '', 0, 0),
(67, 67, 'product_type', '', 0, 0),
(68, 68, 'product_visibility', '', 0, 0),
(69, 69, 'product_visibility', '', 0, 0),
(70, 70, 'product_visibility', '', 0, 0),
(71, 71, 'product_visibility', '', 0, 0),
(72, 72, 'product_visibility', '', 0, 0),
(73, 73, 'product_visibility', '', 0, 0),
(74, 74, 'product_visibility', '', 0, 0),
(75, 75, 'product_visibility', '', 0, 0),
(76, 76, 'product_visibility', '', 0, 0),
(77, 77, 'product_cat', '', 0, 5),
(78, 78, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Makeeva'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"0d7f9161776a57fd8f4616ad72da5170adcc9594a5d01c9d90714e9210ded2af\";a:4:{s:10:\"expiration\";i:1543057869;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1542885069;}s:64:\"b41483697e9856f4a023d475b4b29ced9b90d0597c7cda703f68b8aef1616108\";a:4:{s:10:\"expiration\";i:1543121692;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1542948892;}s:64:\"8b5a5f43899e3bc8377dbaf4b24c2c0a574b61ef5a2facc366718fc8780970e6\";a:4:{s:10:\"expiration\";i:1543208134;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1543035334;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1542957235'),
(22, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"1385974ed5904a438616ff7bdb3f7439\";a:11:{s:3:\"key\";s:32:\"1385974ed5904a438616ff7bdb3f7439\";s:10:\"product_id\";i:140;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1520000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1520000;s:8:\"line_tax\";i:0;}}}'),
(23, 1, 'jetpack_tracks_anon_id', 'jetpack:hH1huSvQIE6/esul2Oe2bdFz'),
(24, 1, 'wc_last_active', '1543017600'),
(25, 1, 'closedpostboxes_product', 'a:0:{}'),
(26, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(27, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:11:{i:0;s:21:\"add-post-type-product\";i:1;s:25:\"add-post-type-wpshopcarts\";i:2;s:34:\"add-post-type-wpshop_user_delivery\";i:3;s:32:\"add-post-type-wpshop_client_mail\";i:4;s:26:\"add-post-type-wpshop_promo\";i:5;s:12:\"add-post_tag\";i:6;s:15:\"add-product_cat\";i:7;s:15:\"add-product_tag\";i:8;s:9:\"add-genre\";i:9;s:15:\"add-payment_del\";i:10;s:13:\"add-mail_type\";}'),
(29, 1, 'nav_menu_recently_edited', '78');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Makeeva', '$P$BsUivq6fqcIhlIEZdI5EfM93MfE8Yp.', 'makeeva', 'makeeva.maria45@gmail.com', '', '2018-11-22 11:10:39', '', 0, 'Makeeva');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(22, '1', 'a:14:{s:4:\"cart\";s:421:\"a:1:{s:32:\"1385974ed5904a438616ff7bdb3f7439\";a:11:{s:3:\"key\";s:32:\"1385974ed5904a438616ff7bdb3f7439\";s:10:\"product_id\";i:140;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1520000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1520000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:426:\"a:15:{s:8:\"subtotal\";s:10:\"1520000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:7:\"3000.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:10:\"1520000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:10:\"1523000.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:421:\"a:1:{s:32:\"1385974ed5904a438616ff7bdb3f7439\";a:11:{s:3:\"key\";s:32:\"1385974ed5904a438616ff7bdb3f7439\";s:10:\"product_id\";i:140;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:3040000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:3040000;s:8:\"line_tax\";i:0;}}\";s:8:\"customer\";s:713:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:25:\"makeeva.maria45@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"mailchimp_landing_site\";s:40:\"http://wordpress/wp-admin/admin-ajax.php\";s:10:\"wc_notices\";N;s:22:\"shipping_for_package_0\";s:410:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_6ace47dde8b5be74517622ec1e8cb944\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:7:\"3000.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:51:\"Дом из каркасного дома &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:21:\"chosen_payment_method\";s:11:\"ppec_paypal\";}', 1543137266);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Russia', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'RU', 'country');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpshop_ordered`
--

CREATE TABLE `wp_wpshop_ordered` (
  `ordered_id` int(11) NOT NULL,
  `ordered_pid` int(11) NOT NULL,
  `ordered_name` varchar(256) NOT NULL,
  `ordered_cost` float DEFAULT NULL,
  `ordered_count` int(11) DEFAULT NULL,
  `ordered_page_id` int(11) DEFAULT NULL,
  `ordered_key` varchar(255) DEFAULT NULL,
  `ordered_digit_count` int(11) NOT NULL DEFAULT '0',
  `ordered_digit_live` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpshop_orders`
--

CREATE TABLE `wp_wpshop_orders` (
  `order_id` int(11) NOT NULL,
  `order_date` int(11) NOT NULL,
  `order_discount` float DEFAULT NULL,
  `order_payment` varchar(20) DEFAULT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `client_email` varchar(50) DEFAULT NULL,
  `client_ip` varchar(50) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `order_status` int(11) DEFAULT NULL,
  `order_delivery` varchar(50) DEFAULT NULL,
  `order_comment` text,
  `order_promo` varchar(50) DEFAULT NULL,
  `order_delivery_cost` float DEFAULT NULL,
  `order_delivery_adress` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wpshop_selected_items`
--

CREATE TABLE `wp_wpshop_selected_items` (
  `selected_items_id` int(11) NOT NULL,
  `selected_items_session_id` varchar(40) NOT NULL,
  `selected_items_item_id` int(11) NOT NULL,
  `selected_items_key` varchar(255) DEFAULT NULL,
  `selected_items_name` varchar(256) NOT NULL,
  `selected_items_href` varchar(255) DEFAULT NULL,
  `selected_items_cost` float DEFAULT NULL,
  `selected_items_num` int(11) DEFAULT NULL,
  `selected_items_sklad` int(11) DEFAULT NULL,
  `selected_items_promo` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_huge_it_reslider_sliders`
--
ALTER TABLE `wp_huge_it_reslider_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_huge_it_reslider_slides`
--
ALTER TABLE `wp_huge_it_reslider_slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_wpshop_ordered`
--
ALTER TABLE `wp_wpshop_ordered`
  ADD PRIMARY KEY (`ordered_id`),
  ADD KEY `ordered_pid` (`ordered_pid`);

--
-- Индексы таблицы `wp_wpshop_orders`
--
ALTER TABLE `wp_wpshop_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `wp_wpshop_selected_items`
--
ALTER TABLE `wp_wpshop_selected_items`
  ADD PRIMARY KEY (`selected_items_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_huge_it_reslider_sliders`
--
ALTER TABLE `wp_huge_it_reslider_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_huge_it_reslider_slides`
--
ALTER TABLE `wp_huge_it_reslider_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=994;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT для таблицы `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wpshop_ordered`
--
ALTER TABLE `wp_wpshop_ordered`
  MODIFY `ordered_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wpshop_orders`
--
ALTER TABLE `wp_wpshop_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wpshop_selected_items`
--
ALTER TABLE `wp_wpshop_selected_items`
  MODIFY `selected_items_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_wpshop_ordered`
--
ALTER TABLE `wp_wpshop_ordered`
  ADD CONSTRAINT `wp_wpshop_ordered_ibfk_1` FOREIGN KEY (`ordered_pid`) REFERENCES `wp_wpshop_orders` (`order_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

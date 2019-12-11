-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2018 at 12:36 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.1.13-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `book_time` datetime NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `sidebar` tinyint(4) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `parent_id`, `position`, `status`, `sidebar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'HEADER-MENU', NULL, 1, 1, 2, '2018-02-01 05:52:23', '2018-02-01 09:14:56', NULL),
(2, 'Suile-Dreams', 1, 2, 1, 2, '2018-02-01 05:52:48', '2018-03-02 15:28:18', NULL),
(3, 'Restaurant-Bar', 1, 3, 1, 2, '2018-02-01 05:53:34', '2018-02-10 08:48:29', NULL),
(4, 'Relax', 1, 4, 1, 2, '2018-02-01 05:53:52', '2018-02-10 08:49:01', NULL),
(5, 'Destination', 1, 5, 1, 2, '2018-02-01 05:54:08', '2018-02-10 08:49:47', NULL),
(6, 'News', 1, 6, 1, 2, '2018-02-01 05:54:21', '2018-02-10 08:49:58', NULL),
(7, 'Images', 1, 7, 1, 2, '2018-02-01 05:54:41', '2018-02-04 23:27:55', NULL),
(8, 'Slide', 1, 8, 0, 2, '2018-02-01 07:18:14', '2018-02-25 09:48:29', NULL),
(9, 'ADVERTISEMENT', 10, 1, 1, 2, '2018-02-04 14:48:04', '2018-02-08 01:00:50', NULL),
(10, 'FOOTER-MENU', NULL, 2, 1, 2, '2018-02-04 16:40:19', '2018-02-04 23:37:56', NULL),
(11, 'Introduction', 1, 1, 1, 2, '2018-02-04 23:39:11', '2018-03-02 15:28:48', NULL),
(12, 'CONTACT', 10, 3, 1, 2, '2018-02-04 23:43:38', '2018-02-08 00:59:24', NULL),
(13, 'RECRUITMENT', 10, 2, 1, 2, '2018-02-04 23:44:08', '2018-02-08 00:59:59', NULL),
(14, 'excusion-services', 1, 9, 1, 2, '2018-02-25 20:33:19', '2018-02-26 02:05:02', NULL),
(15, 'services', 1, 15, 0, 2, '2018-02-26 15:02:18', '2018-02-26 15:02:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `description`, `locale`) VALUES
(1, 1, 'THANH ĐIỀU HƯỚNG ĐẦU TRANG', 'Thanh điều hướng đầu trang', 'vi'),
(2, 2, 'Loại phòng', 'Dịch vụ phòng', 'vi'),
(3, 3, 'Nhà hàng - Bar', 'À La Carte Đà Nẵng Beach mang đến cho du khách sự đa dạng trong việc lựa chọn món ăn và khu vực ăn uống. Du khách có thể tận hưởng bữa ăn ngay tại căn hộ của mình, thưởng thức một bữa ăn nhẹ nhanh chóng tại nhà hàng và thưởng ngoạn cảnh biển ngoạn mục từ trên quầy bar tầng thượng.', 'vi'),
(4, 4, 'Thư giãn', 'Đến với À La Carte, chúng tôi sẽ làm trẻ hóa các giác quan của du khách tại Spice Spa. Thư giãn và tái tạo cơ thể với nhiều liệu pháp spa và dịch vụ được chúng tôi đặc biệt lựa chọn để chăm sóc bạn chu đáo nhất.', 'vi'),
(5, 5, 'Điểm đến', 'Điểm đến', 'vi'),
(6, 6, 'Tiện nghi', 'Tiện nghi', 'vi'),
(7, 7, 'Hình ảnh', 'Hình ảnh', 'vi'),
(8, 8, 'ALaCarte', 'SLIDE2', 'vi'),
(9, 1, 'HEADER MENU', 'Navigation bar in header', 'en'),
(10, 2, 'Suite Dreams', 'SUITE DREAMS', 'en'),
(11, 3, 'Restaurant - Bar', 'À La Carte Danang Beach offers guests a wide variety of food choices and dining options. Guests can enjoy a meal at their own apartment, enjoy a quick snack at the restaurant and enjoy spectacular sea views from the rooftop bar.', 'en'),
(12, 4, 'Relax', 'Coming to La Carte, we will rejuvenate your senses at the Spice Spa. Relax and rejuvenate your body with a wide range of spa treatments and services that are specially selected for you to take care of you most.', 'en'),
(13, 5, 'Destination', 'DESTINATION', 'en'),
(14, 6, 'Facilities', 'Facilities', 'en'),
(15, 7, 'Galleries', 'GALLERIES', 'en'),
(16, 9, 'QUẢNG CÁO', 'Quảng Cáo', 'vi'),
(17, 10, 'THANH ĐIỀU HƯỚNG CUỐI TRANG', 'Thanh điều hướng cuối trang', 'vi'),
(18, 10, 'MENU FOOTER', 'Navigation bar in footer', 'en'),
(19, 11, 'Giới thiệu', 'Giới thiệu', 'vi'),
(20, 12, 'LIÊN HỆ', 'Liên hệ', 'vi'),
(21, 13, 'TUYỂN DỤNG', 'Tuyển dụng', 'vi'),
(22, 11, 'Introduction', 'Introduce', 'en'),
(23, 12, 'CONTACT', 'CONTACT', 'en'),
(24, 13, 'RECRUITMENT', 'RECRUITMENT', 'en'),
(25, 9, 'ADVERTISEMENT', 'Advertisement', 'en'),
(26, 14, 'Excusion Services', NULL, 'vi'),
(28, 15, 'Services', 'Services', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days_stay` tinyint(4) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `slug`, `price`, `image`, `time_start`, `time_end`, `is_hot`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Family-Fun', 765000, '/laravel-filemanager/1/33.jpg', '2018-03-05 02:55:12', '2018-03-10 02:55:12', 0, 1, '2018-02-09 21:27:02', '2018-02-26 10:15:39', NULL),
(2, 'thursday-pizza-day', 0, '/laravel-filemanager/1/44.jpg', '2018-03-05 02:55:12', '2018-03-10 02:55:13', 1, 1, '2018-02-09 21:31:39', '2018-02-26 10:36:22', NULL),
(3, 'nghi-duong-ve-cap-treo-khu-hoi-an-3-bua-tra-chieu-chi-3499000-vnd-phong', 4450000, '/laravel-filemanager/1/11.jpg', '2018-04-09 15:16:17', '2019-02-19 15:16:17', 1, 1, '2018-02-22 15:22:08', '2018-02-26 10:16:51', NULL),
(4, 'phong-2-bedroom-tien-san-bay-an-toi-cho-4-khach-chi-4299000-vnd-phong', 315000, '/laravel-filemanager/1/22.jpg', '2018-03-09 15:16:17', '2019-02-19 15:16:17', 1, 1, '2018-02-22 15:23:39', '2018-02-26 10:21:10', NULL),
(5, 'combo-3n2d-ve-may-bay-khu-hoi-dua-don-san-bay-an-toi-chi-3099000-vnd-khach', 3099000, '/assets/images/files/ThursdayPizza.jpg', '2018-02-23 15:16:17', '2019-02-09 15:16:17', 0, 1, '2018-02-22 15:27:06', '2018-02-26 02:51:34', '2018-02-26 02:51:34'),
(6, 'su-lua-chon-la-cua-ban', 2343000, '/assets/images/images/Group%2024.png', '2018-02-22 15:16:17', '2019-02-15 15:16:17', 0, 1, '2018-02-22 15:42:52', '2018-02-22 15:42:59', '2018-02-22 15:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `event_bookings`
--

CREATE TABLE `event_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `aldult` tinyint(4) NOT NULL,
  `child` tinyint(4) DEFAULT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_bookings`
--

INSERT INTO `event_bookings` (`id`, `name`, `phone`, `email`, `address`, `aldult`, `child`, `event_id`, `content`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'quang', '0987654321', 'quang@mail.com', NULL, 1, 0, 1, 'abc', 2, '2018-02-21 00:24:13', '2018-02-21 00:24:13', NULL),
(2, 'quang', '0123456789', 'quang@mail.com', NULL, 1, 0, 2, 'quang', 2, '2018-02-26 15:17:59', '2018-02-26 15:17:59', NULL),
(3, 'Khánh Nguyễn', '0983859783', 'it@alacartedanangbeach.com', NULL, 5, 0, 2, 'Tôi muốn đặt bàn cho 5 người', 1, '2018-03-01 09:53:33', '2018-03-01 13:04:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_translations`
--

CREATE TABLE `event_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_translations`
--

INSERT INTO `event_translations` (`id`, `event_id`, `name`, `description`, `content`, `locale`) VALUES
(1, 1, 'RELAX @SPICE SPA', 'Aches ? Pain ? Or just not right ? Try our New Signature DEEP TISSUE MASSAGE with Spa Consultant from Philippines.', '<p><img alt="" src="http://35.226.67.157/laravel-filemanager/1/3.jpg" style="height:200px; width:200px" /></p>', 'vi'),
(2, 2, 'THURSDAY PIZZA DAY', 'Buy 1 GET 1 FREE! Pizza Every Thursday, GAUDEN Draught Beer every Monday 7pm to 10pm.""', '<div class="entry-header has-post-format">\r\n<h2>THURSDAY PIZZA DAY</h2>\r\n</div>\r\n\r\n<div>\r\n<table border="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt="2.LCD Pizza Deli" src="http://www.alacartedanangbeach.com/images/extranews/1500_2.LCD_Pizza_-_Deli.jpg" /><img alt="8.LCD Draft Beer TOP " src="http://www.alacartedanangbeach.com/images/extranews/1500_8.LCD_Draft_Beer_-_TOP_.jpg" /></p>\r\n</div>', 'vi'),
(3, 3, 'Family Fun', 'Spend quality time together making memories on a family vacation with our À la Carte Da Nang Beach. Enjoy the ease of an all-inclusive hotel located at your favorite international destination with relaxing beach, pool and plenty of amennities for your children.""', '<div class="entry-header has-post-format">\r\n<h2>Family Fun</h2>\r\n</div>\r\n\r\n<div>\r\n<table border="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<img alt="" src="http://www.alacartedanangbeach.com/images/extranews/1500_Travellive.jpg" style="float:none; margin:auto" /></div>\r\n\r\n<p>&nbsp;</p>', 'vi'),
(4, 4, 'GOURMET FRIDAY BUFFET', 'Only vnd 315,000 for the first 20 guests. GOURMET friday buffet. @FishCa Restaurant - 2nd floor. 6:00pm to 9:30pm.', '<p><img alt="" src="http://35.226.67.157/laravel-filemanager/1/2.jpg" style="width:100%" /></p>', 'vi'),
(5, 5, 'Combo 3N2Đ + Vé máy bay khứ hồi + Đưa đón sân bay + Ăn tối chỉ 3.099.000 VND / Khách', 'Combo 3N2Đ + Vé máy bay khứ hồi + Đưa đón sân bay + Ăn tối chỉ 3.099.000 VND / Khách"', '<p style="text-align: justify;"><strong>Combo 3N2Đ + V&eacute; m&aacute;y bay khứ hồi + Đưa đ&oacute;n s&acirc;n bay + Ăn tối chỉ 3.099.000 VND / Kh&aacute;ch</strong></p>\r\n\r\n<p><em>Khởi h&agrave;nh từ Hồ Ch&iacute; Minh: 3.099.000 VND/ Kh&aacute;ch</em></p>\r\n\r\n<p><em>Khởi h&agrave;nh từ H&agrave; Nội: 3.399.000 VND/ Kh&aacute;ch</em></p>\r\n\r\n<p><em>Khởi h&agrave;nh từ Cần Thơ: 3.299.000 VND/ Kh&aacute;ch</em></p>\r\n\r\n<p>Combo bao gồm:</p>\r\n\r\n<p>&ndash; V&eacute; m&aacute;y bay khứ hồi đi Đ&agrave; Nẵng (bao gồm 7kg h&agrave;nh l&yacute; x&aacute;ch tay)</p>\r\n\r\n<p>&ndash; 02 đ&ecirc;m nghỉ dưỡng tại ph&ograve;ng Superior</p>\r\n\r\n<p>&ndash; Ăn s&aacute;ng Buffet</p>\r\n\r\n<p>&ndash; 1 bữa ăn tối Vietnamese set menu</p>\r\n\r\n<p>&ndash; Đưa đ&oacute;n s&acirc;n bay bằng xe limousine theo lịch tr&igrave;nh (Lịch đ&oacute;n từ s&acirc;n bay: 9h45&prime;, 16h, 18h30&prime; &ndash; Lịch đưa từ resort: 9h15&prime;, 15h30&prime;, 18h)</p>\r\n\r\n<p>&ndash; Miễn ph&iacute; sử dụng mini bar trong ph&ograve;ng</p>\r\n\r\n<p>&ndash; Miễn ph&iacute; sử dụng tr&agrave; chiều tại Elia Lounge (14h &ndash; 16h)</p>\r\n\r\n<p><em>Điều kiện &aacute;p dụng:</em></p>\r\n\r\n<p>&ndash; Đặt tối thiểu 2 kh&aacute;ch.</p>', 'vi'),
(6, 6, '"Sự lựa chọn là của bạn!"', '"Sự lựa chọn là của bạn!"', '<p>&quot;Sự lựa chọn l&agrave; của bạn!&quot; &quot;Sự lựa chọn l&agrave; của bạn!&quot; &quot;Sự lựa chọn l&agrave; của bạn!&quot;</p>', 'vi'),
(7, 2, 'THURSDAY PIZZA DAY', 'Buy 1 GET 1 FREE! Pizza Every Thursday, GAUDEN Draught Beer every Monday 7pm to 10pm."', '<div class="entry-header has-post-format">\r\n<h2>THURSDAY PIZZA DAY</h2>\r\n</div>\r\n\r\n<div>\r\n<table border="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt="2.LCD Pizza Deli" src="http://www.alacartedanangbeach.com/images/extranews/1500_2.LCD_Pizza_-_Deli.jpg" /><img alt="8.LCD Draft Beer TOP " src="http://www.alacartedanangbeach.com/images/extranews/1500_8.LCD_Draft_Beer_-_TOP_.jpg" /></p>\r\n</div>', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_01_04_063707_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_01_04_082944_create_categories_table', 1),
(5, '2018_01_04_082955_create_posts_table', 1),
(6, '2018_01_04_083011_create_multi_images_table', 1),
(7, '2018_01_04_083018_create_contacts_table', 1),
(8, '2018_01_12_150055_create_post_translations_table', 1),
(9, '2018_01_12_222706_create_category_translations_table', 1),
(10, '2018_01_17_141446_create_contact_replies_table', 1),
(11, '2018_01_18_095810_create_bookings_table', 1),
(12, '2018_01_24_135942_create_settings_table', 1),
(13, '2018_02_03_111920_create_events_table', 1),
(14, '2018_02_03_112143_create_event_translations_table', 1),
(15, '2018_02_04_123428_create_event_bookings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_id` int(11) NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `model_id`, `model_type`, `image`, `size`, `position`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 9, 'posts', 'b1d7bd720b7a998ab657d6e6b2505eee.png', '', 1, 1, '2018-02-04 13:56:28', '2018-02-04 13:56:28', NULL),
(13, 9, 'posts', '5b42ba1ae4412d5a88d41416d1b5df41.png', '', 2, 1, '2018-02-04 13:56:35', '2018-02-04 13:56:35', NULL),
(14, 9, 'posts', 'de6094852d4eb53c0fd1285810b9b309.png', '', 3, 1, '2018-02-04 13:56:41', '2018-02-04 13:56:41', NULL),
(15, 8, 'posts', 'e6b01f0feecff06ce2c94a0ad1680306.png', '', 1, 1, '2018-02-04 14:08:13', '2018-02-04 14:08:13', NULL),
(16, 8, 'posts', '8da1f6b68da0a563620da39a042614ef.png', '', 2, 1, '2018-02-04 14:08:21', '2018-02-04 14:08:21', NULL),
(17, 8, 'posts', 'df7b4d3f4c8322f37a46ee8850d31f6b.png', '', 3, 1, '2018-02-04 14:08:28', '2018-02-04 14:08:28', NULL),
(32, 6, 'posts', '93bf6a44ed761a69403b0427e6141894.jpg', '', 1, 1, '2018-02-08 02:29:05', '2018-02-08 02:29:05', NULL),
(33, 6, 'posts', '2d367a20662be85b7cc178f8ff80fcbc.jpg', '', 2, 1, '2018-02-08 02:29:05', '2018-02-08 02:29:05', NULL),
(34, 6, 'posts', '5d9c6efe7b6f4f3c0df9b4a0186de1f8.jpg', '', 3, 1, '2018-02-08 02:29:05', '2018-02-08 02:29:05', NULL),
(35, 6, 'posts', '6399a71cf0044e69d868ef69a94418c9.jpg', '', 4, 1, '2018-02-08 02:29:05', '2018-02-08 02:29:05', NULL),
(36, 6, 'posts', '6dc798dd072e798d008bac6b1033369a.jpg', '', 5, 1, '2018-02-08 02:29:05', '2018-02-08 02:29:05', NULL),
(37, 6, 'posts', '37731280e034f7ece0755f24e32a5f17.jpg', '', 6, 1, '2018-02-08 02:29:05', '2018-02-08 02:29:05', NULL),
(38, 6, 'posts', '6f87856653f36e76b1f67cd000d19c17.jpg', '', 7, 1, '2018-02-08 02:29:06', '2018-02-08 02:29:06', NULL),
(39, 6, 'posts', '01c4b939e5f69802878ed458c3d0add6.jpg', '', 8, 1, '2018-02-08 02:29:06', '2018-02-08 02:29:06', NULL),
(44, 18, 'posts', 'db3587968114ae45978a8d3bf60cc35d.png', '', 1, 1, '2018-02-09 00:00:56', '2018-02-09 00:02:33', NULL),
(45, 18, 'posts', '2877f890f99d01baf43bde098bb56b06.png', '', 2, 1, '2018-02-09 00:00:56', '2018-02-09 00:02:33', NULL),
(47, 18, 'posts', '264e61e96cbdeedcabc1aad802f67e5a.png', '', 3, 1, '2018-02-09 00:00:57', '2018-02-09 00:02:33', NULL),
(48, 18, 'posts', '116d44d219025135e3ea701dfafeb53c.png', '', 4, 1, '2018-02-09 00:00:57', '2018-02-09 00:02:33', NULL),
(49, 18, 'posts', '09a3d9f84b9e5d983133e4fd206f24b9.png', '', 5, 1, '2018-02-09 00:00:58', '2018-02-09 00:02:33', NULL),
(58, 18, 'posts', 'c3b19c4e0c036f894af645121ddda494.png', '', 8, 1, '2018-02-09 00:04:08', '2018-02-09 00:04:08', NULL),
(59, 18, 'posts', 'b06d41031dbac49f7504a201ec6d1a14.png', '', 9, 1, '2018-02-09 00:04:08', '2018-02-09 00:04:08', NULL),
(60, 18, 'posts', 'ed093332026ce79c9b9443222d6f693f.png', '', 10, 1, '2018-02-09 00:04:09', '2018-02-09 00:04:09', NULL),
(67, 11, 'categories', 'bc916a9b91b76cff579b17e24d431478.jpg', '', 1, 1, '2018-02-23 10:25:38', '2018-02-23 10:25:38', NULL),
(68, 5, 'categories', '3c8b3138ae816367b7424d2442e829ef.jpg', '', 1, 1, '2018-02-23 10:26:57', '2018-02-23 10:26:57', NULL),
(70, 13, 'categories', '3f6c5195f26a8c87bb2dde27ed7ec2a5.jpg', '', 1, 1, '2018-02-23 10:28:22', '2018-02-23 10:28:22', NULL),
(71, 12, 'categories', 'e49a3ce902fb3afc2159968238f06a9d.jpg', '', 1, 1, '2018-02-23 10:28:47', '2018-02-23 10:28:47', NULL),
(72, 7, 'categories', '5b5932e86d6a558441d817ba258e91f8.jpg', '', 1, 1, '2018-02-23 10:55:56', '2018-02-23 10:56:03', NULL),
(82, 25, 'posts', 'e2378321c17f8c28d6575ace6b3cbdf5.jpg', '', 1, 1, '2018-02-24 11:36:29', '2018-02-24 11:36:29', NULL),
(83, 26, 'posts', '7b5a243b2647ae0aaec644c7154d3529.jpg', '', 1, 1, '2018-02-24 11:38:13', '2018-02-24 11:38:13', NULL),
(93, 2, 'posts', 'bf32e53be4763a714261af6f6012b96b.jpg', '', 1, 1, '2018-02-24 17:24:32', '2018-02-24 17:24:32', NULL),
(94, 2, 'posts', '97d25476a42b232931b5c79e84f71f0d.jpg', '', 2, 1, '2018-02-24 17:24:32', '2018-02-24 17:24:32', NULL),
(95, 2, 'posts', 'dab38c66b0363449e4454364ac7c9b92.jpg', '', 3, 1, '2018-02-24 17:24:32', '2018-02-24 17:24:32', NULL),
(96, 3, 'posts', 'a72aa513c0a44d5d413d76286896fba9.jpg', '', 1, 1, '2018-02-24 17:28:09', '2018-02-24 17:28:09', NULL),
(97, 3, 'posts', 'a713af33a3a5676ddd5976b5fa67697c.jpg', '', 2, 1, '2018-02-24 17:28:09', '2018-02-24 17:28:09', NULL),
(98, 3, 'posts', '26ef472a36453b17ce8b7312ad61a12b.jpg', '', 3, 1, '2018-02-24 17:28:09', '2018-02-24 17:28:09', NULL),
(99, 3, 'posts', '6183f6edf5772bc1556f3c3049d34b20.jpg', '', 4, 1, '2018-02-24 17:28:09', '2018-02-24 17:28:09', NULL),
(100, 3, 'posts', '56d5fc32942ebf6884ed5d7f4aee86e4.jpg', '', 5, 1, '2018-02-24 17:28:10', '2018-02-24 17:28:10', NULL),
(101, 3, 'posts', '6a18e414ad925309aafe7827d13574aa.jpg', '', 6, 1, '2018-02-24 17:28:10', '2018-02-24 17:28:10', NULL),
(102, 3, 'posts', 'b700a4d2747903ee7da23c48cadfa1a0.jpg', '', 7, 1, '2018-02-24 17:28:10', '2018-02-24 17:28:10', NULL),
(103, 3, 'posts', 'f5d315d1d5872398ad46b12493f92a72.jpg', '', 8, 1, '2018-02-24 17:28:10', '2018-02-24 17:28:10', NULL),
(104, 3, 'posts', 'c27f4fc0a7b6b5d71400842d0a466af7.jpg', '', 9, 1, '2018-02-24 17:28:10', '2018-02-24 17:28:10', NULL),
(105, 13, 'posts', '5f3595ee7a0e9d50373361f0e978069c.jpg', '', 1, 1, '2018-02-24 17:33:11', '2018-02-24 17:33:11', NULL),
(106, 13, 'posts', '8f65a68dc219876e9a569fae32b8a810.jpg', '', 2, 1, '2018-02-24 17:33:11', '2018-02-24 17:33:11', NULL),
(107, 13, 'posts', '849a70ba910b6ec5adab3147dca3204b.jpg', '', 3, 1, '2018-02-24 17:33:11', '2018-02-24 17:33:11', NULL),
(108, 13, 'posts', '19d5f779e47c934b38e337f51ec1c074.jpg', '', 4, 1, '2018-02-24 17:33:12', '2018-02-24 17:33:12', NULL),
(109, 13, 'posts', 'b238984239f4019c87e6796b1681349c.jpg', '', 5, 1, '2018-02-24 17:33:12', '2018-02-24 17:33:12', NULL),
(110, 13, 'posts', '2c217eb2ca0bba1f4a4a8300ef1da5f8.jpg', '', 6, 1, '2018-02-24 17:33:12', '2018-02-24 17:33:12', NULL),
(111, 13, 'posts', 'fe817b472f3a30d65f911e27dabc2ec9.jpg', '', 7, 1, '2018-02-24 17:33:12', '2018-02-24 17:33:12', NULL),
(112, 14, 'posts', '29090e5b216a70ba3bbacd154dbe6e69.jpg', '', 1, 1, '2018-02-24 17:39:06', '2018-02-24 17:39:06', NULL),
(113, 14, 'posts', '11a053e038593e6fa8e6360298e6eb0a.jpg', '', 2, 1, '2018-02-24 17:39:06', '2018-02-24 17:39:06', NULL),
(114, 14, 'posts', '132a305a66512e96c1c0c39ca9c896f4.jpg', '', 3, 1, '2018-02-24 17:39:06', '2018-02-24 17:39:06', NULL),
(115, 14, 'posts', '0847a7dba44a659ae77e00bdee0b28e0.jpg', '', 4, 1, '2018-02-24 17:39:06', '2018-02-24 17:39:06', NULL),
(116, 14, 'posts', '0da34a86750f6b2a4106d934db7439d0.jpg', '', 5, 1, '2018-02-24 17:39:06', '2018-02-24 17:39:06', NULL),
(117, 14, 'posts', 'f8aa19c88ad79daf8925cdeca6191900.jpg', '', 6, 1, '2018-02-24 17:39:06', '2018-02-24 17:39:06', NULL),
(118, 19, 'posts', '2098921d4f638b8b6cd73809e6e1693a.jpg', '', 1, 1, '2018-02-24 17:45:59', '2018-02-24 17:45:59', NULL),
(119, 19, 'posts', '4d25b8488e67ce161a84b076d1e2b261.jpg', '', 2, 1, '2018-02-24 17:45:59', '2018-02-24 17:45:59', NULL),
(120, 19, 'posts', '126a3cee025547924ad8810db4c9cf68.jpg', '', 3, 1, '2018-02-24 17:45:59', '2018-02-24 17:45:59', NULL),
(121, 19, 'posts', 'bd196ba9be2bf98bdb8a27d662381b82.jpg', '', 4, 1, '2018-02-24 17:45:59', '2018-02-24 17:45:59', NULL),
(122, 19, 'posts', '29081468c61736229a58b05a03c61def.jpg', '', 5, 1, '2018-02-24 17:45:59', '2018-02-24 17:45:59', NULL),
(123, 19, 'posts', '3cd4b6801a7fa941407355d73cc88021.jpg', '', 6, 1, '2018-02-24 17:45:59', '2018-02-24 17:45:59', NULL),
(124, 19, 'posts', 'e9577e9b25d6ff4c72865bbd7e7fdb84.jpg', '', 7, 1, '2018-02-24 17:46:00', '2018-02-24 17:46:00', NULL),
(125, 19, 'posts', '3c7d0f791058ba612c17366ab9e42dba.jpg', '', 8, 1, '2018-02-24 17:46:00', '2018-02-24 17:46:00', NULL),
(126, 19, 'posts', '7d2144d073b46acc454e0b1cda741f32.jpg', '', 9, 1, '2018-02-24 17:46:00', '2018-02-24 17:46:00', NULL),
(127, 20, 'posts', '4a7292920e0be747dbbc2b82e20060a3.jpg', '', 1, 1, '2018-02-24 17:50:23', '2018-02-24 17:50:23', NULL),
(128, 20, 'posts', 'a02b7e98ae50534107cfedfc3c8518d7.jpg', '', 2, 1, '2018-02-24 17:50:23', '2018-02-24 17:50:23', NULL),
(129, 20, 'posts', '471986eda7212203591e837bcdd5aa8e.jpg', '', 3, 1, '2018-02-24 17:50:23', '2018-02-24 17:50:23', NULL),
(130, 20, 'posts', '8de961e7de93d23a08d72b426bee6101.jpg', '', 4, 1, '2018-02-24 17:50:23', '2018-02-24 17:50:23', NULL),
(131, 20, 'posts', '244a9c350f106b402b72be220856bfae.jpg', '', 5, 1, '2018-02-24 17:50:23', '2018-02-24 17:50:23', NULL),
(132, 20, 'posts', '2f96a82f64d0b3de2e37e5adb4998fc7.jpg', '', 6, 1, '2018-02-24 17:50:23', '2018-02-24 17:50:23', NULL),
(133, 20, 'posts', '9c317472f78c228000814f5ed625592b.jpg', '', 7, 1, '2018-02-24 17:50:23', '2018-02-24 17:50:23', NULL),
(134, 21, 'posts', 'f331fd34b1723fc1eaedfef0f1c14f5c.jpg', '', 1, 1, '2018-02-24 17:52:18', '2018-02-24 17:52:18', NULL),
(135, 21, 'posts', '6609742150b69ff26fc8622df3677d42.jpg', '', 2, 1, '2018-02-24 17:52:18', '2018-02-24 17:52:18', NULL),
(136, 21, 'posts', 'ff882b11af05b178b0f0996d66c7a555.jpg', '', 3, 1, '2018-02-24 17:52:18', '2018-02-24 17:52:18', NULL),
(137, 21, 'posts', '6a18e6ed29f76a29573ed4869171cc53.jpg', '', 4, 1, '2018-02-24 17:52:18', '2018-02-24 17:52:18', NULL),
(138, 21, 'posts', '5076c88b782e59016f2886aa3af2d416.jpg', '', 5, 1, '2018-02-24 17:52:18', '2018-02-24 17:52:18', NULL),
(139, 21, 'posts', 'd8a1a4c44583fed4335979af580403e2.jpg', '', 6, 1, '2018-02-24 17:52:18', '2018-02-24 17:52:18', NULL),
(140, 21, 'posts', '06c94ce2350bcbd6107d8f1b3aece4f3.jpg', '', 7, 1, '2018-02-24 17:52:18', '2018-02-24 17:52:18', NULL),
(141, 4, 'posts', 'a57e042fcaaa379929e04026aa8618a1.jpg', '', 1, 1, '2018-02-24 20:09:33', '2018-02-24 20:09:33', NULL),
(142, 4, 'posts', '2af4b5105709a1a8546d47f58209fdf5.jpg', '', 2, 1, '2018-02-24 20:09:34', '2018-02-24 20:09:34', NULL),
(143, 4, 'posts', '1d94a9ae9259c47ebd2186326f531023.jpg', '', 3, 1, '2018-02-24 20:09:34', '2018-02-24 20:09:34', NULL),
(144, 4, 'posts', 'a4261a2445d384faa0c036f6f14273d9.jpg', '', 4, 1, '2018-02-24 20:09:34', '2018-02-24 20:09:34', NULL),
(145, 4, 'posts', 'fb2984422994aea3bd360c775b8fe994.jpg', '', 5, 1, '2018-02-24 20:09:34', '2018-02-24 20:09:34', NULL),
(146, 4, 'posts', '41dfee0602122f6c6578f9a72301bd0f.jpg', '', 6, 1, '2018-02-24 20:09:34', '2018-02-24 20:09:34', NULL),
(147, 4, 'posts', '84552f4b6741c4297124242f92625c14.jpg', '', 7, 1, '2018-02-24 20:09:34', '2018-02-24 20:09:34', NULL),
(148, 5, 'posts', '323d63ef2124e2042dfaa2cf3eed04c3.jpg', '', 1, 1, '2018-02-24 20:10:28', '2018-02-24 20:10:28', NULL),
(149, 5, 'posts', 'c2495f74a5571e19eada4006473b8812.jpg', '', 2, 1, '2018-02-24 20:10:28', '2018-02-24 20:10:28', NULL),
(150, 5, 'posts', 'a24baa98f65504571ba768723af3e53e.jpg', '', 3, 1, '2018-02-24 20:10:28', '2018-02-24 20:10:28', NULL),
(151, 5, 'posts', '730aaddde5bfc188268885348ac63be7.jpg', '', 4, 1, '2018-02-24 20:10:28', '2018-02-24 20:10:28', NULL),
(152, 5, 'posts', 'fa0d2f120b7e37f0104b5a774d2c55b3.jpg', '', 5, 1, '2018-02-24 20:10:28', '2018-02-24 20:10:28', NULL),
(153, 22, 'posts', '45f6454b22500fe95123ebdc1ad9a872.jpg', '', 1, 1, '2018-02-24 20:10:49', '2018-02-24 20:10:49', NULL),
(154, 22, 'posts', 'b9c0c5766340230fd8c0362217472e51.jpg', '', 2, 1, '2018-02-24 20:10:49', '2018-02-24 20:10:49', NULL),
(155, 22, 'posts', 'c63b6f9fb9007c19aa39714c84b93c03.jpg', '', 3, 1, '2018-02-24 20:10:49', '2018-02-24 20:10:49', NULL),
(156, 22, 'posts', '8cda4d9c5b2584990b544291d2756a4e.jpg', '', 4, 1, '2018-02-24 20:10:49', '2018-02-24 20:10:49', NULL),
(157, 22, 'posts', '2d31dd578911cb53b18a8e567a447128.jpg', '', 5, 1, '2018-02-24 20:10:49', '2018-02-24 20:10:49', NULL),
(158, 22, 'posts', '9e7c031046ec52b24b3baabae0ac1496.jpg', '', 6, 1, '2018-02-24 20:10:49', '2018-02-24 20:10:49', NULL),
(159, 23, 'posts', '9d554d17a095a12a83a85bf00565bfcb.jpg', '', 1, 1, '2018-02-24 20:11:13', '2018-02-24 20:11:13', NULL),
(160, 23, 'posts', 'dcfff4ebb312f667518abc3c4b5005c7.jpg', '', 2, 1, '2018-02-24 20:11:13', '2018-02-24 20:11:13', NULL),
(161, 23, 'posts', '3b95075e96e3d4732219dc57e58b18a5.jpg', '', 3, 1, '2018-02-24 20:11:13', '2018-02-24 20:11:13', NULL),
(162, 23, 'posts', 'bc20980a99949b720391b8a04a360d7f.jpg', '', 4, 1, '2018-02-24 20:11:13', '2018-02-24 20:11:13', NULL),
(163, 23, 'posts', '947740ecc75140ceeae8f8f9b9901f9e.jpg', '', 5, 1, '2018-02-24 20:11:13', '2018-02-24 20:11:13', NULL),
(164, 23, 'posts', '1fed6b6af84e5321a3308445abb37b0c.jpg', '', 6, 1, '2018-02-24 20:11:13', '2018-02-24 20:11:13', NULL),
(165, 24, 'posts', 'd80ba0234ed272825a6a8bec80d0cfac.jpg', '', 1, 1, '2018-02-24 20:11:33', '2018-02-24 20:11:33', NULL),
(166, 7, 'posts', 'f247a9f596fc935802b343b2a4a1299a.jpg', '', 1, 1, '2018-02-24 20:13:28', '2018-02-24 20:13:28', NULL),
(167, 7, 'posts', '426a4039c5256ea68d56cec302432e2d.jpg', '', 2, 1, '2018-02-24 20:13:28', '2018-02-24 20:13:28', NULL),
(168, 7, 'posts', '97b276d486251400d2855654a67dcfca.jpg', '', 3, 1, '2018-02-24 20:13:35', '2018-02-24 20:13:35', NULL),
(169, 17, 'posts', 'c7d8b0035c04b761d0d66db732178861.jpg', '', 1, 1, '2018-02-25 08:56:23', '2018-02-25 08:56:23', NULL),
(170, 17, 'posts', '610b216aeb16da38f52a61509a8c6668.jpg', '', 2, 1, '2018-02-25 08:56:24', '2018-02-25 08:56:24', NULL),
(171, 17, 'posts', '6f7e815b74c9119f18ce42e24c18fb7b.jpg', '', 3, 1, '2018-02-25 08:56:25', '2018-02-25 08:56:25', NULL),
(172, 17, 'posts', 'f615f036aee4cd3defb7093866f2d715.jpg', '', 4, 1, '2018-02-25 08:56:25', '2018-02-25 08:56:25', NULL),
(173, 17, 'posts', '2d0ff7236ddee8ffae264d83a6bb488e.jpg', '', 5, 1, '2018-02-25 08:56:36', '2018-02-25 08:56:36', NULL),
(174, 28, 'posts', '48a58dc6061295505fd4e366c4f35770.jpg', '', 1, 1, '2018-02-25 19:16:57', '2018-02-25 19:16:57', NULL),
(175, 28, 'posts', '4c539e73203b5dc69cac2b001205ead8.jpg', '', 2, 1, '2018-02-25 19:16:57', '2018-02-25 19:16:57', NULL),
(176, 28, 'posts', 'd77a09f1a74b5938f89bd8c66b32cab0.jpg', '', 3, 1, '2018-02-25 19:16:57', '2018-02-25 19:16:57', NULL),
(177, 10, 'posts', '39ee904428f8b136c13e64f1922eb9aa.jpg', '', 1, 1, '2018-02-25 19:55:17', '2018-02-25 19:55:17', NULL),
(178, 10, 'posts', '9eb1acc77aff6e130164c0f34abbb082.jpg', '', 2, 1, '2018-02-25 19:55:17', '2018-02-25 19:55:17', NULL),
(179, 10, 'posts', 'a34e4b65f0b9bdc4d80b9b29ea0e02db.jpg', '', 3, 1, '2018-02-25 19:55:17', '2018-02-25 19:55:17', NULL),
(180, 31, 'posts', '857ba750c57e7e89ef1583d50c84b602.jpg', '', 1, 1, '2018-02-25 19:56:30', '2018-02-25 19:56:30', NULL),
(181, 31, 'posts', 'c4967f4851d1883417cd139bd5056313.jpg', '', 2, 1, '2018-02-25 19:56:30', '2018-02-25 19:56:30', NULL),
(182, 31, 'posts', '8bf9b2edf89f367bedbe1acb14799825.jpg', '', 3, 1, '2018-02-25 19:56:30', '2018-02-25 19:56:30', NULL),
(183, 32, 'posts', '8903aab30a7c82125a8406455e8558cc.jpg', '', 1, 1, '2018-02-25 20:03:18', '2018-02-25 20:03:18', NULL),
(184, 32, 'posts', '59daa51a800b649e4cfffa95427152c4.jpg', '', 2, 1, '2018-02-25 20:03:19', '2018-02-25 20:03:19', NULL),
(185, 32, 'posts', 'c4a2ba4a7c66acc9666d7f881d5cc1bd.jpg', '', 3, 1, '2018-02-25 20:03:19', '2018-02-25 20:03:19', NULL),
(191, 34, 'posts', '0932714ac68eda26a48e4988bae66d88.jpg', '', 1, 1, '2018-02-25 20:17:43', '2018-02-25 20:17:43', NULL),
(192, 34, 'posts', 'b9473f0b3373a5bb927fffb904dcad7e.jpg', '', 2, 1, '2018-02-25 20:17:43', '2018-02-25 20:17:43', NULL),
(193, 29, 'posts', '50d3fd63e3b72212a3a112e6d6d2c62e.jpg', '', 1, 1, '2018-02-25 20:21:12', '2018-02-25 20:21:12', NULL),
(194, 29, 'posts', '6800501f6297a82b7dd8843dfb7c77a8.jpg', '', 2, 1, '2018-02-25 20:21:12', '2018-02-25 20:21:12', NULL),
(195, 29, 'posts', '3ab1e132268f7619c5802a1db9ffa9d6.jpg', '', 3, 1, '2018-02-25 20:21:12', '2018-02-25 20:21:12', NULL),
(196, 29, 'posts', '0b95ea4b6587bf35a2d223fd3b22874d.jpg', '', 4, 1, '2018-02-25 20:21:12', '2018-02-25 20:21:12', NULL),
(197, 30, 'posts', '65190f0c9105dbc7cbb3b1bcea2bb0a6.jpg', '', 1, 1, '2018-02-25 20:30:23', '2018-02-25 20:30:23', NULL),
(198, 30, 'posts', 'f216d9eb0e64500d0b706d9eccebc9f1.jpg', '', 2, 1, '2018-02-25 20:30:23', '2018-02-25 20:30:23', NULL),
(199, 30, 'posts', '8897f0335a2800cc59dab22a5e64697b.jpg', '', 3, 1, '2018-02-25 20:30:23', '2018-02-25 20:30:23', NULL),
(200, 8, 'categories', 'f08d99ed6d81fbcd223af88765166f53.jpg', '', 1, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(201, 8, 'categories', '09170dc322bf48f2d1b3fc9bc396bd2d.jpg', '', 2, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(202, 8, 'categories', 'b4bbcb2bed7b671eb55314b8f0c9a112.jpg', '', 3, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(203, 8, 'categories', '494f6c111b977e5d08522eb429150710.jpg', '', 4, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(204, 8, 'categories', '8c6bb423a71481d09b7002a60a7a02cd.jpg', '', 5, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(205, 8, 'categories', 'b6ef293fb4e52300a366aaddbc773ca7.jpg', '', 6, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(206, 8, 'categories', 'd08a577bd66881302be241f2310ff753.jpg', '', 7, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(207, 8, 'categories', '8db90fcffca7f06f75a942cf8519f785.jpg', '', 8, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(208, 8, 'categories', 'fe59fd6a9fb6189c4c3ed17e0f1ded54.jpg', '', 9, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(209, 8, 'categories', 'fb2cb3ce7d16cd21a9f1f6bb0559ea3f.jpg', '', 10, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(210, 8, 'categories', '7ea493b8d4b4b8d6ead681f9095c3d9d.jpg', '', 11, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(211, 8, 'categories', '81a46ad22a99c2c21ccdc7122d1e03c8.jpg', '', 12, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(212, 8, 'categories', '27e13e17f5d80911ba995f528e4aab4a.jpg', '', 13, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(213, 8, 'categories', '47ad6054f0a8a773b956e848777c31b1.jpg', '', 14, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(214, 8, 'categories', '2399d267bc482649af8648694b04b55e.jpg', '', 15, 1, '2018-02-25 20:53:05', '2018-02-25 20:53:05', NULL),
(215, 8, 'categories', '3c0b19086e5de0f1a1260c7e6166dace.jpg', '', 16, 1, '2018-02-25 20:53:06', '2018-02-25 20:53:06', NULL),
(227, 2, 'categories', 'fee1f3fcf69e200db7a1244ba0df9fce.jpg', '', 1, 1, '2018-02-25 21:05:08', '2018-02-25 21:05:08', NULL),
(228, 2, 'categories', 'c31833004840582b27ec6b5480098928.JPG', '', 2, 1, '2018-02-25 21:05:08', '2018-02-25 21:05:08', NULL),
(229, 2, 'categories', '8bda1e37f8efe2ba8f60572efb1b1627.jpg', '', 3, 1, '2018-02-25 21:05:08', '2018-02-25 21:05:08', NULL),
(230, 2, 'categories', '981b9d05c0bdd8732da84d1b07c6a82d.jpg', '', 4, 1, '2018-02-25 21:05:08', '2018-02-25 21:05:08', NULL),
(231, 2, 'categories', 'c6727c0d99331bd9c9149c1546bd3d39.jpg', '', 5, 1, '2018-02-25 21:05:08', '2018-02-25 21:05:08', NULL),
(232, 2, 'categories', '93f83533cdac208e9a433dc4a96d26d6.jpg', '', 6, 1, '2018-02-25 21:05:08', '2018-02-25 21:05:08', NULL),
(233, 2, 'categories', '6531a4012d6d52012b156bccabb037ca.jpg', '', 7, 1, '2018-02-25 21:05:08', '2018-02-25 21:05:08', NULL),
(234, 2, 'categories', 'c6225ee9d48fb04fd76cdcc41871a092.jpg', '', 8, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(235, 2, 'categories', 'b6586911e944bbf16ee42f7c13ff3c64.JPG', '', 9, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(236, 2, 'categories', '65873d735bb021898ff207d29a8c472a.JPG', '', 10, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(237, 2, 'categories', '9a634f2c87c7580d855047c538d0180f.jpg', '', 11, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(238, 2, 'categories', 'c517e341fbaa36e57e423c487d71454b.jpg', '', 12, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(239, 2, 'categories', '94dca2d93a4e2a47e55e42e233549566.jpg', '', 13, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(240, 2, 'categories', '31c6b4b28a8cd92693f7a98b56360dff.jpg', '', 14, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(241, 2, 'categories', '334c26036915bb369938233c15bc05a2.jpg', '', 15, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(242, 2, 'categories', 'af90ae7fc95d1b44b98eaea7bff97cfd.jpg', '', 16, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(243, 2, 'categories', '32979aa909bfb97d7759b6acd9837121.JPG', '', 17, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(244, 2, 'categories', '5e368715d9dca611e0d9202a68df84c2.jpg', '', 18, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(245, 2, 'categories', '15e4910cca4b529bcff2ce5fdcec564f.jpg', '', 19, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(246, 2, 'categories', 'c6af17f12da8f57a2dc0450e4c09b2b0.jpg', '', 20, 1, '2018-02-25 21:05:09', '2018-02-25 21:05:09', NULL),
(247, 2, 'categories', 'a2c8a179c76b0c89da6c06991ff69ef1.jpg', '', 21, 1, '2018-02-25 21:06:04', '2018-02-25 21:06:04', NULL),
(248, 2, 'categories', '7801cb9e93d3abeae8405ba535091be9.jpg', '', 22, 1, '2018-02-25 21:06:04', '2018-02-25 21:06:04', NULL),
(249, 2, 'categories', 'b24bbdc8537c9fa3de00bd0208dc4f9c.jpg', '', 23, 1, '2018-02-25 21:06:04', '2018-02-25 21:06:04', NULL),
(250, 2, 'categories', '3a9e8b48b1f653534d54472d8ecdd1fc.jpg', '', 24, 1, '2018-02-25 21:06:04', '2018-02-25 21:06:04', NULL),
(251, 2, 'categories', '3240f22b5843e17396e834fbf40fd354.jpg', '', 25, 1, '2018-02-25 21:06:04', '2018-02-25 21:06:04', NULL),
(252, 2, 'categories', '7004f647ae931b16e37e718bc4b9517a.jpg', '', 26, 1, '2018-02-25 21:06:04', '2018-02-25 21:06:04', NULL),
(253, 2, 'categories', 'f53eed1fa2f8591267ed349a4325c14f.jpg', '', 27, 1, '2018-02-25 21:06:04', '2018-02-25 21:06:04', NULL),
(254, 2, 'categories', '05d6afd668ade615f8a7c5d7e106d5c2.jpg', '', 28, 1, '2018-02-25 21:06:04', '2018-02-25 21:06:04', NULL),
(268, 3, 'categories', '404ad526fe74493e33fe2768c45d5e2f.png', '', 1, 1, '2018-02-25 21:44:42', '2018-02-25 21:44:42', NULL),
(269, 4, 'categories', 'b0cc0d3fa8e795c81ccb7cad9dc77127.png', '', 1, 1, '2018-02-25 21:45:10', '2018-02-25 21:45:10', NULL),
(270, 4, 'categories', 'f697f81d91eb7c9faf645f708b75308d.jpg', '', 2, 1, '2018-02-25 21:45:47', '2018-02-25 21:45:47', NULL),
(271, 4, 'categories', '1840b564ab8b20a4e0387a256e445846.jpg', '', 3, 1, '2018-02-25 21:45:47', '2018-02-25 21:45:47', NULL),
(272, 4, 'categories', 'a730e4ce7be3f5d7582fe71530849b7c.jpg', '', 4, 1, '2018-02-25 21:45:47', '2018-02-25 21:45:47', NULL),
(273, 4, 'categories', '33907eca870a2f44bc04eb22ca52a348.jpg', '', 5, 1, '2018-02-25 21:45:47', '2018-02-25 21:45:47', NULL),
(274, 4, 'categories', 'f455ad7a65594c7e69ed928c182c3f90.jpg', '', 6, 1, '2018-02-25 21:45:47', '2018-02-25 21:45:47', NULL),
(275, 4, 'categories', 'feb65fc65cd3271997302957357525e4.jpg', '', 7, 1, '2018-02-25 21:45:47', '2018-02-25 21:45:47', NULL),
(276, 4, 'categories', 'afcd43faafdcd24954a87aa197b8a8b8.jpg', '', 8, 1, '2018-02-25 21:45:47', '2018-02-25 21:45:47', NULL),
(277, 4, 'categories', '8af452febd0c155263967b5b55732fed.jpg', '', 9, 1, '2018-02-25 21:45:47', '2018-02-25 21:45:47', NULL),
(278, 4, 'categories', '670ade2a0eadd4142dd0dc7bc0eb2029.jpg', '', 10, 1, '2018-02-25 21:45:47', '2018-02-25 21:45:47', NULL),
(279, 4, 'categories', '2f68de7f3ab84df7349699c16cb6c623.jpg', '', 11, 1, '2018-02-25 21:45:47', '2018-02-25 21:45:47', NULL),
(280, 4, 'categories', '43fa92cf3b8b46593573612d2a107be2.jpg', '', 12, 1, '2018-02-25 21:45:58', '2018-02-25 21:45:58', NULL),
(281, 4, 'categories', '8785a47991edaad60558f27f25ca79d8.jpg', '', 13, 1, '2018-02-25 21:45:58', '2018-02-25 21:45:58', NULL),
(282, 3, 'categories', '19cc05bdc227b00f432e9f7196ebd297.jpg', '', 2, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(283, 3, 'categories', '7959e50d8f16ad9931cb52672c72e398.jpg', '', 3, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(284, 3, 'categories', '83d87d1179f77a3fbdfa999a191aa67d.jpg', '', 4, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(285, 3, 'categories', 'f2ae3f03938f9f277067c642dd6d6c1c.jpg', '', 5, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(286, 3, 'categories', '22e40987350170d6c7cb19fa4178f510.jpg', '', 6, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(287, 3, 'categories', '52285ba9c3063aaeca864465d389c8ee.jpg', '', 7, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(288, 3, 'categories', 'd6f8126f35b07c525ae7f4113882e143.jpg', '', 8, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(289, 3, 'categories', '7b6932520e70da85c6b041c9a5d16947.jpg', '', 9, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(290, 3, 'categories', '57c90fdb0d7a62ed6d3c29fafd1f3d68.jpg', '', 10, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(291, 3, 'categories', '0760bd1749dd687b6458941d1874c169.jpg', '', 11, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(292, 3, 'categories', 'a5ad963782a4fdf29d61618efa95d1e1.jpg', '', 12, 1, '2018-02-25 21:46:20', '2018-02-25 21:46:20', NULL),
(293, 9, 'categories', '1f7e0d1c1e16a9ea7daaf91e8ffdcf44.jpg', '', 1, 1, '2018-02-25 21:58:02', '2018-02-25 21:58:02', NULL),
(294, 35, 'posts', '6303e0e43a163a550d87ed89d3622e78.jpg', '', 1, 1, '2018-02-25 22:03:46', '2018-02-25 22:03:46', NULL),
(295, 35, 'posts', '5a8fe0817c4e34e29ed27fcfd834d6c5.jpg', '', 2, 1, '2018-02-25 22:03:46', '2018-02-25 22:03:46', NULL),
(297, 33, 'posts', '1c008d9ed9ef67accff4978a1a1c606a.jpg', '', 1, 1, '2018-02-25 22:49:46', '2018-02-25 22:53:47', NULL),
(299, 33, 'posts', '8d16925a76f2183139de933a41b02c97.jpg', '', 2, 1, '2018-02-25 22:49:46', '2018-02-25 22:53:47', NULL),
(300, 33, 'posts', '930ab1957dcdc01464fbd8dce102e8f0.jpg', '', 3, 1, '2018-02-25 22:49:46', '2018-02-25 22:53:47', NULL),
(302, 33, 'posts', 'c43060eb76b2e63bf955f9697d04de10.jpg', '', 4, 1, '2018-02-25 22:52:33', '2018-02-25 22:53:47', NULL),
(303, 33, 'posts', '17ab2316c8cb42797c258686df4ff1c0.jpg', '', 5, 1, '2018-02-25 22:52:33', '2018-02-25 22:53:47', NULL),
(304, 33, 'posts', 'cf8550a2b9b2e99a2308ca3214be791f.jpg', '', 6, 1, '2018-02-25 22:53:59', '2018-02-25 22:53:59', NULL),
(305, 25, 'posts', '149bbb7655ab6f68a7c56c00fc405c91.jpg', '', 2, 1, '2018-02-26 03:12:37', '2018-02-26 03:12:37', NULL),
(306, 25, 'posts', '920a6b93515eb9208b93fb353a4b556f.jpg', '', 3, 1, '2018-02-26 03:12:37', '2018-02-26 03:12:37', NULL),
(307, 25, 'posts', '4d814d20392a6e71bb7be3cf85896c12.jpg', '', 4, 1, '2018-02-26 03:12:37', '2018-02-26 03:12:37', NULL),
(308, 25, 'posts', 'a17d6d4558914a4237dd14b7961c8008.jpg', '', 5, 1, '2018-02-26 03:12:37', '2018-02-26 03:12:37', NULL),
(309, 25, 'posts', 'eb4faa50416867a48434a3d71d5e857c.jpg', '', 6, 1, '2018-02-26 03:12:37', '2018-02-26 03:12:37', NULL),
(310, 26, 'posts', 'a74a174f8ad4d011b82add7347852a41.jpg', '', 2, 1, '2018-02-26 03:14:32', '2018-02-26 03:14:32', NULL),
(311, 26, 'posts', '1874b2925da17ae16cd7e84d3fe9209a.jpg', '', 3, 1, '2018-02-26 03:14:32', '2018-02-26 03:14:32', NULL),
(312, 26, 'posts', '20a26dd7f8246ce92861e1fa5d52d228.jpg', '', 4, 1, '2018-02-26 03:14:32', '2018-02-26 03:14:32', NULL),
(313, 26, 'posts', '0db43513b98eeb6ab9ece8a26dc3dadc.jpg', '', 5, 1, '2018-02-26 03:14:32', '2018-02-26 03:14:32', NULL),
(314, 26, 'posts', '7cd508cd3512ea34789071b7231fa06d.jpg', '', 6, 1, '2018-02-26 03:14:32', '2018-02-26 03:14:32', NULL),
(315, 47, 'posts', '4417a5856c4fa5973aeb86fd30c9ae14.jpg', '', 1, 1, '2018-02-26 03:17:07', '2018-02-26 03:17:07', NULL),
(316, 47, 'posts', '3749d3fde173d1d9fc5486846dc7348f.jpg', '', 2, 1, '2018-02-26 03:17:07', '2018-02-26 03:17:07', NULL),
(317, 47, 'posts', '6e2d0e6fb8d5488afafe179fec29ea24.jpg', '', 3, 1, '2018-02-26 03:17:07', '2018-02-26 03:17:07', NULL),
(318, 47, 'posts', '087225e83cc27c184ed4c370aa4156d8.jpg', '', 4, 1, '2018-02-26 03:17:07', '2018-02-26 03:17:07', NULL),
(319, 47, 'posts', 'd55cf1e3997a58150d2280ab95418daf.jpg', '', 5, 1, '2018-02-26 03:17:08', '2018-02-26 03:17:08', NULL),
(320, 47, 'posts', 'aa065e0c5aaeaa4447ba3497fe549345.jpg', '', 6, 1, '2018-02-26 03:17:08', '2018-02-26 03:17:08', NULL),
(321, 47, 'posts', 'e758d0da3ff5c15b0c9533461f896284.jpg', '', 7, 1, '2018-02-26 03:17:08', '2018-02-26 03:17:08', NULL),
(322, 47, 'posts', '42f1ed97f25b2bbb07b8249639e70602.jpg', '', 8, 1, '2018-02-26 03:17:08', '2018-02-26 03:17:08', NULL),
(323, 47, 'posts', '87424e163f83cfe5645f7afd1c143cc4.jpg', '', 9, 1, '2018-02-26 03:17:08', '2018-02-26 03:17:08', NULL),
(324, 47, 'posts', '751ecea93382f0bdaddf3712c5245dd8.jpg', '', 10, 1, '2018-02-26 03:17:08', '2018-02-26 03:17:08', NULL),
(325, 47, 'posts', 'f53fee333a82dd3b491ad017fccdaf6e.jpg', '', 11, 1, '2018-02-26 03:17:08', '2018-02-26 03:17:08', NULL),
(326, 39, 'posts', '230e15a11ca15ab36a8a37e3f6ca9c7f.jpg', '', 1, 1, '2018-02-26 03:27:05', '2018-02-26 03:27:05', NULL),
(327, 39, 'posts', 'c999ba8a4daa798bda67849bdd3e33da.jpg', '', 2, 1, '2018-02-26 03:27:05', '2018-02-26 03:27:05', NULL),
(328, 39, 'posts', '50933242bfe56aca9d0ff210ec8e6619.JPG', '', 3, 1, '2018-02-26 03:27:05', '2018-02-26 03:27:05', NULL),
(329, 39, 'posts', 'f57b1341d8af0aec483974a95526a228.jpg', '', 4, 1, '2018-02-26 03:27:05', '2018-02-26 03:27:05', NULL),
(330, 39, 'posts', 'c3c7ff7334a787480f59ac0ed12d5e81.jpg', '', 5, 1, '2018-02-26 03:27:05', '2018-02-26 03:27:05', NULL),
(331, 39, 'posts', '68c69bb72a79b9041df737b1efc9170c.jpg', '', 6, 1, '2018-02-26 03:27:05', '2018-02-26 03:27:05', NULL),
(332, 40, 'posts', '99d78c935ec70b59da17121071370950.jpg', '', 1, 1, '2018-02-26 03:28:57', '2018-02-26 03:28:57', NULL),
(333, 40, 'posts', '20c51c5e33deccae682279bdd5080409.jpg', '', 2, 1, '2018-02-26 03:28:57', '2018-02-26 03:28:57', NULL),
(334, 40, 'posts', '397fe6c02bc847beb2448068f4df30f2.jpg', '', 3, 1, '2018-02-26 03:28:57', '2018-02-26 03:28:57', NULL),
(335, 40, 'posts', '49bcae69a9f4eda3c53c79175ec828b8.jpg', '', 4, 1, '2018-02-26 03:28:57', '2018-02-26 03:28:57', NULL),
(336, 40, 'posts', '1d849d84a686ac2c54415593754dedd8.jpg', '', 5, 1, '2018-02-26 03:28:57', '2018-02-26 03:28:57', NULL),
(337, 40, 'posts', '472ca59033b617f61d29f72dee85770e.jpg', '', 6, 1, '2018-02-26 03:28:57', '2018-02-26 03:28:57', NULL),
(338, 41, 'posts', '3a8a45bcb240f61ba8d9e8d0811bf4de.jpg', '', 1, 1, '2018-02-26 03:30:14', '2018-02-26 03:30:14', NULL),
(339, 41, 'posts', '70fd79b16357154ba21b8a481a5b4d3c.jpg', '', 2, 1, '2018-02-26 03:30:14', '2018-02-26 03:30:14', NULL),
(340, 41, 'posts', 'bc38cf2bbebf328495bdf702cf9efaa3.JPG', '', 3, 1, '2018-02-26 03:30:14', '2018-02-26 03:30:14', NULL),
(341, 41, 'posts', 'eb4061d904fdc4c749beceb7e1f3b85f.jpg', '', 4, 1, '2018-02-26 03:30:14', '2018-02-26 03:30:14', NULL),
(342, 41, 'posts', 'ac1bf2d3745b7668736d06eca9606e23.jpg', '', 5, 1, '2018-02-26 03:30:14', '2018-02-26 03:30:14', NULL),
(343, 42, 'posts', '29feaaeeef933f61b45d32cb33b29820.jpg', '', 1, 1, '2018-02-26 03:31:38', '2018-02-26 03:31:38', NULL),
(344, 42, 'posts', 'a7ada4a43db4972e56d137b2a248026e.jpg', '', 2, 1, '2018-02-26 03:31:38', '2018-02-26 03:31:38', NULL),
(345, 42, 'posts', 'c93918ce0763b7d34628bc9b697ff4cf.jpg', '', 3, 1, '2018-02-26 03:31:38', '2018-02-26 03:31:38', NULL),
(346, 42, 'posts', 'd8c5e42ac389c32d37c9a416eae3f6ba.jpg', '', 4, 1, '2018-02-26 03:31:38', '2018-02-26 03:31:38', NULL),
(347, 42, 'posts', 'dda4b24a265315bffab78ca5a4968117.jpg', '', 5, 1, '2018-02-26 03:31:38', '2018-02-26 03:31:38', NULL),
(348, 42, 'posts', 'd4a89185471f66b20e0633f3cda6b2cd.jpg', '', 6, 1, '2018-02-26 03:31:38', '2018-02-26 03:31:38', NULL),
(349, 43, 'posts', '0bdc07d558684edae30471c13005bc9e.jpg', '', 1, 1, '2018-02-26 03:34:33', '2018-02-26 03:34:33', NULL),
(350, 43, 'posts', '87f89a739655373568d8d9fcb851a2a3.JPG', '', 2, 1, '2018-02-26 03:34:33', '2018-02-26 03:34:33', NULL),
(351, 43, 'posts', '9f8a56eadb8ade1a55f6af218fbeb327.jpg', '', 3, 1, '2018-02-26 03:34:33', '2018-02-26 03:34:33', NULL),
(352, 43, 'posts', 'bcf2cf66af3775f012c904bff0f94485.JPG', '', 4, 1, '2018-02-26 03:34:33', '2018-02-26 03:34:33', NULL),
(353, 43, 'posts', '35bed87fd2f2830a244368dffaeabf23.jpg', '', 5, 1, '2018-02-26 03:34:33', '2018-02-26 03:34:33', NULL),
(354, 43, 'posts', '1dd50aeeb7d623200a7e9615fdab8652.jpg', '', 6, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(355, 43, 'posts', 'fcbf7604fab8d03ed0ad1950d2058318.jpg', '', 7, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(356, 43, 'posts', '199530b5159ef2eac7ec53bcbff98a80.jpg', '', 8, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(357, 43, 'posts', 'd1b9ecfc66aa10661f4a5492d11bc2f4.jpg', '', 9, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(358, 43, 'posts', '1b3d07af12c928b6d4c23728fded6718.jpg', '', 10, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(359, 43, 'posts', 'ec8e6b6022617da6b53d70ed4f4b7da9.jpg', '', 11, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(360, 43, 'posts', '7f48816eaf67422babcf9ac8c11a417b.jpg', '', 12, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(361, 43, 'posts', 'c58a6e54d59d3187a19770c523855f73.jpg', '', 13, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(362, 43, 'posts', '78f6346ebbd9b3e8bf61822184f90dc6.jpg', '', 14, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(363, 43, 'posts', '6e1268d8ba1ef3ffdc03a00f54480bf0.jpg', '', 15, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(364, 43, 'posts', '0a07a8a0fd760811c2a4324ac6a1ce01.jpg', '', 16, 1, '2018-02-26 03:34:34', '2018-02-26 03:34:34', NULL),
(365, 44, 'posts', '6c9df810d0429efc48af05d635491ead.jpg', '', 1, 1, '2018-02-26 03:37:13', '2018-02-26 03:37:13', NULL),
(366, 44, 'posts', 'd4afe44720606bde2c0b6a4c98c98a4e.jpg', '', 2, 1, '2018-02-26 03:37:13', '2018-02-26 03:37:13', NULL),
(367, 44, 'posts', 'e8071f6074164d958d39ba63392c10be.jpg', '', 3, 1, '2018-02-26 03:37:13', '2018-02-26 03:37:13', NULL),
(368, 44, 'posts', '8e58cf693d6438196e0b1f03f7f1f1c2.jpg', '', 4, 1, '2018-02-26 03:37:13', '2018-02-26 03:37:13', NULL),
(369, 44, 'posts', '349f40ac088ee3e2e0cfa510a9ceb9c6.jpg', '', 5, 1, '2018-02-26 03:37:13', '2018-02-26 03:37:13', NULL),
(370, 44, 'posts', '8caa5664683be575b61150bce5ba5b41.JPG', '', 6, 1, '2018-02-26 03:37:14', '2018-02-26 03:37:14', NULL),
(371, 44, 'posts', '7f6dd064bf9771073fd6a9cd071c8e98.jpg', '', 7, 1, '2018-02-26 03:37:14', '2018-02-26 03:37:14', NULL),
(372, 44, 'posts', 'c0c8f2af9e4ea2477bc8faa98d425dad.jpg', '', 8, 1, '2018-02-26 03:37:14', '2018-02-26 03:37:14', NULL),
(373, 44, 'posts', 'b9ceaa90433db8eb4f2487b15a477b34.jpg', '', 9, 1, '2018-02-26 03:37:14', '2018-02-26 03:37:14', NULL),
(374, 44, 'posts', '67b7e3b7f2e565c2f8e03587015e7ee7.jpg', '', 10, 1, '2018-02-26 03:37:14', '2018-02-26 03:37:14', NULL),
(375, 44, 'posts', '986264593583f069e2ee67b5c5cf049c.JPG', '', 11, 1, '2018-02-26 03:37:14', '2018-02-26 03:37:14', NULL),
(376, 44, 'posts', '447b848f894545b08496e93e43739416.jpg', '', 12, 1, '2018-02-26 03:37:14', '2018-02-26 03:37:14', NULL),
(377, 44, 'posts', '6d3a71d90bb95c7365c4161965235676.jpg', '', 13, 1, '2018-02-26 03:37:14', '2018-02-26 03:37:14', NULL),
(378, 44, 'posts', '209435681b2915a9c3933b4bf6d701ed.jpg', '', 14, 1, '2018-02-26 03:37:14', '2018-02-26 03:37:14', NULL),
(379, 45, 'posts', 'caffb2ae92d6877f406cd1e6eb011181.jpg', '', 1, 1, '2018-02-26 03:39:47', '2018-02-26 03:39:47', NULL),
(380, 45, 'posts', '852afdccd3c5685d9f77f18558a0dbfa.jpg', '', 2, 1, '2018-02-26 03:39:47', '2018-02-26 03:39:47', NULL),
(381, 45, 'posts', 'c8417d1e142b35646967b6aee3cd1ee6.jpg', '', 3, 1, '2018-02-26 03:39:47', '2018-02-26 03:39:47', NULL),
(382, 45, 'posts', 'b58bdb7b4cd6f2bc4c59b33021ff9e7a.jpg', '', 4, 1, '2018-02-26 03:39:47', '2018-02-26 03:39:47', NULL),
(383, 45, 'posts', '601e9f718424cba16a9563be6be5900e.jpg', '', 5, 1, '2018-02-26 03:39:47', '2018-02-26 03:39:47', NULL),
(384, 45, 'posts', '414cc052aa6dfaec6ee71c6a986b56a8.jpg', '', 6, 1, '2018-02-26 03:39:47', '2018-02-26 03:39:47', NULL),
(385, 45, 'posts', '0fd5ace55af57a7768bb66735181cd22.jpg', '', 7, 1, '2018-02-26 03:39:48', '2018-02-26 03:39:48', NULL),
(386, 45, 'posts', 'dd97b42176ffdbdbc155a8534cc2dd91.jpg', '', 8, 1, '2018-02-26 03:39:48', '2018-02-26 03:39:48', NULL),
(387, 45, 'posts', 'a865ff50447488cc9c3f94006db0f6a5.JPG', '', 9, 1, '2018-02-26 03:39:48', '2018-02-26 03:39:48', NULL),
(388, 45, 'posts', '18ed4b981c8e0da56bcfc47658009bd5.jpg', '', 10, 1, '2018-02-26 03:39:48', '2018-02-26 03:39:48', NULL),
(389, 45, 'posts', '575646704cfbf5b6b813d250cd391e73.JPG', '', 11, 1, '2018-02-26 03:39:48', '2018-02-26 03:39:48', NULL),
(390, 45, 'posts', 'e8d001b754fec12453e0a07c2e7c8a23.jpg', '', 12, 1, '2018-02-26 03:39:48', '2018-02-26 03:39:48', NULL),
(391, 45, 'posts', '6a06e75115c2786150fd474c1de47480.jpg', '', 13, 1, '2018-02-26 03:39:48', '2018-02-26 03:39:48', NULL),
(393, 52, 'posts', '6dec8be5c611885e774350570c4339d6.jpg', '', 2, 1, '2018-02-26 16:58:02', '2018-02-26 16:58:02', NULL),
(394, 52, 'posts', '2cb64ffaf9c35cea7f2db19a6903f725.JPG', '', 3, 1, '2018-02-26 16:58:02', '2018-02-26 16:58:02', NULL),
(395, 52, 'posts', '6be6f2d206b71fd8ffb35ddf78529e51.jpg', '', 4, 1, '2018-02-26 16:58:03', '2018-02-26 16:58:03', NULL),
(396, 52, 'posts', 'af74cc761d5193698dc0dfbfdbd91a0d.JPG', '', 5, 1, '2018-02-26 16:58:03', '2018-02-26 16:58:03', NULL),
(397, 51, 'posts', '80e2150f11203c84bc1e939fd02e3ad2.jpg', '', 1, 1, '2018-02-26 16:58:42', '2018-02-26 16:58:42', NULL),
(398, 51, 'posts', '9d91095912a1a20ca1ee8cb9d96e8321.jpg', '', 2, 1, '2018-02-26 16:58:42', '2018-02-26 16:58:42', NULL),
(399, 51, 'posts', '3ce48b402c79872eaaf2fadfb0f837ed.JPG', '', 3, 1, '2018-02-26 16:58:42', '2018-02-26 16:58:42', NULL),
(400, 51, 'posts', '31de7aef6404cd85b2a1dfd0ee00be7f.jpg', '', 4, 1, '2018-02-26 16:58:42', '2018-02-26 16:58:42', NULL),
(401, 51, 'posts', 'c54aea7c40675529bbc04ce2b7339285.jpg', '', 5, 1, '2018-02-26 16:58:42', '2018-02-26 16:58:42', NULL),
(402, 51, 'posts', 'aa2acfd1137d280b635527dc45b21cad.jpg', '', 6, 1, '2018-02-26 16:58:42', '2018-02-26 16:58:42', NULL),
(403, 50, 'posts', '0a56a7993043f56d28326450d347ace8.jpg', '', 1, 1, '2018-02-26 16:59:09', '2018-02-26 16:59:09', NULL),
(405, 50, 'posts', 'a36b0dcb2c6f25a95ddd1794dd8eaeb5.jpg', '', 3, 1, '2018-02-26 16:59:09', '2018-02-26 16:59:09', NULL),
(406, 50, 'posts', 'c8d76e0864622a85ed9e3716fb093a5f.jpg', '', 4, 1, '2018-02-26 16:59:09', '2018-02-26 16:59:09', NULL),
(407, 50, 'posts', '9c2c569c21b47e2615bf594f605f4617.jpg', '', 5, 1, '2018-02-26 16:59:10', '2018-02-26 16:59:10', NULL),
(408, 49, 'posts', 'cc66fd4b483f4e9047ac1a02f955366c.jpg', '', 1, 1, '2018-02-26 16:59:38', '2018-02-26 16:59:38', NULL),
(409, 49, 'posts', '25ef8280055746d68a537f682aa2cc1c.jpg', '', 2, 1, '2018-02-26 16:59:38', '2018-02-26 16:59:38', NULL),
(410, 49, 'posts', 'a9e4405c81e29a061914562e57ee5544.JPG', '', 3, 1, '2018-02-26 16:59:38', '2018-02-26 16:59:38', NULL),
(411, 49, 'posts', 'e153262075c2676ceef8296e2ad641ad.jpg', '', 4, 1, '2018-02-26 16:59:38', '2018-02-26 16:59:38', NULL),
(412, 49, 'posts', '1815673cd72187cf1448ad300375f5b5.jpg', '', 5, 1, '2018-02-26 16:59:38', '2018-02-26 16:59:38', NULL),
(413, 49, 'posts', '9682b69cfc7935b88e7c419b545ed2d0.jpg', '', 6, 1, '2018-02-26 16:59:39', '2018-02-26 16:59:39', NULL),
(414, 48, 'posts', 'f4736db969606d442f8aff369302dbb8.jpg', '', 1, 1, '2018-02-26 16:59:57', '2018-02-26 16:59:57', NULL),
(415, 48, 'posts', 'fe4292567abe21de103fc99dda9ce0d5.JPG', '', 2, 1, '2018-02-26 16:59:57', '2018-02-26 16:59:57', NULL),
(416, 48, 'posts', 'ce3e092828817c4c5cd8e0719ef1daf8.jpg', '', 3, 1, '2018-02-26 16:59:57', '2018-02-26 16:59:57', NULL),
(417, 48, 'posts', '21d3abcdb2f19ba1ab709e60c205403f.jpg', '', 4, 1, '2018-02-26 16:59:57', '2018-02-26 16:59:57', NULL),
(418, 48, 'posts', 'b55043a52b709956e2bcf87c40ef6beb.JPG', '', 5, 1, '2018-02-26 16:59:57', '2018-02-26 16:59:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default-featured-image.png',
  `status` tinyint(4) NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `slug`, `position`, `image`, `status`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 'introduce', 1, 'default-featured-image.png', 1, NULL, '2018-02-01 05:55:12', '2018-02-24 09:41:26', NULL),
(2, 2, 'Light', 1, '/assets/images/files/Group-23.jpg', 1, NULL, '2018-02-01 06:09:34', '2018-02-25 11:58:30', NULL),
(3, 2, 'Light Plus', 2, '/assets/images/files/Group-25.jpg', 1, NULL, '2018-02-01 06:09:46', '2018-02-23 10:12:30', NULL),
(4, 3, 'Delicious', 1, 'default-featured-image.png', 1, NULL, '2018-02-01 06:11:49', '2018-02-25 12:00:16', NULL),
(5, 3, 'FishCa-Restaurant', 2, 'default-featured-image.png', 1, NULL, '2018-02-01 06:12:09', '2018-02-01 06:12:09', NULL),
(6, 4, 'Spice-Spa', 1, 'default-featured-image.png', 1, NULL, '2018-02-01 06:12:26', '2018-02-25 12:02:16', NULL),
(7, 4, 'Gym', 2, 'default-featured-image.png', 1, NULL, '2018-02-01 06:12:41', '2018-02-01 06:12:41', NULL),
(12, 12, 'CONTACT', 1, 'default-featured-image.png', 1, NULL, '2018-02-01 06:14:04', '2018-02-05 13:49:40', NULL),
(13, 2, 'Delight', 3, '/assets/images/files/Group-23.jpg', 1, NULL, '2018-02-01 06:18:22', '2018-02-23 10:11:39', NULL),
(14, 2, 'Delight Plus', 4, '/assets/images/files/Group-25.jpg', 1, NULL, '2018-02-01 06:18:40', '2018-02-23 10:17:34', NULL),
(15, 13, 'open-career-opportunities', 1, '/assets/images/images/Group%2024.png', 1, NULL, '2018-02-04 16:42:39', '2018-02-25 20:39:32', NULL),
(17, 8, 'Welcome-to-À-La Carte', 2, 'default-featured-image.png', 1, NULL, '2018-02-07 19:20:23', '2018-02-07 19:20:40', NULL),
(18, 7, 'image', 1, 'default-featured-image.png', 1, NULL, '2018-02-08 23:58:17', '2018-02-25 20:49:20', NULL),
(19, 2, 'highlight', 5, '/assets/images/files/08-Highlight%20(2).jpg', 1, NULL, '2018-02-24 10:46:39', '2018-02-24 10:57:23', NULL),
(20, 2, 'highlight-plus', 6, '/assets/images/files/0814%20HighLight%20Plus.jpg', 1, NULL, '2018-02-24 11:01:25', '2018-02-25 21:13:10', NULL),
(21, 2, 'ultralight', 7, '/assets/images/files/Ultralight.jpg', 1, NULL, '2018-02-24 11:04:16', '2018-02-25 09:44:14', NULL),
(22, 3, 'the-top', 3, 'default-featured-image.png', 1, NULL, '2018-02-24 11:10:52', '2018-02-24 11:10:52', NULL),
(23, 3, 'in-room-dinning', 4, 'default-featured-image.png', 1, NULL, '2018-02-24 11:14:27', '2018-02-24 11:14:27', NULL),
(24, 3, 'wine-room', 5, 'default-featured-image.png', 1, NULL, '2018-02-24 11:18:50', '2018-02-24 11:18:50', NULL),
(25, 5, 'hotel-location', 3, 'default-featured-image.png', 1, NULL, '2018-02-24 11:35:45', '2018-02-25 21:03:49', NULL),
(26, 5, 'hotel-road', 4, 'default-featured-image.png', 1, NULL, '2018-02-24 11:37:23', '2018-02-25 21:05:00', NULL),
(28, 2, 'suile-dreams', 0, '/laravel-filemanager/images/Group 24.png', 1, NULL, '2018-02-25 11:58:20', '2018-02-26 02:00:32', NULL),
(29, 3, 'restaurant-bar', 0, '/laravel-filemanager/images/Group 24.png', 1, NULL, '2018-02-25 11:59:41', '2018-02-25 21:09:06', NULL),
(30, 4, 'relax', 0, '/laravel-filemanager/images/Group 24.png', 1, '2018-02-25 21:06:43', '2018-02-25 12:01:19', '2018-02-25 21:07:32', NULL),
(31, 6, 'facilities', 0, '/laravel-filemanager/images/Group 24.png', 1, '2018-02-25 20:43:10', '2018-02-25 12:02:40', '2018-02-25 20:45:14', NULL),
(32, 6, 'infinity-pool', 2, 'default-featured-image.png', 1, NULL, '2018-02-25 20:01:40', '2018-02-25 20:01:40', NULL),
(33, 6, 'kids-club', 3, 'default-featured-image.png', 1, NULL, '2018-02-25 20:04:52', '2018-02-25 20:04:52', NULL),
(34, 6, 'gift-shop', 1, 'default-featured-image.png', 1, NULL, '2018-02-25 20:15:37', '2018-02-25 20:46:50', NULL),
(35, 6, 'lirbrary', 4, 'default-featured-image.png', 1, NULL, '2018-02-25 20:19:59', '2018-02-25 20:55:21', NULL),
(39, 14, 'experience-ba-na-hills-road-to-heaven', 6, 'default-featured-image.png', 1, NULL, '2018-02-25 20:30:26', '2018-02-25 21:00:38', NULL),
(40, 14, 'the-ancient-capital-of-hue', 6, 'default-featured-image.png', 1, NULL, '2018-02-25 21:17:56', '2018-02-25 21:38:16', NULL),
(41, 14, 'discover-cu-lao-cham', 7, 'default-featured-image.png', 1, NULL, '2018-02-25 21:19:31', '2018-02-25 21:39:42', NULL),
(42, 14, 'discover-the-sunwheel', 8, 'default-featured-image.png', 1, NULL, '2018-02-25 21:20:26', '2018-02-25 21:40:59', NULL),
(43, 14, 'around-da-nang-city', 9, 'default-featured-image.png', 1, NULL, '2018-02-25 21:21:32', '2018-02-25 21:42:49', NULL),
(44, 14, 'on-tra-treatment', 10, 'default-featured-image.png', 1, NULL, '2018-02-25 21:22:33', '2018-02-25 21:44:00', NULL),
(45, 14, 'discover-the-courtyard-hoi-an-sanctuary-my-son', 11, 'default-featured-image.png', 1, NULL, '2018-02-25 21:23:47', '2018-02-25 21:46:06', NULL),
(47, 5, 'practical-information', 7, 'default-featured-image.png', 1, NULL, '2018-02-25 21:33:06', '2018-02-25 21:47:41', NULL),
(48, 5, 'sanctuary-my-son', 8, 'default-featured-image.png', 1, NULL, '2018-02-26 13:51:46', '2018-02-26 14:00:37', NULL),
(49, 5, 'ngu-hanh-son', 9, 'default-featured-image.png', 1, NULL, '2018-02-26 13:52:38', '2018-02-26 13:52:38', NULL),
(50, 5, 'son-tra-peninsula', 10, 'default-featured-image.png', 1, NULL, '2018-02-26 13:54:11', '2018-02-26 14:04:22', NULL),
(51, 5, 'ba-na-hills', 11, 'default-featured-image.png', 1, NULL, '2018-02-26 13:56:29', '2018-02-26 13:56:29', NULL),
(52, 5, 'the-cham-museum', 12, 'default-featured-image.png', 1, NULL, '2018-02-26 13:57:58', '2018-02-26 14:10:17', NULL),
(53, 15, 'splce-spa', 1, '/laravel-filemanager/images/n4.PNG', 1, NULL, '2018-02-26 15:03:11', '2018-02-26 15:03:11', NULL),
(54, 15, 'gourmet-buffet', 1, '/laravel-filemanager/1/22.jpg', 1, NULL, '2018-02-26 15:04:37', '2018-02-26 15:04:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_translations`
--

CREATE TABLE `post_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_translations`
--

INSERT INTO `post_translations` (`id`, `post_id`, `name`, `description`, `content`, `locale`) VALUES
(1, 1, 'GIỚI THIỆU', 'Giới thiệu', '<div id="pt-content-destination">\r\n<div class="container">\r\n<div class="row box-flex">\r\n<div class="col-sm-6 col-xs-12 pt-text-destination">\r\n<h3>Đ&ocirc;i n&eacute;t về &Agrave; La Carte</h3>\r\n\r\n<p>Với thiết kế hiện đại tươi đẹp v&agrave; một &yacute; tưởng đ&aacute;ng kinh ngạc, &Agrave; La Carte Đ&agrave; Nẵng Beach bao gồm biển rộng r&atilde;i v&agrave; rộng r&atilde;i với gi&aacute; cả tuyệt vời với kh&aacute;i niệm add-on &agrave; la carte s&aacute;ng tạo, v&agrave; dịch vụ vui nhộn.</p>\r\n\r\n<p>H&atilde;y ở tại &Agrave; La Carte Đ&agrave; Nẵng Beach v&agrave; chọn từ một số phong c&aacute;ch suite c&oacute; studio, một hoặc hai ph&ograve;ng ngủ c&aacute;c lựa chọn v&agrave; ban c&ocirc;ng với tầm nh&igrave;n ra n&uacute;i v&agrave; biển.</p>\r\n\r\n<p>H&atilde;y thư gi&atilde;n tại bể bơi v&ocirc; cực đầu ti&ecirc;n của Việt Nam v&agrave; sảnh đợi tuyệt vời tr&ecirc;n tầng thượng, thực đơn spa s&aacute;ng tạo tại SPICE SPA. &Agrave; La Carte Đ&agrave; Nẵng Beach l&agrave; điểm ho&agrave;n hảo để thư gi&atilde;n.</p>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 pt-img-destination"><img alt="banner" src="/assets/images/images/gt.png" /></div>\r\n</div>\r\n\r\n<div class="box-introduce">\r\n<div class="row">\r\n<div class="col-sm-6 col-xs-12"><img alt="banner" src="/assets/images/images/n1.PNG" />\r\n<div class="box-introduce-text">\r\n<h4>Một đ&ecirc;m ngon giấc</h4>\r\n\r\n<p>Tất cả c&aacute;c ph&ograve;ng suite rộng r&atilde;i của ch&uacute;ng t&ocirc;i được thiết kế với những tiện nghi hiện đại nhất, tầm nh&igrave;n ra biển đẹp như tranh vẽ trong một số cấu h&igrave;nh th&ocirc;ng minh ph&ugrave; hợp với nhu cầu của bạn.</p>\r\n</div>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12"><img alt="banner" src="/assets/images/images/n2.PNG" />\r\n<div class="box-introduce-text">\r\n<h4>Ẩm thực</h4>\r\n\r\n<p>Đội ngũ ẩm thực của ch&uacute;ng t&ocirc;i phục vụ mọi thứ cho mọi người. Từ quầy bar sang trọng tr&ecirc;n s&acirc;n thượng, đến những m&oacute;n h&agrave;ng giản dị thả xuống, ch&uacute;ng t&ocirc;i phục vụ tất cả c&aacute;c khẩu vị.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-6 col-xs-12"><img alt="banner" src="/assets/images/images/n3.PNG" />\r\n<div class="box-introduce-text">\r\n<h4>Những người y&ecirc;u Spa</h4>\r\n\r\n<p>Th&ecirc;m Spice v&agrave;o trải nghiệm Spa của bạn. Mỗi ph&ograve;ng đều c&oacute; một chủ đề được thiết kế ri&ecirc;ng cho một gia vị thơm ngon. H&atilde;y pha chế hỗn hợp thảo dược của ri&ecirc;ng bạn v&agrave; tận hưởng ly cocktail tại Social Salon, v&agrave; c&ugrave;ng l&uacute;c l&agrave;m m&oacute;ng tay v&agrave; m&oacute;ng ch&acirc;n!</p>\r\n</div>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12"><img alt="banner" src="/assets/images/images/n4.PNG" />\r\n<div class="box-introduce-text">\r\n<h4>D&agrave;nh cho trẻ</h4>\r\n\r\n<p>Cho trẻ nghỉ ngơi! C&acirc;u lạc bộ Trẻ em của ch&uacute;ng t&ocirc;i c&oacute; rất nhiều hoạt động vui chơi d&agrave;nh cho những đứa trẻ nhỏ. Cảm thấy an to&agrave;n khi biết rằng Đội ngũ C&acirc;u lạc bộ Trẻ em c&oacute; kinh nghiệm của ch&uacute;ng t&ocirc;i lu&ocirc;n c&oacute; mặt để đảm bảo mọi người đều an to&agrave;n v&agrave; &acirc;m thanh.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-6 col-xs-12"><img alt="banner" src="/assets/images/images/n1.PNG" />\r\n<div class="box-introduce-text">\r\n<h4>C&aacute;c sự kiện</h4>\r\n\r\n<p>Một loạt c&aacute;c địa điểm c&oacute; sẵn cho cuộc họp tiếp theo của bạn, nh&acirc;n dịp đặc biệt, ra mắt sản phẩm hoặc gặp nhau. H&atilde;y để ch&uacute;ng t&ocirc;i tạo ra một trải nghiệm đặc biệt cho nhu cầu của bạn.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="box-progress">\r\n<h2 class="pt-title">Kỹ Năng VN</h2>\r\n\r\n<p class="text-describe">Xem điểm đ&aacute;nh gi&aacute; chung từ một số trang web du lịch phổ biến</p>\r\n\r\n<div class="row">\r\n<div class="col-sm-3 col-xs-12">\r\n<p>TripAdvisor.com <strong>90%</strong></p>\r\n\r\n<div class="progress">\r\n<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" class="progress-bar" role="progressbar" style="width: 90%;"><span class="sr-only">90% Complete</span></div>\r\n</div>\r\n</div>\r\n\r\n<div class="col-sm-3 col-xs-12">\r\n<p>Agoda.com <strong>76%</strong></p>\r\n\r\n<div class="progress">\r\n<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" class="progress-bar" role="progressbar" style="width: 76%;"><span class="sr-only">76% Complete</span></div>\r\n</div>\r\n</div>\r\n\r\n<div class="col-sm-3 col-xs-12">\r\n<p>Expedia.com <strong>86%</strong></p>\r\n\r\n<div class="progress">\r\n<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" class="progress-bar" role="progressbar" style="width: 86%;"><span class="sr-only">86% Complete</span></div>\r\n</div>\r\n</div>\r\n\r\n<div class="col-sm-3 col-xs-12">\r\n<p>Booking.com <strong>90%</strong></p>\r\n\r\n<div class="progress">\r\n<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" class="progress-bar" role="progressbar" style="width: 90%;"><span class="sr-only">90% Complete</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'vi'),
(2, 2, 'Phòng Light', 'Thích hợp cho khách đi một mình hoặc các cặp đôi', '<div class="row">\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<p>Light l&agrave; căn hộ một ph&ograve;ng ngủ hiện đại, tho&aacute;ng m&aacute;t c&oacute; một giường cỡ lớn hoặc 2 giường đơn, với kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch v&agrave; khu vực bếp, một ph&ograve;ng tắm.</p>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>G&oacute;c nh&igrave;n:</th>\r\n			<th>Diện t&iacute;ch:</th>\r\n			<th>Số kh&aacute;ch:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Kh&ocirc;ng</td>\r\n			<td>47m2</td>\r\n			<td>2 người</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>Giường ngủ v&agrave; ph&ograve;ng tắm:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1 giường lớn v&agrave; ph&ograve;ng tắm đứng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4>Tiện nghi</h4>\r\n\r\n<ul>\r\n	<li>Tắm</li>\r\n	<li>Ph&ograve;ng tắm</li>\r\n	<li>Quầy</li>\r\n	<li>Ăn Counter</li>\r\n	<li>M&aacute;y pha c&agrave; ph&ecirc;</li>\r\n	<li>B&igrave;nh đun nước</li>\r\n	<li>An to&agrave;n Box</li>\r\n	<li>M&aacute;y sấy t&oacute;c</li>\r\n	<li>Ph&ograve;ng bếp</li>\r\n	<li>Tủ lạnh</li>\r\n	<li>L&ograve; vi s&oacute;ng</li>\r\n	<li>Bếp cảm ứng 2-Plate</li>\r\n	<li>Điều h&ograve;a nhiệt độ</li>\r\n	<li>Điện thoại</li>\r\n	<li>Truyền h&igrave;nh c&aacute;p</li>\r\n	<li>Wifi miễn ph&iacute;</li>\r\n</ul>\r\n</div>\r\n</div>', 'vi'),
(3, 3, 'Phòng Light Plus', 'Thích hợp cho khách đi một mình hoặc các cặp đôi', '<div class="row">\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<div class="itemFullTextWell">\r\n<p>LIGHT PLUS l&agrave; căn hộ một ph&ograve;ng ngủ hiện đại c&oacute; ban c&ocirc;ng tho&aacute;ng m&aacute;t với một giường cỡ lớn, kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch v&agrave; bếp, một ph&ograve;ng tắm. Th&iacute;ch hợp kh&aacute;ch đi một m&igrave;nh hoặc c&aacute;c cặp đ&ocirc;i.</p>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>G&oacute;c nh&igrave;n:</th>\r\n			<th>Diện t&iacute;ch:</th>\r\n			<th>Số kh&aacute;ch:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Kh&ocirc;ng</td>\r\n			<td>47m2</td>\r\n			<td>2 người</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>Giường ngủ v&agrave; ph&ograve;ng tắm:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1 giường lớn v&agrave; ph&ograve;ng tắm đứng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4>Tiện nghi</h4>\r\n\r\n<ul>\r\n	<li>Tắm</li>\r\n	<li>Ph&ograve;ng tắm</li>\r\n	<li>Quầy</li>\r\n	<li>Ăn Counter</li>\r\n	<li>M&aacute;y pha c&agrave; ph&ecirc;</li>\r\n	<li>B&igrave;nh đun nước</li>\r\n	<li>An to&agrave;n Box</li>\r\n	<li>M&aacute;y sấy t&oacute;c</li>\r\n	<li>Ph&ograve;ng bếp</li>\r\n	<li>Tủ lạnh</li>\r\n	<li>L&ograve; vi s&oacute;ng</li>\r\n	<li>Bếp cảm ứng 2-Plate</li>\r\n	<li>Điều h&ograve;a nhiệt độ</li>\r\n	<li>Điện thoại</li>\r\n	<li>Truyền h&igrave;nh c&aacute;p</li>\r\n	<li>Wifi miễn ph&iacute;</li>\r\n</ul>\r\n</div>\r\n</div>', 'vi'),
(4, 4, 'Delicious', 'Variety of breakfast choices, quick lunches or take-away', '<p><span id="result_box" lang="vi" tabindex="-1"><span>&bull; Kh&ocirc;ng kh&iacute; thư gi&atilde;n v&agrave; một gi&aacute; trị tuyệt vời</span><br />\r\n<br />\r\n<span>&bull; Nếu bạn kh&ocirc;ng muốn ăn s&aacute;ng đầy đủ, h&atilde;y d&ugrave;ng b&aacute;nh ngọt v&agrave; một t&aacute;ch c&agrave; ph&ecirc;.</span><br />\r\n<br />\r\n<span>&bull; Một loạt c&aacute;c lựa chọn cho một bữa ăn trưa nhanh ch&oacute;ng hoặc lấy đi: salad tươi, b&aacute;nh m&igrave; hoặc b&aacute;nh ngọt.</span></span></p>', 'vi'),
(5, 5, 'FishCa Restaurant', 'Hãy đến và trải nghiệm những món ăn ngon của chúng tôi.', '<div class="itemFullTextWell">\r\n<ul>\r\n	<li><span class="short_text" id="result_box" lang="vi" tabindex="-1"><span>Gi&aacute; cả phải chăng, đương đại, ăn uống b&igrave;nh thường.</span></span></li>\r\n	<li><span class="short_text" id="result_box" lang="vi" tabindex="-1"><span>Một loạt c&aacute;c lựa chọn ăn s&aacute;ng!</span></span></li>\r\n	<li><span id="result_box" lang="vi" tabindex="-1"><span>Một loạt c&aacute;c loại hải sản tươi sống v&agrave;o thực đơn bữa tối của ch&uacute;ng t&ocirc;i.</span></span></li>\r\n</ul>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>', 'vi'),
(6, 6, 'Spice Spa', '"Thêm hương vị cho cuộc sống của bạn tại Spice spa!"', '<div class="itemFullTextWell">\r\n<div class="mota">&quot;Th&ecirc;m hương vị cho cuộc sống của bạn tại Spice spa!&quot;</div>\r\n\r\n<div class="itemFullTextWell">\r\n<p style="text-align: justify;">L&agrave;m trẻ h&oacute;a c&aacute;c gi&aacute;c quan của du kh&aacute;ch tại Spice Spa. Thư gi&atilde;n v&agrave; t&aacute;i tạo cơ thể với nhiều liệu ph&aacute;p spa v&agrave; dịch vụ được ch&uacute;ng t&ocirc;i đặc biệt lựa chọn để chăm s&oacute;c bạn.</p>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>', 'vi'),
(7, 7, 'Gym', 'Đừng để thói quen tập thể dục của bạn dừng lại trong khi bạn đi du lịch.', '<p><span id="result_box" lang="vi" tabindex="-1"><span>Bạn đ&atilde; thử tập thể dục từ tr&ecirc;n tầng thượng tầng 24 chưa?</span> <span>Thư gi&atilde;n như thể, cơ thể, t&acirc;m hồn v&agrave; h&agrave;i h&ograve;a với bầu trời v&agrave; biển cả.</span></span></p>', 'vi'),
(12, 12, 'LIÊN HỆ', 'LIÊN HỆ', '<h3 class="sppb-addon-title" style="color:#ffffff;font-size:32px;line-height:32px;">Only a stone&rsquo;s throw from the ocean and a short ride from the airport, located directly on the Danang</h3>', 'vi'),
(13, 13, 'Phòng Delight', 'Thích hợp cho cặp đôi tìm kiếm kỳ nghỉ lãng mạn', '<div class="row">\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<div class="itemFullTextWell">\r\n<p style="text-align:justify">DELIGHT l&agrave; căn hộ một ph&ograve;ng ngủ hiện đại với nh&agrave; b&ecirc;́p v&agrave; ph&ograve;ng kh&aacute;ch ri&ecirc;ng biệt. T&acirc;́t cả ph&ograve;ng Delight đ&ecirc;̀u c&oacute; ban c&ocirc;ng v&agrave; ph&ograve;ng tắm với b&ocirc;̀n tắm v&agrave; v&ograve;i hoa sen&nbsp;</p>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>G&oacute;c nh&igrave;n:</th>\r\n			<th>Diện t&iacute;ch:</th>\r\n			<th>Số kh&aacute;ch:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Kh&ocirc;ng</td>\r\n			<td>69m2</td>\r\n			<td>2 người</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>Giường ngủ v&agrave; ph&ograve;ng tắm:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1 giường lớn<br />\r\n			b&ocirc;̀n tắm v&agrave; ph&ograve;ng tắm đứng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4>Tiện nghi</h4>\r\n\r\n<ul>\r\n	<li>Tắm</li>\r\n	<li>Ph&ograve;ng tắm</li>\r\n	<li>Quầy</li>\r\n	<li>Ăn Counter</li>\r\n	<li>M&aacute;y pha c&agrave; ph&ecirc;</li>\r\n	<li>B&igrave;nh đun nước</li>\r\n	<li>An to&agrave;n Box</li>\r\n	<li>M&aacute;y sấy t&oacute;c</li>\r\n	<li>Ph&ograve;ng bếp</li>\r\n	<li>Tủ lạnh</li>\r\n	<li>L&ograve; vi s&oacute;ng</li>\r\n	<li>Bếp cảm ứng 2-Plate</li>\r\n	<li>Điều h&ograve;a nhiệt độ</li>\r\n	<li>Điện thoại</li>\r\n	<li>Truyền h&igrave;nh c&aacute;p</li>\r\n	<li>Wifi miễn ph&iacute;</li>\r\n</ul>\r\n</div>\r\n</div>', 'vi'),
(14, 14, 'Phòng Delight Plus', 'Đây là nơi lý tưởng cho kỳ nghỉ cùng gia đình và bạn bè', '<div class="row">\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<div class="itemFullTextWell">\r\n<p style="text-align:justify">Du kh&aacute;ch c&oacute; thể chọn DELIGHT Plus cho lựa chọn 2 ph&ograve;ng ngủ bao gồm một ph&ograve;ng c&oacute; giường cỡ lớn v&agrave; một ph&ograve;ng c&oacute; hai giường đơn hoặc 2 ph&ograve;ng ngủ với 2 giường cỡ lớn. Ph&ograve;ng ngủ ch&iacute;nh c&oacute; 1 giường lớn v&agrave; ph&ograve;ng tắm với v&ograve;i hoa sen ri&ecirc;ng biệt. Ph&ograve;ng ngủ thứ 2 c&oacute; 2 sự lựa chọn hoặc 2 giường nhỏ hoặc &nbsp;1 giường lớn c&oacute; ph&ograve;ng tắm ri&ecirc;ng. Kh&ocirc;ng gian bếp mở được trang bị đầy đủ c&aacute;c tiện nghi.</p>\r\n</div>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>G&oacute;c nh&igrave;n:</th>\r\n			<th>Diện t&iacute;ch:</th>\r\n			<th>Số kh&aacute;ch:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Kh&ocirc;ng</td>\r\n			<td>69m2</td>\r\n			<td>2 người</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>Giường ngủ v&agrave; ph&ograve;ng tắm:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>1 giường lớn + 2 giường nhỏ</p>\r\n\r\n			<p>Hoặc 2 giường lớn</p>\r\n\r\n			<p>Ph&ograve;ng tắm đứng</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4>Tiện nghi</h4>\r\n\r\n<ul>\r\n	<li>Tắm</li>\r\n	<li>Ph&ograve;ng tắm</li>\r\n	<li>Quầy</li>\r\n	<li>Ăn Counter</li>\r\n	<li>M&aacute;y pha c&agrave; ph&ecirc;</li>\r\n	<li>B&igrave;nh đun nước</li>\r\n	<li>An to&agrave;n Box</li>\r\n	<li>M&aacute;y sấy t&oacute;c</li>\r\n	<li>Ph&ograve;ng bếp</li>\r\n	<li>Tủ lạnh</li>\r\n	<li>L&ograve; vi s&oacute;ng</li>\r\n	<li>Bếp cảm ứng 2-Plate</li>\r\n	<li>Điều h&ograve;a nhiệt độ</li>\r\n	<li>Điện thoại</li>\r\n	<li>Truyền h&igrave;nh c&aacute;p</li>\r\n	<li>Wifi miễn ph&iacute;</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="swiper-container swiper-container-02 swiper-container-horizontal">\r\n<div class="swiper-wrapper">&nbsp;</div>\r\n</div>', 'vi'),
(15, 2, 'Light', 'The room is suitable for single or double occupancy', '<div class="row">\r\n<div class="row">\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Describe</span></span></h4>\r\n\r\n<p><span id="result_box" lang="en" tabindex="-1"><span>Light is a modern, airy one bedroom apartment with a king size bed or 2 single beds, with living room and kitchen area, a bathroom.</span></span></p>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>View:</th>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Acreage</span></span>:</th>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Guest number</span></span>:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>No</td>\r\n			<td>47m2</td>\r\n			<td>2 persons</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Bed and bath:</span></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>1 large bed and 1 bathroom</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Convenient</span></span></h4>\r\n\r\n<ul>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Shower</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Bathroom</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>The counter</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Eat Counter</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Coffee maker</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Water boiler</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Safe Box</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Hairdryer</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Kitchen</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Fridge</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Microwave</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>2-Plate Touch Screen</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Air conditioner</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Phone</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Cable television</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Free Wifi</span></span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'en'),
(16, 3, 'Light Plus', 'One-bedroom studio with Ocean view and Balcony', '<div class="row">\r\n<div class="row">\r\n<div class="row">\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Describe</span></span></h4>\r\n\r\n<p><span id="result_box" lang="en" tabindex="-1"><span>Light is a modern, airy one bedroom apartment with a king size bed or 2 single beds, with living room and kitchen area, a bathroom.</span></span></p>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>View:</th>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Acreage</span></span>:</th>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Guest number</span></span>:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>No</td>\r\n			<td>47m2</td>\r\n			<td>2 persons</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Bed and bath:</span></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>1 large bed and 1 bathroom</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Convenient</span></span></h4>\r\n\r\n<ul>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Shower</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Bathroom</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>The counter</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Eat Counter</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Coffee maker</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Water boiler</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Safe Box</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Hairdryer</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Kitchen</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Fridge</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Microwave</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>2-Plate Touch Screen</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Air conditioner</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Phone</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Cable television</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Free Wifi</span></span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'en'),
(17, 13, 'Delight', 'One-bedroom ocean view suite', '<div class="row">\r\n<div class="row">\r\n<div class="row">\r\n<div class="row">\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Describe</span></span></h4>\r\n\r\n<p><span id="result_box" lang="en" tabindex="-1"><span>Light is a modern, airy one bedroom apartment with a king size bed or 2 single beds, with living room and kitchen area, a bathroom.</span></span></p>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>View:</th>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Acreage</span></span>:</th>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Guest number</span></span>:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>No</td>\r\n			<td>47m2</td>\r\n			<td>2 persons</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Bed and bath:</span></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>1 large bed and 1 bathroom</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Convenient</span></span></h4>\r\n\r\n<ul>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Shower</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Bathroom</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>The counter</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Eat Counter</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Coffee maker</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Water boiler</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Safe Box</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Hairdryer</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Kitchen</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Fridge</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Microwave</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>2-Plate Touch Screen</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Air conditioner</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Phone</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Cable television</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Free Wifi</span></span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="swiper-container swiper-container-02 swiper-container-horizontal">\r\n<div class="swiper-wrapper">&nbsp;</div>\r\n</div>', 'en'),
(18, 15, 'TUYỂN DỤNG', 'Chúng tôi tự hào hướng tới môi trường làm việc chuyên nghiệp và đầy đam mê', '<div itemprop="articleBody">\r\n<p>Ch&uacute;ng t&ocirc;i tự h&agrave;o hướng tới m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp v&agrave; đầy đam m&ecirc;<br />\r\n<span style="text-autospace:none"><span style="font-family:\'UTM Avo\'">H&atilde;y nộp CV để h&ograve;a nhập ngay v&agrave;o m&ocirc;i trường năng động c&ugrave;ng ch&uacute;ng t&ocirc;i :</span></span></p>\r\n\r\n<p><span style="text-autospace:none"><span style="font-family:\'UTM Avo\'">Email : <a href="mailto:hrm@alacartedanangbeach.com"><span style="text-decoration:none"><span style="text-underline:none">hrm@alacartedanangbeach.com</span></span></a></span></span></p>\r\n\r\n<p><span style="text-autospace:none"><span style="font-family:\'UTM Avo\'">Contact : 02363 959 555 (gặp Ms. Hậu - Ph&ograve;ng Nh&acirc;n Sự)</span></span></p>\r\n</div>', 'vi'),
(19, 1, 'Introduce', 'Introduce', '<div id="pt-content-destination">\r\n<div class="container">\r\n<div class="row box-flex">\r\n<div class="col-sm-6 col-xs-12 pt-text-destination">\r\n<h3 class="sppb-title-heading" style="">Who we are</h3>\r\n\r\n<p class="sppb-title-subheading">&nbsp;</p>\r\n\r\n<div>\r\n<p>With a fresh modern design and a surprising concept, &Agrave; La Carte Da Nang Beach is comprised of vibrant and spacious sea-view suites at amazing prices with a creative &agrave; la carte add-on concept, and fun casual service.</p>\r\n\r\n<p>Stay at &Agrave; La Carte Da Nang Beach and choose from several suite styles that feature studios, one or two bedroom options and balconies with mountain and sea views.</p>\r\n\r\n<p>Chill out at Vietnam&rsquo;s first rooftop infinity pool and amazing rooftop lounge, the innovative spa menu at SPICE SPA. &Agrave; La Carte Da Nang Beach is the perfect spot to relax.</p>\r\n\r\n<p>Dine, &Agrave; La Carte Da Nang Beach offers a variety of outlets and dining options. Enjoy a full meal in your suite, enjoy a special event in our all day dining restaurant, a quick snack at our DELICIOUS deli, or sip cocktails and contemplate the stunning ocean view from THE TOP, our rooftop bar.</p>\r\n</div>\r\n\r\n<p>.</p>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 pt-img-destination"><img alt="banner" src="/assets/images/images/gt.png" /></div>\r\n</div>\r\n\r\n<div class="box-introduce">\r\n<div class="row">\r\n<div class="col-sm-6 col-xs-12"><img alt="banner" src="/assets/images/images/n1.PNG" />\r\n<div class="box-introduce-text">\r\n<div class="service-details">\r\n<h3 class="title">A GOOD NIGHTS SLEEP</h3>\r\n\r\n<p>All of our spacious suites are designed with the latest in modern conveniences, picturesque ocean views in a number of intelligent configurations to suit your needs.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12"><img alt="banner" src="/assets/images/images/n2.PNG" />\r\n<div class="box-introduce-text">\r\n<div class="service-details">\r\n<h3 class="title">FOODIES</h3>\r\n\r\n<p>Our culinary team serves up something for everyone. From the chic rooftop lounge bar, to the casual drop in deli, we cater to all tastes.</p>\r\n</div>\r\n\r\n<p>.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-6 col-xs-12"><img alt="banner" src="/assets/images/images/n3.PNG" />\r\n<div class="box-introduce-text">\r\n<div class="service-details">\r\n<h3 class="title">SPA LOVERS</h3>\r\n\r\n<p>Add SPICE to your Spa experience. Each treatment room has a theme tailored to an aromatic spice. Make your own herbal pouch blend and enjoy a cocktail at the Social Salon, and get a manicure and pedicure at the same time!</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12"><img alt="banner" src="/assets/images/images/n4.PNG" />\r\n<div class="box-introduce-text">\r\n<div class="service-details">\r\n<h3 class="title">KIDS</h3>\r\n\r\n<p>Give the kids a break! Our Kids Club has a variety of fun activities for the little ones. Feel safe in the knowledge that our experienced Kids Club Staffs are always in attendance to ensure everyone is safe and sound.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-6 col-xs-12"><img alt="banner" src="/assets/images/images/n1.PNG" />\r\n<div class="box-introduce-text">\r\n<div class="service-details">\r\n<h3 class="title">EVENT</h3>\r\n\r\n<p>A &nbsp;variety of venues are available for your next meeting, special occasion, product launch or get together. Let us create a special experience for your needs.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="box-progress">\r\n<h3 class="sppb-addon-title" style="">Our skills VN</h3>\r\n\r\n<div class="sppb-addon-content">\r\n<p>see your overall review scores from some popular travel site:</p>\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-3 col-xs-12">\r\n<p>TripAdvisor.com <strong>90%</strong></p>\r\n\r\n<div class="progress">\r\n<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" class="progress-bar" role="progressbar" style="width: 90%;"><span class="sr-only">90% Complete</span></div>\r\n</div>\r\n</div>\r\n\r\n<div class="col-sm-3 col-xs-12">\r\n<p>Agoda.com <strong>76%</strong></p>\r\n\r\n<div class="progress">\r\n<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" class="progress-bar" role="progressbar" style="width: 76%;"><span class="sr-only">76% Complete</span></div>\r\n</div>\r\n</div>\r\n\r\n<div class="col-sm-3 col-xs-12">\r\n<p>Expedia.com <strong>86%</strong></p>\r\n\r\n<div class="progress">\r\n<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" class="progress-bar" role="progressbar" style="width: 86%;"><span class="sr-only">86% Complete</span></div>\r\n</div>\r\n</div>\r\n\r\n<div class="col-sm-3 col-xs-12">\r\n<p>Booking.com <strong>90%</strong></p>\r\n\r\n<div class="progress">\r\n<div aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" class="progress-bar" role="progressbar" style="width: 90%;"><span class="sr-only">90% Complete</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'en'),
(20, 14, 'Delight Plus', 'Two-bedroom with ocean + city view suite', '<div class="row">\r\n<div class="row">\r\n<div class="row">\r\n<div class="row">\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Describe</span></span></h4>\r\n\r\n<p><span id="result_box" lang="en" tabindex="-1"><span>Light is a modern, airy one bedroom apartment with a king size bed or 2 single beds, with living room and kitchen area, a bathroom.</span></span></p>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>View:</th>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Acreage</span></span>:</th>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Guest number</span></span>:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>No</td>\r\n			<td>47m2</td>\r\n			<td>2 persons</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Bed and bath:</span></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>1 large bed and 1 bathroom</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Convenient</span></span></h4>\r\n\r\n<ul>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Shower</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Bathroom</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>The counter</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Eat Counter</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Coffee maker</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Water boiler</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Safe Box</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Hairdryer</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Kitchen</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Fridge</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Microwave</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>2-Plate Touch Screen</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Air conditioner</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Phone</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Cable television</span></span></li>\r\n	<li><span id="result_box" lang="en" tabindex="-1"><span>Free Wifi</span></span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="swiper-container swiper-container-02 swiper-container-horizontal">\r\n<div class="swiper-wrapper">&nbsp;</div>\r\n</div>', 'en'),
(21, 12, 'CONTACT', 'Contact', '<h3><span class="short_text" id="result_box" lang="en" tabindex="-1"><span>Where is La Carte ?</span></span></h3>\r\n\r\n<p><span id="result_box" lang="en" tabindex="-1"><span>Just a few steps from the island and a short drive from the airport, right on the beach of Da Nang.</span> <span>You can not miss us!</span></span></p>', 'en'),
(22, 17, 'Welcome to À La Carte', 'Add flavor to your life', 'https://www.youtube.com/embed/PNKCbUDgM8Q', 'en'),
(23, 17, 'Chào mừng bạn đến với À La Carte', 'Thêm hương vị cho cuộc sống của bạn', 'https://www.youtube.com/embed/PNKCbUDgM8Q', 'vi'),
(24, 15, 'Open career opportunities', 'Open career opportunities', '<p>We are proud of our professional working environmentand full of passion. Please submit your CV for inclusion in the environment Again with us:</p>\r\n\r\n<p>Email : <a href="file:///home/thangtba/Downloads/alacarte-HTML-2e109044630e4e33624933537d1a427ee617896b/Alacarte/tuyendung.html#">hrm@alacartedanangbeach.com</a></p>\r\n\r\n<p>Contact : 02363 959 555 (Ms. Hậu - Human resouces department)</p>', 'en'),
(26, 4, 'Delicious', 'Variety of breakfast choices, quick lunches or take-away', '<div class="itemFullTextWell">\r\n<p>&bull; Relaxed atmosphere and a great value&nbsp;</p>\r\n\r\n<p>&bull; If you don&#39;t want a full breakfast, have a pastry and a cup of coffee.</p>\r\n\r\n<p>&bull; A variety of choices for a quick lunch or take away: fresh salads, sandwiches or pastries.</p>\r\n</div>', 'en'),
(27, 5, 'FishCa Restaurant', 'Hãy đến và trải nghiệm những món ăn ngon của chúng tôi.', '<div class="itemFullTextWell">\r\n<ul>\r\n	<li><span class="short_text" id="result_box" lang="vi" tabindex="-1"><span>Gi&aacute; cả phải chăng, đương đại, ăn uống b&igrave;nh thường.</span></span></li>\r\n	<li><span class="short_text" id="result_box" lang="vi" tabindex="-1"><span>Một loạt c&aacute;c lựa chọn ăn s&aacute;ng!</span></span></li>\r\n	<li><span id="result_box" lang="vi" tabindex="-1"><span>Một loạt c&aacute;c loại hải sản tươi sống v&agrave;o thực đơn bữa tối của ch&uacute;ng t&ocirc;i.</span></span></li>\r\n</ul>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>', 'en'),
(28, 6, 'SPICE SPA', 'SPICE UP YOUR LIFE AT SPICE SPA!', '<div class="itemFullTextWell">\r\n<p>Rejuvenate your senses at our Spice spa. Relax and enjoy the&nbsp;many spa treatments and services offered wellness.</p>\r\n\r\n<ul>\r\n	<li>Add spice to your spa experience!</li>\r\n	<li>Each treatment room has a theme</li>\r\n	<li>Make your own herbal pouch blend</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>', 'en'),
(29, 7, 'Gym', 'Don\'t let your fitness routine stop while you are travelling.', '<div class="itemFullTextWell">\r\n<p>Have you tried exercising from the rooftop on the 24th floor yet? Relax as&nbsp;your body, mind and soul harmonize with the sky and the sea.</p>\r\n</div>', 'en'),
(31, 18, 'Hình ảnh', 'Hình ảnh', '<p>1</p>', 'vi'),
(33, 19, 'Phòng Highlight', 'Đây là nơi lý tưởng cho kỳ nghỉ cùng gia đình và bạn bè', '<div class="row">\r\n     <div class="col-sm-6 col-xs-12 content-info">\r\n      <h4>Mô tả</h4>\r\n      <p>Đây là căn hộ cỡ lớn. HIGHLIGHT có 2 phòng ngủ (1 giường cỡ lớn, 1 giường cỡ trung) với phòng tắm riêng biệt. HIGHLIGHT có phòng khách và nhà bếp riêng biệt cùng tầm nhìn hướng biển. Các căn hộ HIGHLIGHT đều có ban công rộng rãi.</p>\r\n      <table class="table table-condensed">\r\n       <thead>\r\n        <tr>\r\n         <th>Góc nhìn: </th>\r\n         <th>Diện tích: </th>\r\n         <th>Số khách: </th>\r\n        </tr>\r\n       </thead>\r\n       <tbody>\r\n        <tr>\r\n         <td>Biển</td>\r\n         <td>74m2</td>\r\n         <td>4 người</td>\r\n        </tr>\r\n       </tbody>\r\n      </table>\r\n      <table class="table table-condensed">\r\n       <thead>\r\n        <tr>\r\n         <th>Giường ngủ và phòng tắm: </th>\r\n        </tr>\r\n       </thead>\r\n       <tbody>\r\n        <tr>\r\n         <td>1 giường lớn + 1 giường trung\r\n\r\nPhòng tắm đứng</td>\r\n        </tr>\r\n       </tbody>\r\n      </table>\r\n     </div>\r\n     <div class="col-sm-6 col-xs-12 content-info">\r\n      <h4>Tiện nghi</h4>\r\n      <ul>\r\n       <li>Tắm </li>\r\n       <li>Phòng tắm </li>\r\n       <li>Quầy </li>\r\n       <li>Ăn Counter</li>\r\n       <li>Máy pha cà phê </li>\r\n       <li>Bình đun nước</li>\r\n       <li>An toàn Box </li>\r\n       <li>Máy sấy tóc</li>\r\n       <li>Phòng bếp </li>\r\n       <li>Tủ lạnh</li>\r\n       <li>Lò vi sóng </li>\r\n       <li>Bếp cảm ứng 2-Plate</li>\r\n       <li>Điều hòa nhiệt độ </li>\r\n       <li>Điện thoại </li>\r\n       <li>Truyền hình cáp </li>\r\n       <li>Wifi miễn phí</li>\r\n      </ul>\r\n     </div>\r\n    </div>', 'vi'),
(34, 20, 'Phòng Highlight Plus', 'Đây là nơi lý tưởng cho kỳ nghỉ cùng gia đình và bạn bè', '<div class="row">\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<p>HIGHLIGHT PLUS l&agrave; căn hộ cỡ lớn c&oacute; 2 ph&ograve;ng ngủ (2 giường cỡ lớn) với ph&ograve;ng tắm ri&ecirc;ng. HIGHLIGHT PLUS c&oacute; ph&ograve;ng kh&aacute;ch v&agrave; nh&agrave; b&ecirc;́p ri&ecirc;ng biệt c&ugrave;ng ban c&ocirc;ng rộng r&atilde;i với t&acirc;̀m nh&igrave;n hướng bi&ecirc;̉n.</p>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>G&oacute;c nh&igrave;n:</th>\r\n			<th>Diện t&iacute;ch:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Bi&ecirc;̉n</td>\r\n			<td>114m2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table class="table table-condensed">\r\n	<thead>\r\n		<tr>\r\n			<th>Giường ngủ v&agrave; ph&ograve;ng tắm:</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1 2 giường lớn v&agrave; ph&ograve;ng tắm đứng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="col-sm-6 col-xs-12 content-info">\r\n<h4>Tiện nghi</h4>\r\n\r\n<ul>\r\n	<li>Tắm</li>\r\n	<li>Ph&ograve;ng tắm</li>\r\n	<li>Quầy</li>\r\n	<li>Ăn Counter</li>\r\n	<li>M&aacute;y pha c&agrave; ph&ecirc;</li>\r\n	<li>B&igrave;nh đun nước</li>\r\n	<li>An to&agrave;n Box</li>\r\n	<li>M&aacute;y sấy t&oacute;c</li>\r\n	<li>Ph&ograve;ng bếp</li>\r\n	<li>Tủ lạnh</li>\r\n	<li>L&ograve; vi s&oacute;ng</li>\r\n	<li>Bếp cảm ứng 2-Plate</li>\r\n	<li>Điều h&ograve;a nhiệt độ</li>\r\n	<li>Điện thoại</li>\r\n	<li>Truyền h&igrave;nh c&aacute;p</li>\r\n	<li>Wifi miễn ph&iacute;</li>\r\n</ul>\r\n</div>\r\n</div>', 'vi'),
(35, 21, 'Phòng Ultralight', '3-bedroom ocean view suite', '<div class="row">\r\n     <div class="col-sm-6 col-xs-12 content-info">\r\n      <h4>Mô tả</h4>\r\n      <p>Light là căn hộ một phòng ngủ hiện đại, thoáng mát có một giường cỡ lớn hoặc 2 giường đơn, với không gian phòng khách và khu vực bếp, một phòng tắm.</p>\r\n      <table class="table table-condensed">\r\n       <thead>\r\n        <tr>\r\n         <th>Góc nhìn: </th>\r\n         <th>Diện tích: </th>\r\n         <th>Số khách: </th>\r\n        </tr>\r\n       </thead>\r\n       <tbody>\r\n        <tr>\r\n         <td>Không</td>\r\n         <td>47m2</td>\r\n         <td>2 người</td>\r\n        </tr>\r\n       </tbody>\r\n      </table>\r\n      <table class="table table-condensed">\r\n       <thead>\r\n        <tr>\r\n         <th>Giường ngủ và phòng tắm: </th>\r\n        </tr>\r\n       </thead>\r\n       <tbody>\r\n        <tr>\r\n         <td>1 giường lớn và phòng tắm đứng</td>\r\n        </tr>\r\n       </tbody>\r\n      </table>\r\n     </div>\r\n     <div class="col-sm-6 col-xs-12 content-info">\r\n      <h4>Tiện nghi</h4>\r\n      <ul>\r\n       <li>Tắm </li>\r\n       <li>Phòng tắm </li>\r\n       <li>Quầy </li>\r\n       <li>Ăn Counter</li>\r\n       <li>Máy pha cà phê </li>\r\n       <li>Bình đun nước</li>\r\n       <li>An toàn Box </li>\r\n       <li>Máy sấy tóc</li>\r\n       <li>Phòng bếp </li>\r\n       <li>Tủ lạnh</li>\r\n       <li>Lò vi sóng </li>\r\n       <li>Bếp cảm ứng 2-Plate</li>\r\n       <li>Điều hòa nhiệt độ </li>\r\n       <li>Điện thoại </li>\r\n       <li>Truyền hình cáp </li>\r\n       <li>Wifi miễn phí</li>\r\n      </ul>\r\n     </div>\r\n    </div>', 'vi'),
(36, 22, 'The Top', 'The Top', '<div class="mota">&quot;Phong ph&uacute; c&aacute;c lựa chọn ăn s&aacute;ng, ăn trưa hoặc mang về.&quot;</div>\r\n\r\n<div class="itemFullTextWell">\r\n<ul>\r\n	<li> Thư gi&atilde;n, gi&aacute; trị lớn v&agrave; hương vị c&agrave; ph&ecirc; tuyệt hảo.</li>\r\n	<li> Bạn kh&ocirc;ng ăn s&aacute;ng? Nơi n&agrave;y d&agrave;nh cho bạn. Thưởng thức một phần mỳ v&agrave; một ly cappuccino n&oacute;ng</li>\r\n	<li> Bạn muốn trưa nhanh ch&oacute;ng hoặc mang đi? H&atilde;y chọn m&oacute;n salad tươi ngon c&ugrave;ng b&aacute;nh m&igrave; hoặc mỳ</li>\r\n</ul>\r\n</div>', 'vi'),
(37, 23, 'In-room Dinning', 'Dùng bữa tại phòng', '<div class="itemFullTextWell">\r\n<ul>\r\n	<li> Thoải m&aacute;i c&ugrave;ng bữa ăn ngay tại ph&ograve;ng</li>\r\n	<li> Những bữa ăn gia đ&igrave;nh phong c&aacute;ch Việt Nam được phục vụ ngay tại căn hộ</li>\r\n	<li> Bạn th&iacute;ch tự nấu ăn? Đ&acirc;y l&agrave; lựa chọn của bạn. Ch&uacute;ng t&ocirc;i đ&atilde; cung cấp sẵn nồi v&agrave; chảo.</li>\r\n</ul>\r\n</div>', 'vi'),
(38, 24, 'Wine Room', 'Phòng rượu', '<div class="mota">&quot;Phong ph&uacute; c&aacute;c lựa chọn ăn s&aacute;ng, ăn trưa hoặc mang về.&quot;</div>\r\n\r\n<div class="itemFullTextWell">\r\n<ul>\r\n	<li> Thư gi&atilde;n, gi&aacute; trị lớn v&agrave; hương vị c&agrave; ph&ecirc; tuyệt hảo.</li>\r\n	<li> Bạn kh&ocirc;ng ăn s&aacute;ng? Nơi n&agrave;y d&agrave;nh cho bạn. Thưởng thức một phần mỳ v&agrave; một ly cappuccino n&oacute;ng</li>\r\n	<li> Bạn muốn trưa nhanh ch&oacute;ng hoặc mang đi? H&atilde;y chọn m&oacute;n salad tươi ngon c&ugrave;ng b&aacute;nh m&igrave; hoặc mỳ</li>\r\n</ul>\r\n</div>', 'vi'),
(39, 25, 'VỊ TRÍ KHÁCH SẠN', 'Đà Nẵng tự hào là một trong những điểm nghỉ dưỡng "lý tưởng nhất" tại Việt Nam. Với một sân bay quốc tế hiện đại, những bãi cát trắng nguyên sơ cùng các di sản văn hóa thế giới, Đà Nẵng đem đến cho du khách một trải nghiệm mới lạ và đáng nhớ mà bạn không thể tìm thấy ở bất kỳ nơi đâu trên thế giới.\r\n\r\nVới vị trí đắc địa của mình, À La Carte Đà Nẵng Beach rất thuận lợi cho du khách trong việc di chuyển đến các địa điểm du lịch như phố cổ Hội An nổi tiếng thế giới, thành phố Đà Nẵng, Ngũ Hành Sơn, khu du lịch Bà Nà Hills, di sản văn hóa thế giới - thánh địa Mỹ Sơn và cố đô Huế.\r\n\r\n    Cách sân bay Quốc tế Đà Nẵng: 7 km\r\n    Cách ga Đà Nẵng: 6 km\r\n    Cách quốc lộ 1A: 5 km', '<div class="itemFullText">\r\n<p style="text-align:justify">Đ&agrave; Nẵng tự h&agrave;o l&agrave; một trong những điểm nghỉ dưỡng &quot;l&yacute; tưởng nhất&quot; tại Việt Nam. Với một s&acirc;n bay quốc tế hiện đại, những b&atilde;i c&aacute;t trắng nguy&ecirc;n sơ c&ugrave;ng c&aacute;c di sản văn h&oacute;a thế giới, Đ&agrave; Nẵng đem đến cho du kh&aacute;ch một trải nghiệm mới lạ v&agrave; đ&aacute;ng nhớ m&agrave; bạn kh&ocirc;ng thể t&igrave;m thấy ở bất kỳ nơi đ&acirc;u tr&ecirc;n thế giới.</p>\r\n\r\n<p style="text-align:justify">Với vị tr&iacute; đắc địa của m&igrave;nh, &Agrave; La Carte Đ&agrave; Nẵng Beach rất thuận lợi cho du kh&aacute;ch trong việc di chuyển đến c&aacute;c địa điểm du lịch như phố cổ Hội An nổi tiếng thế giới, th&agrave;nh phố Đ&agrave; Nẵng, Ngũ H&agrave;nh Sơn, khu du lịch B&agrave; N&agrave; Hills, di sản văn h&oacute;a thế giới - th&aacute;nh địa Mỹ Sơn v&agrave; cố đ&ocirc; Huế.</p>\r\n\r\n<ul>\r\n	<li>C&aacute;ch s&acirc;n bay Quốc tế Đ&agrave; Nẵng: 7 km</li>\r\n	<li>C&aacute;ch ga Đ&agrave; Nẵng: 6 km</li>\r\n	<li>C&aacute;ch quốc lộ 1A: 5 km</li>\r\n</ul>\r\n</div>', 'vi'),
(40, 26, 'ĐƯỜNG ĐẾN KHÁCH SẠN', 'Khách sạn À La Carte Đà Nẵng Beach tọa lạc tại vị trí đắc địa, ngay trung tâm thành phố Đà Nẵng, ngay bên cạnh bãi biển Phạm Văn Đồng. Để đi đến khách sạn, từ sân bay Đà Nẵng, rẽ phải vào đường Nguyễn Văn Linh. Chạy xe qua cầu Rồng, hết đường Võ Văn Kiệt và rẽ trái qua đường Võ Nguyên Giáp. Khách sạn toạ lạc ngay góc đường Võ Nguyên Giáp và Dương Đình Nghệ.', '<p>Kh&aacute;ch sạn &Agrave; La Carte Đ&agrave; Nẵng Beach tọa lạc tại vị tr&iacute; đắc địa, ngay trung t&acirc;m th&agrave;nh phố Đ&agrave; Nẵng, ngay b&ecirc;n cạnh b&atilde;i biển Phạm Văn Đồng. Để đi đến kh&aacute;ch sạn, từ s&acirc;n bay Đ&agrave; Nẵng, rẽ phải v&agrave;o đường Nguyễn Văn Linh. Chạy xe qua cầu Rồng, hết đường V&otilde; Văn Kiệt v&agrave; rẽ tr&aacute;i qua đường V&otilde; Nguy&ecirc;n Gi&aacute;p. Kh&aacute;ch sạn toạ lạc ngay g&oacute;c đường V&otilde; Nguy&ecirc;n Gi&aacute;p v&agrave; Dương Đ&igrave;nh Nghệ.</p>', 'vi'),
(42, 28, 'Loại phòng', 'Lưu trú...', '<p>Tại &Agrave; La Carte Đ&agrave; Nẵng Beach, du kh&aacute;ch c&oacute; thể lựa chọn c&aacute;c căn hộ mang phong c&aacute;ch kh&aacute;c nhau từ căn hộ một ph&ograve;ng ngủ hay hai ph&ograve;ng ngủ v&agrave; ban c&ocirc;ng c&oacute; tầm nh&igrave;n hướng n&uacute;i v&agrave; biển.</p>', 'vi'),
(43, 29, 'Nhà hàng - Bar', 'À La Carte Đà Nẵng Beach mang đến cho du khách sự đa dạng trong việc lựa chọn món ăn và khu vực ăn uống.', '<div class="itemFullTextWell">\r\n<p style="text-align:justify">&Agrave; La Carte Đ&agrave; Nẵng Beach mang đ&ecirc;́n cho du kh&aacute;ch sự đa dạng trong việc lựa chọn m&oacute;n ăn v&agrave; khu vực ăn u&ocirc;́ng. Du kh&aacute;ch c&oacute; th&ecirc;̉ tận hưởng bữa ăn ngay tại căn hộ của m&igrave;nh, thưởng thức một bữa ăn nhẹ nhanh ch&oacute;ng tại nh&agrave; h&agrave;ng v&agrave; thưởng ngoạn cảnh bi&ecirc;̉n ngoạn mục từ tr&ecirc;n qu&acirc;̀y bar t&acirc;̀ng thượng.</p>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>', 'vi'),
(44, 30, 'Thư giãn', 'Thư giãn', '<p>Vẻ đẹp thực sự đến từ b&ecirc;n trong: n&oacute; phản &aacute;nh sức khỏe v&agrave; sự h&agrave;i h&ograve;a của cơ thể, linh hồn v&agrave; t&acirc;m tr&iacute;.</p>', 'vi'),
(45, 31, 'Tiện nghi', 'Sự lựa chọn là của bạn!', '<p>Với thi&ecirc;́t k&ecirc;́ hiện đại, mới mẻ v&agrave; &yacute; tưởng đ&acirc;̀y b&acirc;́t ngờ, &Agrave; La Carte Đ&agrave; Nẵng Beach mang đ&ecirc;́n cho du kh&aacute;ch những căn hộ hướng bi&ecirc;̉n rộng r&atilde;i, tho&aacute;ng m&aacute;t với mức gi&aacute; đ&acirc;̀y h&acirc;́p d&acirc;̃n c&ugrave;ng &yacute; tưởng cung c&acirc;́p tiện &iacute;ch cộng th&ecirc;m gọi theo m&oacute;n đ&acirc;̀y s&aacute;ng tạo v&agrave; những dịch vụ th&acirc;n thiện v&agrave; th&uacute; vị.</p>', 'vi'),
(46, 32, 'Infinity Pool', 'Hồ bơi hướng nhìn ra biển ngoạn mục', '<div class="itemFullTextWell">\r\n<ul>\r\n	<li>H&ocirc;̀ bơi hướng nh&igrave;n ra bi&ecirc;̉n ngoạn mục.</li>\r\n	<li>Khu vực tắm nắng thư gi&atilde;n.</li>\r\n</ul>\r\n</div>', 'vi'),
(47, 33, 'Khu vui chơi trẻ em', 'Một không gian thoải mái và vui nhộn miễn phí cho các bé tại Câu lạc bộ trẻ em', '<p style="text-align:justify">Đội ngũ nh&acirc;n vi&ecirc;n C&acirc;u lạc bộ trẻ em của ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng để chăm s&oacute;c những kh&aacute;ch h&agrave;ng nhỏ đ&aacute;ng y&ecirc;u, mang đến cho c&aacute;c b&eacute; c&aacute;c hoạt động th&uacute; vị v&agrave; tạo n&ecirc;n những kỉ niệm cho k&igrave; nghỉ đ&aacute;ng nhớ của b&eacute;.</p>\r\n\r\n<ul>\r\n	<li>S&acirc;n chơi vui nhộn.</li>\r\n	<li>C&aacute;c hoạt động mang t&iacute;nh gi&aacute;o dục cao .</li>\r\n	<li>Cộng th&ecirc;m dịch vụ nh&acirc;n vi&ecirc;n chăm s&oacute;c được đ&agrave;o tạo b&agrave;i bản</li>\r\n</ul>', 'vi'),
(48, 34, 'Quầy cửa hàng lưu niệm.', 'Nơi lí tưởng để mua những món quà lưu niệm xinh xắn', '<p>Nơi l&iacute; tưởng để mua những m&oacute;n qu&agrave; lưu niệm xinh xắn. Cửa h&agrave;ng c&oacute; nhiều loại vật phẩm lưu niệm, qu&agrave; tặng, trang sức v&agrave; nhiều vật dụng kh&aacute;c - tất cả trong tầm tay bạn.</p>', 'vi'),
(49, 35, 'Thư viện', 'Một nơi yên tĩnh sẽ giúp bạn cảm thấy tốt hơn', '<p>Đọc một cuốn s&aacute;ch y&ecirc;u th&iacute;ch, một mẫu truyện ngắn, hay thậm ch&iacute; một tạp ch&iacute; hay tờ b&aacute;o, ở một nơi y&ecirc;n tĩnh sẽ gi&uacute;p bạn cảm thấy tốt hơn cũng như xua tan mọi căng thẳng, &aacute;p lực cuộc sống.</p>', 'vi');
INSERT INTO `post_translations` (`id`, `post_id`, `name`, `description`, `content`, `locale`) VALUES
(51, 39, 'TRẢI NGHIỆM BÀ NÀ HILLS ĐƯỜNG LÊN TIÊN CẢNH', '1 ngày | Khởi hành hàng ngày', '<div class="itemFullTextWell">\r\n<p style="text-align:justify">B&agrave; N&agrave; được biết đến như &ldquo;H&ograve;n ngọc kh&iacute; hậu&rdquo; của miền Trung,l&agrave; l&aacute; phổi xanh của th&agrave;nh phố Đ&agrave; Nẵng - nơi duy nhất c&oacute; thể mang đến cho du kh&aacute;ch nguồn kh&ocirc;ng kh&iacute; trong l&agrave;nh, tươi m&aacute;t v&agrave; những cảm nhận độc đ&aacute;o của sự giao thoa bốn m&ugrave;a trong một ng&agrave;y. H&atilde;y kh&aacute;m ph&aacute; B&agrave; N&agrave; để<br />\r\ncảm nhận sự thay đổi của thi&ecirc;n nhi&ecirc;n trong từng khoảnh khắc.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>07:30</strong> Đ&oacute;n kh&aacute;ch tại kh&aacute;ch sạn trong nội th&agrave;nh Đ&agrave; Nẵng khởi h&agrave;nh đi tham quan B&agrave; N&agrave; Hills<br />\r\n<strong>09:00</strong> Tham quan Khu Le Jardin, tham quan Hầm Rượu Debay của Ph&aacute;p (chi ph&iacute; tự t&uacute;c). Viếng Ch&ugrave;a Linh Ứng B&agrave; N&agrave;, chi&ecirc;m ngưỡng tượng Phật Th&iacute;ch Ca cao 27m, Vườn Lộc Uyển, Quan &Acirc;m C&aacute;c. Tiếp tục đến Gare Debay đi tuyến c&aacute;p thứ 2 l&ecirc;n đỉnh B&agrave; N&agrave;.Hướng dẫn đưa đo&agrave;n v&agrave;o tham quan khu vui chơi Fantasy Park tham gia c&aacute;c tr&ograve; chơi phi&ecirc;u lưu mới lạ, ngộ nghĩnh, hấp dẫn, hiện đại như v&ograve;ng quay t&igrave;nh y&ecirc;u, Phi c&ocirc;ng Skiver, Đường đua lửa, Xe điện đụng Ng&ocirc;i nh&agrave; ma...<br />\r\n<strong>11:30</strong> L&ecirc;n c&aacute;p treo về lại Đ&agrave; Nẵng<br />\r\n<strong>13:30</strong> D&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng.<br />\r\n<strong>14:30</strong> Khởi h&agrave;nh về lại Đ&agrave; Nẵng.<br />\r\n<strong>15:30</strong> Xe ti&ecirc;n kh&aacute;ch tại điểm đ&oacute;n ban đầu. Kết th&uacute;c chương tr&igrave;nh.<br />\r\n<em>Ch&agrave;o tạm biệt</em></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p><strong>Gi&aacute; trẻ em:</strong></p>\r\n\r\n<p>Trẻ em dưới 1m: Miễn ph&iacute;<br />\r\nTrẻ em từ 1-1.3m: 75% gi&aacute; tour<br />\r\nTrẻ em tr&ecirc;n 1.3m: 100 % gi&aacute; tour</p>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm:</strong></p>\r\n\r\n<p>Xe m&aacute;y lạnh vận chuyển theo chương tr&igrave;nh<br />\r\nHướng dẫn vi&ecirc;n tiếng Việt nhiệt t&igrave;nh, vui vẻ suốt tuyến<br />\r\nĂn trưa theo ti&ecirc;u chuẩn chương tr&igrave;nh.<br />\r\nV&eacute; c&aacute;p treo v&agrave; vui chơi tại khu Fantasy Park: 550.000 vnđ/kh&aacute;ch<br />\r\nThuế VAT, Bảo hiểm du lịch v&agrave; ph&iacute; phục vụ</p>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n kh&ocirc;ng bao gồm:</strong></p>\r\n\r\n<p>Chi ph&iacute; c&aacute; nh&acirc;n v&agrave; c&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng được liệt k&ecirc; ở tr&ecirc;n.</p>\r\n</div>', 'vi'),
(52, 31, 'Facilities', 'THE CHOICE IS YOURS!', '<p>With a fresh modern design and a surprising concept, &Agrave; La Carte Da Nang Beach is all about fresh and spacious sea-view suites at amazing prices with a creative &agrave; la carte add-on concept.</p>', 'en'),
(53, 34, 'Gift Shop', 'An ideal place to buy cool gifts and souvenirs', '<p>Our gift shop is full of&nbsp;cool gifts and souvenirs. Items range from refrigerator magnets to jewelry, wallets, snacks, and other sundry items - all within reach.</p>', 'en'),
(54, 18, 'Image', 'Hình ảnh', '<p>1</p>', 'en'),
(55, 33, 'Kid\'s-Club', 'A fun and free space for kids at Kids Club', '<div class="_Ejb">\r\n<div id="tw-target">\r\n<div class="tw-nfl tw-ta-container" id="tw-target-text-container">\r\n<pre style="text-align:left">\r\n<span style="font-family:Arial,Helvetica,sans-serif">Our Children&#39;s Club staff are always ready to take care of the lovely little guests, bring the kids fun activities and make memories for their memorable holiday.\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;Playground fun.\r\n&nbsp;&nbsp;&nbsp;&nbsp;Highly educational activities.\r\n&nbsp;&nbsp;&nbsp;&nbsp;Plus trained caregiver services are well-trained</span></pre>\r\n</div>\r\n</div>\r\n</div>', 'en'),
(56, 35, 'Lirbrary', 'A quiet place will help you feel better', '<div class="_Ejb">\r\n<div id="tw-target">\r\n<div class="tw-nfl tw-ta-container" id="tw-target-text-container">\r\n<pre style="text-align:left">\r\n<span style="font-family:Arial,Helvetica,sans-serif">Reading a favorite book, a short story, or even a magazine or newspaper, in a quiet place will help you feel better as well as dispel any stress or pressure of life.</span></pre>\r\n</div>\r\n</div>\r\n</div>', 'en'),
(57, 39, 'EXPERIENCE BA NA HILLS  ROAD TO HEAVEN', 'one day', '<p>Ba Na is known as the &quot;Pearl of climate&quot; of Central Vietnam, the green lung of Danang - the only place that can bring visitors fresh air, fresh and unique feeling. of four-seater interference in one day. Discover Ba Na to<br />\r\nFeel the change of nature in each moment.<br />\r\n<br />\r\n<br />\r\n07:30 Pick up at the hotel in the city of Da Nang depart to visit Ba Na Hills<br />\r\n09:00 Visiting the Le Jardin area, visiting French Debay Cellar (self-sufficient). Visiting Linh Ung Pagoda Ba Na, admire the 27m Shakyamuni Buddha statue, Deer Park, Guan Yin. Continue to Gare Debay cable second to the top of Ba Na. Guide to visit the Fantasy Park to join the game adventure new, fun, attractive, modern as the rotation of love. , The Skiver Pilot, the Racetrack, the Electric Car,<br />\r\n11:30 Take the cable car back to Da Nang<br />\r\n13:30 Lunch at the restaurant.<br />\r\n14:30 Departure back to Da Nang.<br />\r\n15:30 First car at the pickup point. End program.<br />\r\nGood bye<br />\r\n<br />\r\n<br />\r\nChild Price:<br />\r\n<br />\r\nChildren under 1m: Free<br />\r\nChildren 1-1.3m: 75% of tour price<br />\r\nChildren over 1.3m: 100% tour price<br />\r\n<br />\r\nPrice includes:<br />\r\n<br />\r\nAir-conditioned vehicles transported by the program<br />\r\nVietnamese guide enthusiastic, fun through the line<br />\r\nLunch program standard.<br />\r\nCable car ticket at Fantasy Park: 550,000 VND / person<br />\r\nVAT, travel insurance and service charge<br />\r\n<br />\r\nPrice does not include:<br />\r\n<br />\r\nPersonal expenses and other expenses not listed above.</p>', 'en'),
(58, 25, 'Hotel Location', 'Hotel Location', '<p>Da Nang is proud to be one of the &quot;most ideal&quot; resorts in Vietnam. With a modern international airport, pristine white sands and world cultural heritages, Da Nang offers visitors a memorable and memorable experience that you can not find anywhere. on the world.<br />\r\n<br />\r\nWith its prime location, La Carte Da Nang Beach is very convenient for travelers to travel destinations such as the world famous Hoi An ancient town, Da Nang city, Ngu Hanh Son area Ba Na Hills tourism, World Cultural Heritage - My Son Sanctuary and Hue ancient capital.<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; From Da Nang International Airport: 7 km<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; Da Nang Railway Station: 6 km<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; National Highway 1A: 5 km</p>', 'en'),
(59, 26, 'Hotel road', 'hotel road', '<p>&Agrave; La Carte Da Nang Beach Hotel is ideally located in the center of Danang City, right next to Pham Van Dong Beach. To go to the hotel, from Da Nang Airport, turn right on Nguyen Van Linh Street. Drive through the Dragon Bridge, the Vo Van Kiet and turn left Vo Nguyen Giap. The hotel is located at the corner of Vo Nguyen Giap and Duong Dinh Nghe.</p>', 'en'),
(61, 30, 'Relax', 'Relax', '<p>Beauty really comes from within: It reflects the health and harmony of the body, soul and mind.</p>', 'en'),
(62, 29, 'Restaurant - Bar', 'La Carte Da Nang Beach offers guests a wide variety of food choices and dining options', '<div class="itemFullTextWell">\r\n<p style="text-align:justify">La Carte Da Nang Beach offers guests a wide variety of food choices and dining options. Guests can enjoy a meal at their own apartment, enjoy a quick snack at the restaurant and enjoy spectacular sea views from the rooftop bar.</p>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>', 'en'),
(63, 28, 'Suile Dreams', 'Staying ...', '<p>At La Carte Da Nang Beach, guests can choose from different style apartments from one-bedroom or two-bedroom apartments and balconies with mountain and sea views.</p>', 'en'),
(64, 21, 'Ultralight', '3-bedroom ocean view suite', '<div class="itemFullTextWell">\r\n<p style="text-align:justify">This is a special apartment with 3 bedrooms with private bathrooms, of which 2 have a separate bath and shower. ULTRALIGHT has an extra spacious living room and kitchen and a bar in the room. In particular, the personality of this room type is a private sauna.</p>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>', 'en'),
(65, 20, 'Highlight Plus', 'Two-bedrooms ocean view suite', '<div class="mota">&quot;This is an ideal place for a holiday with family and friends.&quot;<br />\r\n<br />\r\nHIGHLIGHT PLUS is a large apartment with 2 bedrooms (2 large beds) with en suite bathroom. HIGHLIGHT PLUS features a separate living room and kitchen, and a spacious balcony with sea views.</div>\r\n\r\n<div class="itemFullTextWell">\r\n<p style="text-align:justify">&nbsp;</p>\r\n</div>\r\n\r\n<div class="bookrom">&nbsp;</div>', 'en'),
(66, 19, 'Highlight', 'Two-bedroom ocean view suite', '<h2><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif">Two-bedroom ocean view suite<br />\r\n&quot;This is an ideal place for a holiday with family and friends.&quot;This is a large apartment. HIGHLIGHT has 2 bedrooms (1 large bed, 1 medium bed) with separate bathroom. HIGHLIGHT features a separate living room and kitchen with sea view. HIGHLIGHT apartments have spacious balconies</span></span></h2>\r\n\r\n<div class="itemBody">\r\n<div class="bookrom">&nbsp;</div>\r\n\r\n<div class="clr">&nbsp;</div>\r\n\r\n<div class="itemExtraFields">\r\n<div class="borFields">&nbsp;\r\n<div class="field_services">\r\n<div class="Other_Services">\r\n<ul>\r\n	<li>\r\n	<table border="0">\r\n		<tbody>\r\n			<tr>\r\n				<td>&nbsp;&nbsp;</td>\r\n				<td>&nbsp;</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'en'),
(67, 40, 'CỐ ĐÔ HUẾ', '1 ngày | Khởi hành hằng ngày', '<div class="itemFullTextWell">\r\n<p>H&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; quần thể di t&iacute;ch Huế được UNESCO c&ocirc;ng nhận l&agrave; Di sản Văn h&oacute;a Thế giới; ngược d&ograve;ng thời gian cảm nhận lịch sử thăng trầm của đất th&agrave;nh kinh xưa; tham quan đ&egrave;o Hải V&acirc;n &ldquo;Thi&ecirc;n hạ đệ nhất h&ugrave;ng quan&rdquo; kết hợp với đường hầm Hải V&acirc;n hiện đại&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>07:30</strong> Xe v&agrave; hướng dẫn vi&ecirc;n Saigontourist đ&oacute;n đo&agrave;n tại kh&aacute;ch sạn ở trong nội th&agrave;nh Đ&agrave; Nẵng, khởi h&agrave;nh đi Huế theo đường hầm Hải V&acirc;n (Đường hầm d&agrave;i v&agrave; hiện đại nhất Đ&ocirc;ng Nam &Aacute;).<br />\r\n<strong>10:00</strong> Đến Huế, Xe đưa qu&yacute; kh&aacute;ch tham quan Di sản Văn h&oacute;a Thế giới Kinh Th&agrave;nh Huế - Ho&agrave;ng cung của 13 vị Vua triều Nguyễn với c&aacute;c c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu: Ngọ M&ocirc;n, điện Th&aacute;i Ho&agrave;, Tử Cấm Th&agrave;nh, Thế Miếu, Hiển L&acirc;m C&aacute;c, Cửu Đỉnh, Bảo t&agrave;ng Cổ vật Cung đ&igrave;nh Huế.<br />\r\n<strong>11:30</strong> Qu&yacute; kh&aacute;ch d&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng.<br />\r\n<strong>13:00</strong> Xe đưa qu&yacute; kh&aacute;ch Tham quan ch&ugrave;a Thi&ecirc;n Mụ, viếng lăng vua Khải Định - chi&ecirc;m ngưỡng một c&ocirc;ng tr&igrave;nh kết hợp h&agrave;i h&ograve;a giữa kiến tr&uacute;c truyền thống Huế v&agrave; hiện đại của T&acirc;y phương<br />\r\nXe đưa đo&agrave;n khởi h&agrave;nh về lại Đ&agrave; Nẵng, trả kh&aacute;ch tại điểm đ&oacute;n ban đầu.<br />\r\n<strong>15:30</strong> Kết th&uacute;c chương tr&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gi&aacute; trẻ em:</strong></p>\r\n\r\n<ul>\r\n	<li>Trẻ em dưới 5 tuổi: Miễn ph&iacute;</li>\r\n	<li>Trẻ em từ 5-11 tuổi: 75% gi&aacute; tour</li>\r\n	<li>Trẻ em tr&ecirc;n 12 tuổi: 100 % gi&aacute; tour</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong></p>\r\n\r\n<ul>\r\n	<li>Xe m&aacute;y lạnh vận chuyển theo chương tr&igrave;nh</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiếng Việt nhiệt t&igrave;nh, vui vẻ suốt tuyến</li>\r\n	<li>V&eacute; tham quan</li>\r\n	<li>Ăn trưa theo ti&ecirc;u chuẩn chương tr&igrave;nh.</li>\r\n	<li>Qu&agrave; tặng: Bảo hiểm du lịch, n&oacute;n Saigontourist, nước suối v&agrave; khăn lạnh.</li>\r\n	<li>Thuế VAT v&agrave; ph&iacute; phục vụ</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n kh&ocirc;ng bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>Chi ph&iacute; c&aacute; nh&acirc;n v&agrave; c&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng được liệt k&ecirc; ở tr&ecirc;n.</li>\r\n</ul>\r\n</div>', 'vi'),
(68, 41, 'KHÁM PHÁ CÙ LAO CHÀM', '1 ngày | Khởi hành hằng ngày', '<div class="itemFullTextWell">\r\n<p>Với hệ động thực vật phong ph&uacute; v&agrave; những di t&iacute;ch lịch sử h&agrave;ng trăm năm trước, C&ugrave; lao Ch&agrave;m đ&atilde; được UNESCO c&ocirc;ng nhận l&agrave; Khu dự trữ sinh quyển thế giới v&agrave;o năm 2009. Đ&acirc;y cũng l&agrave; 1 trong 15 Khu Bảo tồn biển của Việt Nam. Ngo&agrave;i chuyến thưởng ngoạn vẻ đẹp thi&ecirc;n nhi&ecirc;n biển - đảo, c&aacute;c di t&iacute;ch lịch sử - văn h&oacute;a, du kh&aacute;ch c&ograve;n thưởng thức c&aacute;c m&oacute;n hải sản nổi tiếng của v&ugrave;ng biển đẹp thuộc miền Trung n&agrave;y.</p>\r\n\r\n<p><strong>07:30</strong> Đ&oacute;n kh&aacute;ch tại điểm hẹn trong nội th&agrave;nh th&agrave;nh phố Đ&agrave; Nẵng.<br />\r\n<strong>08:00</strong> Khởi h&agrave;nh đi C&ugrave; lao Ch&agrave;m bằng t&agrave;u.<br />\r\n<strong>09:30</strong> Đến C&ugrave; lao Ch&agrave;m, tham quan c&aacute;c điểm du lịch tr&ecirc;n đảo như: Trung t&acirc;m Bảo tồn biển, ch&ugrave;a Hải Tạng tr&ecirc;n 250 năm, Giếng cổ của cư d&acirc;n thời Champa tr&ecirc;n 700 năm, lăng &Ocirc;ng Ngư (lăng thờ c&aacute; &ocirc;ng) của l&agrave;ng ch&agrave;i tr&ecirc;n đảo. Mua sắm h&agrave;ng lưu niệm, hải sản, đặc sản tại chợ qu&ecirc; T&acirc;n Hiệp.<br />\r\n<strong>10:00</strong> Đi thuyền tham quan đảo H&ograve;n D&agrave;i - H&ograve;n Mồ, h&ograve;n M&egrave;, b&atilde;i Xếp... kh&aacute;m ph&aacute; v&agrave; ngắm san h&ocirc;.<br />\r\n<strong>12:00</strong> Ăn trưa tr&ecirc;n đảo. Ngo&agrave;i thực đơn ch&iacute;nh, du kh&aacute;ch c&oacute; thể thưởng thức th&ecirc;m c&aacute;c m&oacute;n đặc sản: Cua đ&aacute; C&ugrave; lao Ch&agrave;m, T&ocirc;m h&ugrave;m biển, Ốc v&uacute; n&agrave;ng, b&agrave;o ngư, vi c&aacute;, yến s&agrave;o, bạch tuộc, mực một nắng, c&aacute; ch&igrave;nh biển v&agrave; m&oacute;n rau rừng thơm ngon (chi ph&iacute; tự t&uacute;c).<br />\r\n<strong>14:00</strong> Đi t&agrave;u về Hội An.<br />\r\n<strong>14:20</strong> Xe đ&oacute;n đo&agrave;n v&agrave; đưa về điểm hẹn. Kết th&uacute;c chương tr&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gi&aacute; trẻ em:</strong></p>\r\n\r\n<ul>\r\n	<li>Trẻ em dưới 5 tuổi: Miễn ph&iacute;</li>\r\n	<li>Trẻ em từ 5 -11 tuổi: 75% gi&aacute; tour</li>\r\n	<li>Trẻ em tr&ecirc;n 12 tuổi: 100 % gi&aacute; tour</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong></p>\r\n\r\n<ul>\r\n	<li>Xe m&aacute;y lạnh vận chuyển theo chương tr&igrave;nh</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiếng Việt nhiệt t&igrave;nh, vui vẻ suốt tuyến</li>\r\n	<li>V&eacute; t&agrave;u đi C&ugrave; Lao Ch&agrave;m</li>\r\n	<li>Ăn trưa tại C&ugrave; Lao Ch&agrave;m</li>\r\n	<li>V&eacute; tham quan tại C&ugrave; lao Ch&agrave;m</li>\r\n	<li>Thuế VAT v&agrave; ph&iacute; phục vụ</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n kh&ocirc;ng bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>Chi ph&iacute; c&aacute; nh&acirc;n v&agrave; c&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng được liệt k&ecirc; ở tr&ecirc;n.</li>\r\n</ul>\r\n</div>', 'vi'),
(69, 42, 'KHÁM PHÁ VÒNG QUAY MẶT TRỜI (SUNWHEEL)', '1 ngày | Khởi hành hàng ngày', '<div class="itemFullTextWell">\r\n<div><strong>14:00</strong> Xe v&agrave; HDV của Saigontourist đ&oacute;n qu&yacute; kh&aacute;ch tại kh&aacute;ch sạn, khởi h&agrave;nh đi tham quan danh thắng Ngũ H&agrave;nh Sơn.</div>\r\n\r\n<div><strong>14:30</strong> Đến Ngũ H&agrave;nh Sơn - khu di t&iacute;ch t&acirc;m linh Phật gi&aacute;o nằm tr&ecirc;n 5 ngọn n&uacute;i Kim, Mộc, Thủy, Hỏa, Thổ. Tại ngọn Thủy Sơn, du kh&aacute;ch kh&aacute;m ph&aacute; những hang động huyền b&iacute; l&agrave; kiệt t&aacute;c của tự nhi&ecirc;n kết hợp với nền văn h&oacute;a t&ocirc;n gi&aacute;o l&acirc;u đời. Viếng ch&ugrave;a Linh Ứng đầu ti&ecirc;n của Đ&agrave; Nẵng, l&agrave; ng&ocirc;i ch&ugrave;a cổ được x&acirc;y dựng v&agrave;o thời Vua L&ecirc; Hiển T&ocirc;ng (1740 - 1780). Tham quan l&agrave;ng nghề đi&ecirc;u khắc đ&aacute; mỹ nghệ truyền thống.</div>\r\n\r\n<div><strong>16:00</strong> Tiếp tục h&agrave;nh tr&igrave;nh, xe đưa qu&yacute; kh&aacute;ch khởi h&agrave;nh về lại Đ&agrave; Nẵng. Qu&yacute; kh&aacute;ch tự do b&aacute;ch bộ dọc theo B&aacute;ch bộ dọc S&ocirc;ng H&agrave;n chi&ecirc;m ngưỡng v&agrave; chụp h&igrave;nh những c&acirc;y cầu tuyệt đẹp của Đ&agrave; Nẵng</div>\r\n\r\n<div><strong>18:00</strong> Qu&yacute; kh&aacute;ch d&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng.</div>\r\n\r\n<div><strong>19:00</strong> Xe đưa qu&yacute; kh&aacute;ch tự do kh&aacute;m ph&aacute; V&ograve;ng Quay Mặt Trời (Sun Wheel) (Chi ph&iacute; tự t&uacute;c)</div>\r\n\r\n<div><strong>20:30</strong> Xe đưa qu&yacute; kh&aacute;ch khởi h&agrave;nh về lại kh&aacute;ch sạn. Trả kh&aacute;ch tại điểm đ&oacute;n ban đầu. Kết th&uacute;c chương tr&igrave;nh.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gi&aacute; trẻ em:</strong></p>\r\n\r\n<ul>\r\n	<li>Trẻ em dưới 5 tuổi: Miễn ph&iacute;</li>\r\n	<li>Trẻ em từ 5 -11 tuổi: 75% gi&aacute; tour</li>\r\n	<li>Trẻ em tr&ecirc;n 12 tuổi: 100 % gi&aacute; tour</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong></p>\r\n\r\n<ul>\r\n	<li>Xe m&aacute;y lạnh vận chuyển theo chương tr&igrave;nh</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiếng Việt nhiệt t&igrave;nh, vui vẻ suốt tuyến</li>\r\n	<li>Ăn trưa theo ti&ecirc;u chuẩn chương tr&igrave;nh.</li>\r\n	<li>Qu&agrave; tặng: Bảo hiểm du lịch, n&oacute;n Saigontourist, nước suối v&agrave; khăn lạnh.</li>\r\n	<li>Thuế VAT v&agrave; ph&iacute; phục vụ</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n kh&ocirc;ng bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>Chi ph&iacute; c&aacute; nh&acirc;n v&agrave; c&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng được liệt k&ecirc; ở tr&ecirc;n.</li>\r\n	<li>V&eacute; v&agrave;o cổng v&agrave; tham quan V&ograve;ng quay mặt trời (Sun Wheel)</li>\r\n</ul>\r\n</div>', 'vi'),
(70, 43, 'VÒNG QUANH THÀNH PHỐ ĐÀ NẴNG', '1 ngày | Khởi hành hàng ngày', '<div class="itemFullTextWell">\r\n<p style="text-align:justify"><strong>09:00</strong> Đ&oacute;n kh&aacute;ch tại kh&aacute;ch sạn, khởi h&agrave;nh đi tham quan N&uacute;i Sơn Tr&agrave;.<br />\r\n<strong>10:00</strong> Dừng ch&acirc;n tham quan Đ&agrave;i ph&aacute;t s&oacute;ng DRT. Ngắm nh&igrave;n to&agrave;n cảnh th&agrave;nh phố Đ&agrave; Nẵng ở độ cao 230m.<br />\r\n<strong>11:30</strong> Mục k&iacute;ch Trạm Radar cũ của Mỹ v&agrave;o những năm 60 được mệnh danh l&agrave; &ldquo;Đ&ocirc;i mắt thần Đ&ocirc;ng Dương&rdquo;.<br />\r\n<strong>14:00</strong> Đến s&acirc;n bay Trực Thăng, kh&aacute;m ph&aacute; n&uacute;i rừng Sơn Tr&agrave; với thảm động thực vật nhiệt đới phong ph&uacute;, tận mắt chứng kiến c&acirc;y Dẻ Ng&agrave;n Năm tuổi. Chinh phục đỉnh B&agrave;n Cờ Ti&ecirc;n với truyền thuyết về c&aacute;c trận cờ th&acirc;u đ&ecirc;m của c&aacute;c vị ti&ecirc;n &ocirc;ng tại đỉnh n&uacute;i n&agrave;y.<br />\r\n<strong>14:30</strong> Xe tiếp tục h&agrave;nh tr&igrave;nh đưa qu&yacute; kh&aacute;ch dọc theo truyền n&uacute;i chi&ecirc;m ngưỡng vẻ đẹp tuyệt mỹ của biển Đ&agrave; Nẵng. Viếng Linh Ứng Tự Sơn Tr&agrave; với bức tượng phật B&agrave; cao nhất Việt nam &ndash; 67m.<br />\r\n<strong>16:00</strong> Khởi h&agrave;nh về lại Đ&agrave; Nẵng. Kết th&uacute;c chương tr&igrave;nh..</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p><strong>Gi&aacute; trẻ em:</strong></p>\r\n\r\n<ul>\r\n	<li>Trẻ em dưới 5 tuổi: Miễn ph&iacute;</li>\r\n	<li>Trẻ em từ 5-11 tuổi: 75% gi&aacute; tour</li>\r\n	<li>Trẻ em tr&ecirc;n 12 tuổi: 100 % gi&aacute; tour</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong></p>\r\n\r\n<ul>\r\n	<li>Xe m&aacute;y lạnh vận chuyển theo chương tr&igrave;nh</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiếng Việt nhiệt t&igrave;nh, vui vẻ suốt tuyến</li>\r\n	<li>Qu&agrave; tặng: Bảo hiểm du lịch, n&oacute;n Saigontourist, nước suối v&agrave; khăn lạnh.</li>\r\n	<li>Thuế VAT v&agrave; ph&iacute; phục vụ</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n kh&ocirc;ng bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>Chi ph&iacute; c&aacute; nh&acirc;n v&agrave; c&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng được liệt k&ecirc; ở tr&ecirc;n.</li>\r\n	<li>Chi ph&iacute; ăn trưa</li>\r\n</ul>\r\n</div>', 'vi'),
(71, 44, 'KHÁM PHÁ SƠN TRÀ', '1 ngày | Khởi hành hàng ngày', '<div class="itemFullTextWell">\r\n<p style="text-align:justify"><strong>09:00</strong>&nbsp;Đ&oacute;n kh&aacute;ch tại kh&aacute;ch sạn, khởi h&agrave;nh đi tham quan N&uacute;i Sơn Tr&agrave;.<br />\r\n<strong>10:00</strong>&nbsp;Dừng ch&acirc;n tham quan Đ&agrave;i ph&aacute;t s&oacute;ng DRT. Ngắm nh&igrave;n to&agrave;n cảnh th&agrave;nh phố Đ&agrave; Nẵng ở độ cao 230m.<br />\r\n<strong>11:30</strong>&nbsp;Mục k&iacute;ch Trạm Radar cũ của Mỹ v&agrave;o những năm 60 được mệnh danh l&agrave; &ldquo;Đ&ocirc;i mắt thần Đ&ocirc;ng Dương&rdquo;.<br />\r\n<strong>14:00</strong>&nbsp;Đến s&acirc;n bay Trực Thăng, kh&aacute;m ph&aacute; n&uacute;i rừng Sơn Tr&agrave; với thảm động thực vật nhiệt đới phong ph&uacute;, tận mắt chứng kiến c&acirc;y Dẻ Ng&agrave;n Năm tuổi. Chinh phục đỉnh B&agrave;n Cờ Ti&ecirc;n với truyền thuyết về c&aacute;c trận cờ th&acirc;u đ&ecirc;m của c&aacute;c vị ti&ecirc;n &ocirc;ng tại đỉnh n&uacute;i n&agrave;y.<br />\r\n<strong>14:30</strong>&nbsp;Xe tiếp tục h&agrave;nh tr&igrave;nh đưa qu&yacute; kh&aacute;ch dọc theo truyền n&uacute;i chi&ecirc;m ngưỡng vẻ đẹp tuyệt mỹ của biển Đ&agrave; Nẵng. Viếng Linh Ứng Tự Sơn Tr&agrave; với bức tượng phật B&agrave; cao nhất Việt nam &ndash; 67m.<br />\r\n<strong>16:00</strong>&nbsp;Khởi h&agrave;nh về lại Đ&agrave; Nẵng. Kết th&uacute;c chương tr&igrave;nh..</p>\r\n\r\n<p><strong>Gi&aacute; trẻ em:</strong></p>\r\n\r\n<ul>\r\n	<li>Trẻ em dưới 5 tuổi: Miễn ph&iacute;</li>\r\n	<li>Trẻ em từ 5-11 tuổi: 75% gi&aacute; tour</li>\r\n	<li>Trẻ em tr&ecirc;n 12 tuổi: 100 % gi&aacute; tour</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong></p>\r\n\r\n<ul>\r\n	<li>Xe m&aacute;y lạnh vận chuyển theo chương tr&igrave;nh</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiếng Việt nhiệt t&igrave;nh, vui vẻ suốt tuyến</li>\r\n	<li>Qu&agrave; tặng: Bảo hiểm du lịch, n&oacute;n Saigontourist, nước suối v&agrave; khăn lạnh.</li>\r\n	<li>Thuế VAT v&agrave; ph&iacute; phục vụ</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n kh&ocirc;ng bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>Chi ph&iacute; c&aacute; nh&acirc;n v&agrave; c&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng được liệt k&ecirc; ở tr&ecirc;n.</li>\r\n	<li>Chi ph&iacute; ăn trưa</li>\r\n</ul>\r\n</div>', 'vi'),
(72, 45, 'KHÁM PHÁ PHỐ CỔ HỘI AN - THÁNH ĐỊA MỸ SƠN', '1 ngày | Khởi hành hàng ngày', '<div class="itemFullTextWell">\r\n<p><strong>PHỐ CỔ HỘI AN</strong><br />\r\nTh&agrave;nh Phố Hội An nằm b&ecirc;n bờ s&ocirc;ng Thu Bồn. Nơi đ&acirc;y xưa kia đ&atilde; c&oacute; một thời nổi tiếng với t&ecirc;n gọi Faifoo m&agrave; c&aacute;c thương nh&acirc;n Nhật Bản, Trung Quốc, Bồ &ETH;&agrave;o Nha, Italia v.v.. đ&atilde; biết đến từ thế kỷ 16, 17. Từ thời đ&oacute;, thương cảng Hội An đ&atilde; thịnh vượng, l&agrave; trung t&acirc;m bu&ocirc;n b&aacute;n lớn của v&ugrave;ng Đ&ocirc;ng Nam &Aacute;, một trong những trạm đỗ ch&iacute;nh của thương thuyền v&ugrave;ng Viễn &ETH;&ocirc;ng.</p>\r\n\r\n<p><strong>TH&Aacute;NH ĐỊA MỸ SƠN</strong><br />\r\nTh&aacute;nh địa Mỹ Sơn tọa lạc trong một thung lũng k&iacute;n c&oacute; địa thế n&uacute;i non h&ugrave;ng vĩ, th&acirc;m nghi&ecirc;m. Nơi đ&acirc;y, với hơn 70 c&ocirc;ng tr&igrave;nh kiến tr&uacute;c đền th&aacute;p của nền văn minh Chămpa được kết tinh trong những di chứng vật chất trường tồn, chứa đựng những gi&aacute; trị về lịch sử, văn h&oacute;a, kiến tr&uacute;c, nghệ thuật, được đ&aacute;nh gi&aacute; ngang h&agrave;ng với c&aacute;c di t&iacute;ch nổi tiếng trong khu vực Đ&ocirc;ng Nam &aacute; như Ăngko, Pagan, B&ocirc;r&ocirc;budua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>09:00</strong> Đ&oacute;n kh&aacute;ch tại điểm hẹn hoặc tại kh&aacute;ch sạn ở trung t&acirc;m th&agrave;nh phố Đ&agrave; Nẵng. Đưa qu&yacute; kh&aacute;ch khởi h&agrave;nh tham quan Hội An<br />\r\n<strong>10:00</strong> Đến Hội An, tham quan ch&ugrave;a Cầu Nhật Bản, Hội qu&aacute;n Ph&uacute;c Kiến, Nh&agrave; cổ Ph&ugrave;ng Hưng v&agrave; dạo bộ mua sắm trong phố cổ.<br />\r\n<strong>12:00</strong> Qu&yacute; kh&aacute;ch d&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng. Tự do nghỉ ngơi thư gi&atilde;n<br />\r\n<strong>13:30</strong> Xe đưa qu&yacute; kh&aacute;ch đi tham quan th&aacute;nh địa Mỹ Sơn.<br />\r\n<strong>14:30</strong> Xe đến khu di t&iacute;ch Mỹ Sơn, du kh&aacute;ch sẽ được đi thăm khu Th&aacute;nh địa l&acirc;u đời của Vương Quốc Chăm Pa với những đền th&aacute;p r&ecirc;u phong b&iacute; ẩn từ thế kỉ VII, thưởng thức chương tr&igrave;nh ca m&uacute;a Chăm đặc sắc, thăm Trung T&acirc;m Th&aacute;nh Mẫu Tr&agrave; Kiệu &ndash; đặt tr&ecirc;n nền m&oacute;ng Kinh Th&agrave;nh xưa của người Chăm (Kinh th&agrave;nh Sư Tử).<br />\r\n<strong>16:30</strong> Khởi h&agrave;nh về lại Đ&agrave; Nẵng. Trả kh&aacute;ch tại điểm đ&oacute;n ban đầu. Kết th&uacute;c chương tr&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gi&aacute; trẻ em:</strong></p>\r\n\r\n<ul>\r\n	<li>Trẻ em dưới 1m: Miễn ph&iacute;</li>\r\n	<li>Trẻ em từ 1-1.3m: 75% gi&aacute; tour</li>\r\n	<li>Trẻ em tr&ecirc;n 1.3m: 100 % gi&aacute; tour</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n bao gồm</strong></p>\r\n\r\n<ul>\r\n	<li>Xe m&aacute;y lạnh vận chuyển theo chương tr&igrave;nh</li>\r\n	<li>Hướng dẫn vi&ecirc;n tiếng Việt nhiệt t&igrave;nh, vui vẻ suốt tuyến</li>\r\n	<li>Ăn trưa theo ti&ecirc;u chuẩn chương tr&igrave;nh.</li>\r\n	<li>V&eacute; tham quan</li>\r\n	<li>Qu&agrave; tặng: Bảo hiểm du lịch, n&oacute;n Saigontourist, nước suối v&agrave; khăn lạnh.</li>\r\n	<li>Thuế VAT v&agrave; ph&iacute; phục vụ</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tr&ecirc;n kh&ocirc;ng bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>Chi ph&iacute; c&aacute; nh&acirc;n v&agrave; c&aacute;c chi ph&iacute; kh&aacute;c kh&ocirc;ng được liệt k&ecirc; ở tr&ecirc;n.</li>\r\n</ul>\r\n</div>', 'vi'),
(74, 47, 'Thông tin Thiết thực', 'Điện\r\nDòng điện ở Việt Nam là 220 volt, 50Hz. Ổ cắm hai chấu rất thông dụng. Tuy nhiên, tại nhiều nơi, quý khách vẫn có thể tìm thấy ổ cắm 3 chấu.\r\nTiền tệ\r\nĐơn vị tiền tệ của Việt Nam là Việt Nam Đồng (VNĐ). Tiền tệ có thể được trao đổi tại các ngân hàng, khách sạn hoặc ở chợ. Đồng đô la Mỹ có thể dễ dàng được trao đổi tại các thành phố lớn.\r\nThông tin liên lạc\r\nMã quốc tế của Việt Nam là +84\r\nSố điện thoại khẩn cấp\r\nKhấn cấp: 113 (Cảnh sát); 114 (Cứu hỏa); 115 (Cấp cứu)\r\nBệnh viện\r\nTọa lạc tại 50-52 Nguyễn Văn Linh, Hoàn Mỹ là bệnh viện tin cậy cho cả du khách lẫn người địa phương.', '<p><strong>Điện</strong><br />\r\nD&ograve;ng điện ở Việt Nam l&agrave; 220 volt, 50Hz. Ổ cắm hai chấu rất th&ocirc;ng dụng. Tuy nhi&ecirc;n, tại nhiều nơi, qu&yacute; kh&aacute;ch vẫn c&oacute; thể t&igrave;m thấy ổ cắm 3 chấu.<br />\r\n<strong>Tiền tệ</strong><br />\r\nĐơn vị tiền tệ của Việt Nam l&agrave; Việt Nam Đồng (VNĐ). Tiền tệ c&oacute; thể được trao đổi tại c&aacute;c ng&acirc;n h&agrave;ng, kh&aacute;ch sạn hoặc ở chợ. Đồng đ&ocirc; la Mỹ c&oacute; thể dễ d&agrave;ng được trao đổi tại c&aacute;c th&agrave;nh phố lớn.<br />\r\n<strong>Th&ocirc;ng tin li&ecirc;n lạc</strong><br />\r\nM&atilde; quốc tế của Việt Nam l&agrave; +84<br />\r\n<strong>Số điện thoại khẩn cấp</strong><br />\r\nKhấn cấp: 113 (Cảnh s&aacute;t); 114 (Cứu hỏa); 115 (Cấp cứu)<br />\r\n<strong>Bệnh viện</strong><br />\r\nTọa lạc tại 50-52 Nguyễn Văn Linh, Ho&agrave;n Mỹ l&agrave; bệnh viện tin cậy cho cả du kh&aacute;ch lẫn người địa phương.</p>', 'vi'),
(75, 40, 'The ancient capital of Hue', '1 day Depart daily', '<p>Journey to explore the UNESCO heritage site as UNESCO World Cultural Heritage; upstream of the historical perception of the rise and fall of the ancient land; Visiting Hai Van pass &quot;the most beautiful Thien Quan&quot; combined with the modern Hai Van tunnel ...<br />\r\n<br />\r\n<br />\r\n07:30 Saigontourist car and guide welcome the delegation at the hotel of Da Nang, depart for Hue by tunnel Hai Van (Tunnel long and modern bridge in Southeast Asia).<br />\r\n10:00 Arrive in Hue, visit the Imperial Citadel of Hue Imperial Citadel - Imperial Palace of 13 Nguyen Dynasty Kings of Antiquities.<br />\r\n11:30 Lunch at the restaurant.<br />\r\n13:00 Pick you up Visit Thien Mu Pagoda, visit King Khai Dinh tomb - admire a harmonious works between traditional Hue architecture and modern<br />\r\nCar departure to Da Nang, pay guests at the original pick.<br />\r\n15:30 End of program.<br />\r\n<br />\r\n<br />\r\nChild Price:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children under 5: Free<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children 5 to 11 years old: 75% of tour price<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children over 12 years: 100% of tour price<br />\r\n<br />\r\nPrice includes<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Air-conditioned vehicles transported by the program<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Vietnamese guide enthusiastic, fun through the line<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Sightseeing tickets<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Lunch program standard.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Gifts: Travel insurance, Saigontourist hat, mineral water and cold towel.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;VAT and service charge<br />\r\n<br />\r\nPrice does not include:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Personal expenses and other expenses not listed above.</p>', 'en'),
(76, 41, 'DISCOVER CU LAO CHAM', '1 day Depart daily', '<div class="g-unit" id="gt-res-c">\r\n<div id="gt-res-p">\r\n<div id="gt-res-data">\r\n<div id="gt-res-wrap">\r\n<div id="gt-res-content">\r\n<div class="trans-verified-button-small" dir="ltr" id="gt-res-dir-ctr">\r\n<div id="tts_button"><object height="18" id="tts" width="18"></object></div>\r\nWith its rich flora and fauna, hundreds of years ago, Cu Lao Cham was recognized by UNESCO as a World Biosphere Reserve in 2009. It is also one of the 15 Marine Protected Areas in Vietnam. Male. In addition to the trip to enjoy the natural beauty of the sea - islands, historical - cultural relics, visitors also enjoy the famous seafood of this beautiful sea in the Central.<br />\r\n<br />\r\n07:30 Pick up at the meeting point in the inner city of Danang.<br />\r\n08:00 Depart for Cu Lao Cham by train.<br />\r\n09:30 Arrive at Cu Lao Cham, visit the island&#39;s attractions such as Sea Conservation Center, Hai Tang Pagoda over 250 years, Ancient wells of Champa people over 700 years, Ngu Ngu (worshiping fish ) of the fishing village on the island. Shopping souvenirs, seafood, specialties in Tan Hiep market.<br />\r\n10:00 Boat trip to Hon Dai island - Hon Mo, Hon Mep, Reef ... explore and see the coral.<br />\r\n12:00 Lunch on the island. In addition to the main menu, visitors can enjoy more specialties: Cu Lao Cham crab, sea lobster, herring, abalone, micro fish, swallow&#39;s nests, octopus, squid, sea eel and delicious forest vegetables (self-sufficient expenses).<br />\r\n14:00 Train to Hoi An.<br />\r\n14:20 Pick up and bring to the meeting point. End program.<br />\r\n<br />\r\n<br />\r\nChild Price:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children under 5: Free<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children from 5 to 11 years old: 75% of tour price<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children over 12 years: 100% of tour price<br />\r\n<br />\r\nPrice includes<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Air-conditioned vehicles transported by the program<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Vietnamese guide enthusiastic, fun through the line<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Train ticket to Cu Lao Cham<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Have lunch at Cu Lao Cham<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Visiting tickets at Cu Lao Cham<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;VAT and service charge<br />\r\n<br />\r\nPrice does not include:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Personal expenses and other expenses not listed above.</div>\r\n</div>\r\n\r\n<div id="gt-res-tools">\r\n<div id="gt-res-tools-l">\r\n<div id="gt-pb-star">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="g-section" id="gt-c">\r\n<div id="gt-form-c">\r\n<form action="/" enctype="application/x-www-form-urlencoded" id="gt-form" method="post" name="text_form">\r\n<div id="gt-text-all">\r\n<div id="gt-main">\r\n<div id="gt-text-c">\r\n<div id="gt-text-top">\r\n<div class="g-unit" id="gt-res-c">\r\n<div id="gt-res-p">\r\n<div id="gt-res-data">\r\n<div id="gt-res-wrap">\r\n<div id="gt-res-tools">\r\n<div id="gt-res-tools-r">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div id="gt-community-card-c">&nbsp;</div>\r\n\r\n<div class="translit" dir="ltr" id="res-translit">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div id="gt-promo-lr">&nbsp;</div>\r\n</div>\r\n\r\n<div id="gt-ft">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</form>\r\n</div>\r\n</div>', 'en'),
(77, 42, 'DISCOVER THE SUNWHEEL', '1 day Departure every day', '<p>14:00 Saigontourist car and HDV pick up at your hotel, depart to visit Ngu Hanh Son.<br />\r\n14:30 Arrive at Ngu Hanh Son - Buddhist spiritual relics located on 5 mountains Kim, Moc, Water, Fire, Turkey. At Thuy Son, travelers explore the mysterious cave is a masterpiece of nature combined with a long-standing religious culture. Visit the first Linh Ung Pagoda of Danang, is the ancient temple was built in the reign of King Le Hien Tong (1740 - 1780). Visit the traditional stone carving handicraft village.<br />\r\n16:00 Continue the journey, car you depart for Da Nang. You walk along the Han River along the Han River admire and take pictures of the beautiful bridge of Da Nang<br />\r\n18:00 Lunch at the restaurant.<br />\r\n19:00 Car to take you free to explore the Sun Wheel (Sun Wheel) (Cost excluded)<br />\r\n20:30 Departure to your hotel. Pick up at the pick-up point. End program.<br />\r\n<br />\r\n<br />\r\nChild Price:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children under 5: Free<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children from 5 to 11 years old: 75% of tour price<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children over 12 years: 100% of tour price<br />\r\n<br />\r\nPrice includes<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Air-conditioned vehicles transported by the program<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Vietnamese guide enthusiastic, fun through the line<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Lunch program standard.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Gifts: Travel insurance, Saigontourist hat, mineral water and cold towel.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;VAT and service charge<br />\r\n<br />\r\nPrice does not include:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Personal expenses and other expenses not listed above.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Entrance ticket and visit the Sun Wheel (Sun Wheel)</p>', 'en'),
(78, 43, 'AROUND DA NANG CITY', '1 day Departure every day', '<p>09:00 Pick up at the hotel, depart to visit Son Tra Mountain.<br />\r\n10:00 Stop to visit the DRT. Panoramic view of Da Nang city at 230m.<br />\r\n11:30 AM The old American Radar Station in the 1960s was dubbed the &quot;eyes of Indochina&quot;.<br />\r\n14:00 Arrive at heliport airport, explore Son Tra mountain and forest with rich tropical flora and fauna, witness the thousand year old tree. Conquer the top of the Fairy Tale with the legend of the nightly chants of the fairies at the top of this mountain.<br />\r\n14:30 The car continues to take you along the mountain to admire the beautiful beauty of the sea Da Nang. Self-painted tea Buddha with the highest Buddha statue in Vietnam - 67m.<br />\r\n16:00 Departure back to Da Nang. End program..</p>\r\n\r\n<p><br />\r\nChild Price:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Children under 5: Free<br />\r\n&nbsp;&nbsp;&nbsp; Children from 5 to 11 years old: 75% of tour price<br />\r\n&nbsp;&nbsp;&nbsp; Children over 12 years: 100% of tour price</p>\r\n\r\n<p>Price includes</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Air-conditioned vehicles transported by the program<br />\r\n&nbsp;&nbsp;&nbsp; Vietnamese guide enthusiastic, fun through the line<br />\r\n&nbsp;&nbsp;&nbsp; Gifts: Travel insurance, Saigontourist hat, mineral water and cold towel.<br />\r\n&nbsp;&nbsp;&nbsp; VAT and service charge</p>\r\n\r\n<p>Price does not include:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Personal expenses and other expenses not listed above.<br />\r\n&nbsp;&nbsp;&nbsp; Lunch costs</p>', 'en'),
(79, 44, 'ON TRA TREATMENT', '1 day Departure every day', '<div class="g-unit" id="gt-src-c">\r\n<div id="gt-src-p">\r\n<div id="gt-src-wrap">\r\n<div id="gt-src-cc">\r\n<div class="cc-ctr gt-src-cc-normal" id="gt-src-cc-ctr">1215/5000</div>\r\n</div>\r\n</div>\r\n\r\n<div class="translit" dir="ltr" id="src-translit">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class="g-unit" id="gt-res-c">\r\n<div id="gt-res-p">\r\n<div id="gt-res-data">\r\n<div id="gt-res-wrap">\r\n<div id="gt-res-content">\r\n<div class="trans-verified-button-small" dir="ltr" id="gt-res-dir-ctr">\r\n<div id="tts_button"><object height="18" id="tts" width="18"></object></div>\r\n09:00 Pick up at the hotel, depart to visit Son Tra Mountain.<br />\r\n10:00 Stop to visit the DRT. Panoramic view of Da Nang city at 230m.<br />\r\n11:30 AM The old American Radar Station in the 1960s was dubbed the &quot;eyes of Indochina&quot;.<br />\r\n14:00 Arrive at heliport airport, explore Son Tra mountain and forest with rich tropical flora and fauna, witness the thousand year old tree. Conquer the top of the Fairy Tale with the legend of the nightly chants of the fairies at the top of this mountain.<br />\r\n14:30 The car continues to take you along the mountain to admire the beautiful beauty of the sea Da Nang. Self-painted tea Buddha with the highest Buddha statue in Vietnam - 67m.<br />\r\n16:00 Departure back to Da Nang. End program..<br />\r\n<br />\r\nChild Price:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children under 5: Free<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children from 5 to 11 years old: 75% of tour price<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children over 12 years: 100% of tour price<br />\r\n<br />\r\nPrice includes<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Air-conditioned vehicles transported by the program<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Vietnamese guide enthusiastic, fun through the line<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Gifts: Travel insurance, Saigontourist hat, mineral water and cold towel.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;VAT and service charge<br />\r\n<br />\r\nPrice does not include:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Personal expenses and other expenses not listed above.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Lunch costs</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="jfk-tooltip jfk-tooltip-hide" style="left:1157px; top:752px">\r\n<div class="jfk-tooltip-arrow jfk-tooltip-arrowdown" style="left:70.5px">\r\n<div class="jfk-tooltip-arrowimplbefore">&nbsp;</div>\r\n\r\n<div class="jfk-tooltip-arrowimplafter">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 'en'),
(80, 45, 'DISCOVER THE COURTYARD HOI AN    - SANCTUARY MY SON', '1 day Departure every day', '<p>HOI AN<br />\r\nHoi An City is located on the Thu Bon River. This place was once known as Faifoo, which the merchants of Japan, China, Portugal, Italy, etc. have known since the 16th, 17th centuries. It is a major trading center of Southeast Asia, one of the major stops of the Far East merchant ships.<br />\r\n<br />\r\nMY SON SANCTUARY<br />\r\nMy Son Sanctuary is located in a valley with majestic mountains, imposing mountains. Here, with more than 70 architectural temples of the Cham civilization crystallized in the permanent material sequelae, containing values ​​of history, culture, architecture, art, are evaluated. On the other hand, there are famous monuments in Southeast Asia such as Angkor, Pagan, and Bo&ocirc;budua.<br />\r\n<br />\r\n<br />\r\n09:00 Pick up at the meeting point or at the hotel in downtown Da Nang. Take you to visit Hoi An<br />\r\n10:00 Arrive Hoi An, visit Japanese Bridge Pagoda, Fujian Assembly Hall, ancient House Phung Hung and shopping in the old town.<br />\r\n12:00 Lunch at the restaurant. Freedom to relax<br />\r\n13:30 Car take you to visit My Son Sanctuary.<br />\r\n14:30 Arrive at the My Son ruins, visitors will visit the ancient holy place of Champa Kingdom with the mysterious mysterious tower from the seventh century, enjoy the program of Cham dance special, Tra Kieu Marvelous Mother Center - located on the foundation of the ancient capital of the Cham (the Lion City).<br />\r\n16:30 Departure back to Da Nang. Pick up at the pick-up point. End program.<br />\r\n<br />\r\n<br />\r\nChild Price:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children under 1m: Free<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children 1-1.3m: 75% of tour price<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Children over 1.3m: 100% tour price<br />\r\n<br />\r\nPrice includes<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Air-conditioned vehicles transported by the program<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Vietnamese guide enthusiastic, fun through the line<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Lunch program standard.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Sightseeing tickets<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Gifts: Travel insurance, Saigontourist hat, mineral water and cold towel.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;VAT and service charge<br />\r\n<br />\r\nPrice does not include:<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;Personal expenses and other expenses not listed above</p>', 'en'),
(82, 47, 'Practical Information', 'Practical Information', '<p><strong>Electricity</strong><br />\r\nElectricity in Vietnam is 220 volts, 50 Hz. Two-pin plugs are very popular. However, in many places, you can still find a 3-pin socket.<br />\r\n<strong>Currency</strong><br />\r\nThe Vietnamese currency is Vietnam Dong (VND). Currency can be exchanged at banks, hotels or in markets. The US dollar can easily be exchanged in major cities.<br />\r\n<strong>Communications</strong><br />\r\nVietnam&#39;s international code is +84<br />\r\n<strong>Emergency number</strong><br />\r\nUrgent: 113 (Police); 114 (fire); 115 (Emergency)<br />\r\n<strong>Hospital</strong><br />\r\nLocated at 50-52 Nguyen Van Linh, Hoan My is a reliable hospital for both tourists and locals.</p>', 'en'),
(83, 48, 'Thánh Địa Mỹ Sơn', '60 km\r\nThánh địa Mỹ Sơn thuộc xã Duy Phú, huyện Duy Xuyên, tỉnh Quảng Nam, cách thành phố Đà Nẵng khoảng 60 km, là tổ hợp bao gồm nhiều đền đài Chăm Pa, trong một thung lũng đường kính khoảng 2 km, bao quanh bởi đồi núi. Đây từng là nơi tổ chức cúng tế của vương triều Chăm pa cũng như là lăng mộ của các vị vua Chăm pa hay hoàng thân, quốc thích. Thánh địa Mỹ Sơn được coi là một trong những trung tâm đền đài chính của Ấn Độ giáo ở khu vực Đông Nam Á và là di sản duy nhất của thể loại này tại Việt Nam.', '<p>60 km<br />\r\nTh&aacute;nh địa Mỹ Sơn thuộc x&atilde; Duy Ph&uacute;, huyện Duy Xuy&ecirc;n, tỉnh Quảng Nam, c&aacute;ch th&agrave;nh phố Đ&agrave; Nẵng khoảng 60 km, l&agrave; tổ hợp bao gồm nhiều đền đ&agrave;i Chăm Pa, trong một thung lũng đường k&iacute;nh khoảng 2 km, bao quanh bởi đồi n&uacute;i. Đ&acirc;y từng l&agrave; nơi tổ chức c&uacute;ng tế của vương triều Chăm pa cũng như l&agrave; lăng mộ của c&aacute;c vị vua Chăm pa hay ho&agrave;ng th&acirc;n, quốc th&iacute;ch. Th&aacute;nh địa Mỹ Sơn được coi l&agrave; một trong những trung t&acirc;m đền đ&agrave;i ch&iacute;nh của Ấn Độ gi&aacute;o ở khu vực Đ&ocirc;ng Nam &Aacute; v&agrave; l&agrave; di sản duy nhất của thể loại n&agrave;y tại Việt Nam.</p>', 'vi'),
(84, 49, 'Ngũ Hành Sơn', '8 Km\r\nBiển trải dài gần 30 cây số từ Đà Nẵng về Hội An và vươn xa hơn về phía Nam. Những bãi tắm xa thành phố luôn là những bãi tắm đẹp, đặc biệt là bãi Mỹ Khê tọa lạc không xa núi Ngũ Hành Sơn. Những bãi tắm xa thường không đông khách và luôn có sẵn dù, bạt và ghế ngồi cho du khách thuê.', '<p>8 Km<br />\r\nBiển trải d&agrave;i gần 30 c&acirc;y số từ Đ&agrave; Nẵng về Hội An v&agrave; vươn xa hơn về ph&iacute;a Nam. Những b&atilde;i tắm xa th&agrave;nh phố lu&ocirc;n l&agrave; những b&atilde;i tắm đẹp, đặc biệt l&agrave; b&atilde;i Mỹ Kh&ecirc; tọa lạc kh&ocirc;ng xa n&uacute;i Ngũ H&agrave;nh Sơn. Những b&atilde;i tắm xa thường kh&ocirc;ng đ&ocirc;ng kh&aacute;ch v&agrave; lu&ocirc;n c&oacute; sẵn d&ugrave;, bạt v&agrave; ghế ngồi cho du kh&aacute;ch thu&ecirc;.</p>', 'vi'),
(85, 50, 'Bán Đảo Sơn Trà', '5 Kms\r\nBiển trải dài gần 30 cây số từ Đà Nẵng về Hội An và vươn xa hơn về phía Nam. Những bãi tắm xa thành phố luôn là những bãi tắm đẹp, đặc biệt là bãi Mỹ Khê tọa lạc không xa núi Ngũ Hành Sơn. Những bãi tắm xa thường không đông khách và luôn có sẵn dù, bạt và ghế ngồi cho du khách thuê.', '<p>5 Kms<br />\r\nBiển trải d&agrave;i gần 30 c&acirc;y số từ Đ&agrave; Nẵng về Hội An v&agrave; vươn xa hơn về ph&iacute;a Nam. Những b&atilde;i tắm xa th&agrave;nh phố lu&ocirc;n l&agrave; những b&atilde;i tắm đẹp, đặc biệt l&agrave; b&atilde;i Mỹ Kh&ecirc; tọa lạc kh&ocirc;ng xa n&uacute;i Ngũ H&agrave;nh Sơn. Những b&atilde;i tắm xa thường kh&ocirc;ng đ&ocirc;ng kh&aacute;ch v&agrave; lu&ocirc;n c&oacute; sẵn d&ugrave;, bạt v&agrave; ghế ngồi cho du kh&aacute;ch thu&ecirc;.</p>', 'vi'),
(86, 51, 'Bà Nà Hills', '20 Kms\r\n\r\nBà Nà – Lá phổi xanh của thành phố Đà Nẵng, đã từng được biết đến như một trong những trung tâm du lịch nghỉ dưỡng cao cấp nhất Đông Dương. Bà Nà Hills được xây dựng nhằm phục hồi, tôn tạo lại một khu du lịch đã từng một thời vang bóng với những cái tên đã đi vào lịch sử như Khách sạn – Nhà hàng Morin, Debay bar,…', '<div class="itemFullTextWell">\r\n<p style="text-align:justify">20 Kms</p>\r\n\r\n<p style="text-align:justify">B&agrave; N&agrave; &ndash; L&aacute; phổi xanh của th&agrave;nh phố Đ&agrave; Nẵng, đ&atilde; từng được biết đến như một trong những trung t&acirc;m du lịch nghỉ dưỡng cao cấp nhất Đ&ocirc;ng Dương. B&agrave; N&agrave; Hills được x&acirc;y dựng nhằm phục hồi, t&ocirc;n tạo lại một khu du lịch đ&atilde; từng một thời vang b&oacute;ng với những c&aacute;i t&ecirc;n đ&atilde; đi v&agrave;o lịch sử như Kh&aacute;ch sạn &ndash; Nh&agrave; h&agrave;ng Morin, Debay bar,&hellip;</p>\r\n</div>', 'vi'),
(87, 52, 'Cổ Viện Chàm', '3 km\r\n\r\nCổ Viện Chàm Đà Nẵng là viện bảo tàng về văn hóa Chămpa lớn nhất ở Việt Nam và trên thế giới. Được thành lập bởi nhà khoa học và khảo cổ Henri Parmentier vào năm 1936, và tiếp tục được bảo quản liên tục cho đến nay. Cổ Viện Chàm là một địa điểm hấp dẫn đối với du khách nước ngoài tại Việt Nam.', '<div class="itemFullTextWell">\r\n<p style="text-align:justify">3 km</p>\r\n\r\n<p style="text-align:justify">Cổ Viện Ch&agrave;m Đ&agrave; Nẵng l&agrave; viện bảo t&agrave;ng về văn h&oacute;a Chămpa lớn nhất ở Việt Nam v&agrave; tr&ecirc;n thế giới. Được th&agrave;nh lập bởi nh&agrave; khoa học v&agrave; khảo cổ Henri Parmentier v&agrave;o năm 1936, v&agrave; tiếp tục được bảo quản li&ecirc;n tục cho đến nay. Cổ Viện Ch&agrave;m l&agrave; một địa điểm hấp dẫn đối với du kh&aacute;ch nước ngo&agrave;i tại Việt Nam.</p>\r\n</div>', 'vi'),
(88, 48, 'Sanctuary My Son', 'My Son is the only heritage of this genre in Vietnam', '<pre style="text-align:left">\r\n<span style="font-family:Arial,Helvetica,sans-serif">60 km\r\nMy Son Sanctuary is located in Duy Phu Commune, Duy Xuyen District, Quang Nam Province, about 60 km from Danang City. It is composed of several Cham Pa Monuments in a valley about 2 km in diameter. mountains. This was the place of worship of the Cham dynasty as well as the tomb of the Cham king or prince, the national interest. My Son is considered one of the main centers of Hindu temples in Southeast Asia and is the only heritage of this genre in Vietnam.</span></pre>', 'en'),
(89, 49, 'Ngu Hanh Son', 'Ngu Hanh Son is the masterpiece of natural landscapes, "paint the sea", romantic fantasy', '<pre style="text-align:left">\r\n<span style="font-family:Arial,Helvetica,sans-serif">8 Km\r\nThe sea stretches nearly 30km from Da Nang to Hoi An and further south. Beaches away from the city are always nice beaches, especially My Khe Beach, not far from Ngu Hanh Son Mountain. The beach is far less crowded and there are always umbrellas, tarpaulins and chairs for rent.</span></pre>', 'en');
INSERT INTO `post_translations` (`id`, `post_id`, `name`, `description`, `content`, `locale`) VALUES
(90, 50, 'Son Tra Peninsula', 'Son Tra beach stretches 30km from Da Nang to Hoi An and further to the south', '<pre style="text-align:left">\r\n<span style="font-family:Arial,Helvetica,sans-serif">5 Kms\r\nThe sea stretches nearly 30km from Da Nang to Hoi An and further south. Beaches away from the city are always nice beaches, especially My Khe Beach, not far from Ngu Hanh Son Mountain. The beach is far less crowded and there are always umbrellas, tarpaulins and chairs for rent</span></pre>\r\n\r\n<p>.</p>', 'en'),
(91, 51, 'Ba Na Hills', 'Ba Na - Green leaf of Da Nang city', '<div class="itemFullTextWell">\r\n<pre style="text-align:left">\r\n<span style="font-family:Arial,Helvetica,sans-serif">20 Kms\r\n\r\nBa Na - Leaf green leaf of Da Nang city, has been known as one of the most luxurious resort resort in Indochina. Na Hills was built to restore and restore a once-famous tourist area with historic names such as Hotel - Morin Restaurant, Debay bar, ...</span></pre>\r\n</div>', 'en'),
(92, 52, 'The Cham Museum', 'Da Nang Cham Museum is the largest museum of Cham culture in Vietnam and in the world.', '<div class="itemFullTextWell">\r\n<div class="_Ejb">\r\n<div id="tw-target">\r\n<div class="tw-nfl tw-ta-container" id="tw-target-text-container">\r\n<pre style="text-align:left">\r\n<span style="font-family:Arial,Helvetica,sans-serif">3 km\r\n\r\nDa Nang Cham Museum is the largest museum of Cham culture in Vietnam and in the world. Founded by archaeologist and scientist Henri Parmentier in 1936, it continues to be preserved so far. Cham Museum is an attractive place for foreign visitors in Vietnam.</span></pre>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'en'),
(93, 53, 'SPlCE SPA', 'SPlCE SPA', '<p>SPlCE SPA</p>', 'en'),
(94, 54, 'Gourmet Buffet', 'Gourmet Buffet', '<p>Gourmet Buffet</p>', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'System Admin', NULL, 1, NULL, NULL, NULL),
(2, 'customer', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tripadvisor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `phone`, `fax`, `email`, `address`, `tripadvisor`, `facebook`, `twitter`, `google`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'À La Carte Danang Beach', '2363959555', '2363959556', 'reservation@alacartedanangbeach.com', '200 Vo Nguyen Giap, Son Tra, Danang, Vietnam', 'https://www.tripadvisor.com.vn/Hotel_Review-g298085-d6533098-Reviews-A_La_Carte-Da_Nang_Quang_Nam_Province.html', 'https://www.facebook.com/alacartedanangbeach/', 'https://twitter.com/', 'https://plus.google.com/', 'https://www.youtube.com/', '2018-02-03 18:03:26', '2018-03-02 15:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar-default.png',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `first_name`, `last_name`, `username`, `password`, `email`, `avatar`, `phone`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Quang', 'Hoang The', 'admin', '$2y$10$Ce5bnPnSMqBzQi4Wbxpt/.0tnTa/P4gElaFa1GZcwutbnHL0y0yJ6', 'admin@admin.com', '68b9e1ef419d37cd17b58bf425b3f2b4.jpg', NULL, 2, 'jDQQD23Avl8yrr3knbHCEajQ6qAEpGm7Qk9dpHqqok45FgdmhzutBsrjM1SL', '2018-02-08 19:55:54', '2018-02-22 15:39:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_post_id_foreign` (`post_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD UNIQUE KEY `category_translations_name_unique` (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_replies_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_slug_unique` (`slug`);

--
-- Indexes for table `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_bookings_event_id_foreign` (`event_id`);

--
-- Indexes for table `event_translations`
--
ALTER TABLE `event_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_translations_event_id_locale_unique` (`event_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_translations_post_id_locale_unique` (`post_id`,`locale`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `event_bookings`
--
ALTER TABLE `event_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event_translations`
--
ALTER TABLE `event_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD CONSTRAINT `contact_replies_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD CONSTRAINT `event_bookings_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_translations`
--
ALTER TABLE `event_translations`
  ADD CONSTRAINT `event_translations_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD CONSTRAINT `post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

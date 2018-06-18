-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2018 at 01:42 AM
-- Server version: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.1.17-1+ubuntu17.10.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

--
-- Database: `geniusoc_multiupdate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `phone`, `password`, `role`, `photo`, `created_at`, `updated_at`, `remember_token`, `status`) VALUES
(1, 'Genius Admin', 'admin', 'admin@gmail.com', '000 000 000', '$2y$10$GG3SSLfO9gylr5Qta4SQ1uM0tbMqFfTr0XeFa1SVjCkh7/hQ9ZWEC', 'Administrator', '1491825290645x430-film-animasi-larrikins-borong-bintang-bintang-australia-160604k.jpg', '2017-01-24 03:21:40', '2017-05-06 12:39:47', 'pRMB5tthRFPg14J6PDTkv9IoyhAXNZqB4pKlAaFxbYxRMzQpoEsvVFOY07fe', 1),
(2, 'S Zaman', 'genius', 'genius@gmail.com', '000 000 000', '$2y$10$DozM30vRGMY9aDIh2EKxROmvuJRtBMimO2ox/rF8uXjMBYBjLvVRe', 'Administrator', '11822730_1619598781649385_5506560502405630990_n.jpg', '2017-01-27 22:35:17', '2017-03-06 11:02:08', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `type` enum('script','banner') NOT NULL,
  `advertiser_name` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `banner_size` varchar(255) NOT NULL,
  `banner_file` varchar(255) DEFAULT NULL,
  `script` text,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uniqueid` varchar(255) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uniqueid`, `product`, `title`, `quantity`, `size`, `cost`) VALUES
(3, 'OAFk9Fm', 25, 'Tesing Project Float', 1, NULL, 20.99),
(4, 'OAFk9Fm', 20, 'Here Will Be Your Product Title', 1, NULL, 1600),
(6, 'HiVPsdH', 49, 'Smith Press', 1, NULL, 1200),
(9, 'jrbGc7l', 47, 'Presse Horizontale-', 1, NULL, 1400),
(10, 'JDWRsdU', 60, 'Soulevement Latéral', 2, NULL, 2400),
(11, 'URP8PgK', 33, 'V-crunch', 2, NULL, 800),
(12, 'URP8PgK', 40, 'Tirage Nuque/Poitrine', 1, NULL, 600);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `mainid` int(11) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `mainid`, `subid`, `role`, `name`, `slug`, `status`) VALUES
(17, NULL, NULL, 'main', 'Cardio Training', 'cardiotraining', 1),
(35, NULL, NULL, 'main', 'Musculation', 'musculation', 1),
(42, 35, NULL, 'sub', 'Membres inférieurs', 'Membres inférieurs', 1),
(43, 17, NULL, 'sub', 'Tapis', 'Tapis', 1),
(44, 35, NULL, 'sub', 'Cage', 'Cage', 1),
(45, 35, NULL, 'sub', 'Tronc', 'Tronc', 1),
(46, 35, 44, 'child', 'Biceps-Triceps-Dorsaux-Pectoraux', 'Biceps-Triceps-Dorsaux-Pectoraux', 1),
(47, 35, 44, 'child', 'Pectoraux-Epaules-Dorsaux', 'Pectoraux-Epaules-Dorsaux', 1),
(48, 35, 44, 'child', 'Dorsaux-Triceps', 'Dorsaux-Triceps', 1),
(49, 35, 45, 'child', 'Abdominaux', 'Abdominaux', 1),
(50, 35, 44, 'child', 'Abdominaux-Dorsaux-Triceps', 'Abdominaux-Dorsaux-Triceps', 1),
(51, 35, 42, 'child', 'Abducteurs', 'Abducteurs', 1),
(52, 35, NULL, 'sub', 'Membres supérieurs', 'Membres supérieurs', 1),
(53, 35, 52, 'child', 'Biceps', 'Biceps', 1),
(54, 35, 42, 'child', 'Biceps-Triceps-Dorsaux-Pectoraux.', 'Biceps-Triceps-Dorsaux-Pectoraux.', 1),
(55, 35, 45, 'child', 'Dorsaux', 'Dorsaux', 1),
(56, 35, 52, 'child', 'Dorsaux.', 'Dorsaux.', 1),
(57, 35, 52, 'child', 'Epaules', 'Epaules', 1),
(58, 35, 42, 'child', 'Mollets', 'Mollets', 1),
(59, 35, 45, 'child', 'Pectoraux', 'Pectoraux', 1),
(60, 35, 42, 'child', 'Quadriceps', 'Quadriceps', 1),
(61, 35, 52, 'child', 'Triceps', 'Triceps', 1),
(63, NULL, NULL, 'main', 'Bonnes Affaires', 'bonnesaffaires', 1),
(64, 63, NULL, 'sub', 'Autre-', 'Autre-', 1),
(65, 63, 64, 'child', 'Autre*', 'Autre*', 1),
(67, NULL, NULL, 'main', 'Nouveautés', 'news', 1),
(68, NULL, NULL, 'main', 'test', 'test', 1),
(69, 68, NULL, 'sub', 'test', 'teset', 1);

-- --------------------------------------------------------

--
-- Table structure for table `code_scripts`
--

CREATE TABLE `code_scripts` (
  `id` int(11) NOT NULL,
  `google_analytics` text NOT NULL,
  `meta_keys` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `code_scripts`
--

INSERT INTO `code_scripts` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>\r\n   //Google Analytics Scriptfffffffffffffffffffffffssssfffffs\r\n</script>', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 42, 0, NULL),
(4, 'browser', 'Windows 7', 167, 0, NULL),
(5, 'browser', 'Android', 43, 0, NULL),
(6, 'browser', 'Linux', 221, 0, NULL),
(7, 'browser', 'Windows 8.1', 15, 0, NULL),
(8, 'browser', 'iPhone', 4, 0, NULL),
(9, 'referral', 'www.google.com', 4, 0, NULL),
(10, 'referral', 'com.google.android.gm', 8, 0, NULL),
(11, 'browser', 'Ubuntu', 30, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` int(11) NOT NULL,
  `orderid` varchar(255) DEFAULT NULL,
  `owner` enum('vendor','admin') DEFAULT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `payment` varchar(255) NOT NULL DEFAULT 'completed',
  `paid` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','processing','completed') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordered_products`
--

INSERT INTO `ordered_products` (`id`, `orderid`, `owner`, `vendorid`, `productid`, `quantity`, `cost`, `size`, `payment`, `paid`, `created_at`, `updated_at`, `status`) VALUES
(1, '1', 'admin', NULL, 25, 1, 20.99, '', 'completed', 'yes', '2017-12-04 12:38:25', '2017-12-04 12:49:44', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `products` varchar(255) DEFAULT NULL,
  `quantities` varchar(255) DEFAULT NULL,
  `sizes` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_city` varchar(255) NOT NULL,
  `customer_zip` varchar(255) NOT NULL,
  `booking_date` datetime DEFAULT NULL,
  `status` enum('pending','processing','completed','declined') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customerid`, `products`, `quantities`, `sizes`, `method`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `booking_date`, `status`) VALUES
(1, 1, '25', '1', NULL, 'Cash On Delivery', 20.99, NULL, NULL, 'AwBG1512391105', 'Completed', 'toutou@titi.com', 'toutou titi', '123456', 'mms fsdfs', 'fff', '2090', '2017-12-04 12:38:25', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `page_settings`
--

CREATE TABLE `page_settings` (
  `id` int(11) NOT NULL,
  `contact` text CHARACTER SET latin1 NOT NULL,
  `contact_email` text CHARACTER SET latin1 NOT NULL,
  `about` text CHARACTER SET latin1 NOT NULL,
  `faq` text CHARACTER SET latin1 NOT NULL,
  `c_status` int(11) NOT NULL,
  `a_status` int(11) NOT NULL,
  `f_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_settings`
--

INSERT INTO `page_settings` (`id`, `contact`, `contact_email`, `about`, `faq`, `c_status`, `a_status`, `f_status`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'admin@geniusocean.com', '<div>\r\n<h2>Notre histoire<br></h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Notre activité<br></h2>\r\n<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br><div>\r\n<h2>Nos partenaires<br></h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</p>\r\n</div>\r\n<h2><br></h2>', '<div>\r\n<h2>What is Lorem Ipsum, Really?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br><div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</p>\r\n</div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which don\'t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisn\'t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `owner` enum('admin','vendor') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_secondary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET latin1 NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL,
  `previous_price` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `sizes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `policy` text COLLATE utf8_unicode_ci,
  `featured` int(1) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `approved` enum('no','yes') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `logomarque` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorisation` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `vendorid`, `owner`, `title`, `title_secondary`, `category`, `model`, `mark`, `description`, `price`, `previous_price`, `stock`, `sizes`, `feature_image`, `policy`, `featured`, `views`, `approved`, `created_at`, `updated_at`, `status`, `logomarque`, `categorisation`) VALUES
(25, NULL, 'admin', 'Tesing Project Float', '', '17,,', '', '', 'sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf', 20.99, 25.99, 993, NULL, '1511805237mi.jpg', 'sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf', 1, 29, 'yes', '2017-05-30 14:56:16', '2018-02-06 08:35:29', 1, NULL, ''),
(27, NULL, 'admin', 'Tapis de course', '', '17,43,', '', '', '<br>', 2000, 2000, 1, NULL, '15157814456_mxt4x_matrix.jpg', '<br>', 0, 15, 'yes', '2018-01-12 18:24:05', '2018-06-13 21:33:58', 1, NULL, ''),
(29, NULL, 'admin', 'Cardio training', '', '35,45,55', '', '', 'testtesttest', 120, 150, 12, NULL, '1516126759f0876672-450x291.jpg', 'tetsttetst', 0, 1, 'yes', '2018-01-16 18:19:19', '2018-03-09 08:50:29', 1, NULL, ''),
(30, NULL, 'admin', 'Presse Horizontale', '', '35,42,60', '', '', 'Charges guidées <br>', 1000, 1000, 1, NULL, '15162031101_SeatedLegPress_LS117_Lexco.jpeg', '<br>', 0, 0, 'yes', '2018-01-17 15:31:50', '2018-01-17 15:31:50', 1, NULL, ''),
(31, NULL, 'admin', 'Banc de musculation pour abdominaux', '', '35,45,49', '', '', '<br>', 200, 200, 2, NULL, '15162041268_ab-x_precor.jpg', '<br>', 0, 0, 'yes', '2018-01-17 15:48:46', '2018-01-17 15:48:46', 1, NULL, ''),
(32, NULL, 'admin', 'Mollet', '', '35,42,58', '', '', '<br>', 500, 500, 1, NULL, '15162043219_PlateLoadedCalfRaise_SportsArt.png', '<br>', 0, 0, 'yes', '2018-01-17 15:52:02', '2018-01-17 15:52:02', 1, NULL, ''),
(33, NULL, 'admin', 'V-crunch', '', '35,45,49', '', '', '<br>', 400, 400, 2, NULL, '151620445810_v-crunch_precor.png', '<br>', 0, 4, 'yes', '2018-01-17 15:54:18', '2018-03-09 09:18:56', 1, NULL, ''),
(34, NULL, 'admin', 'Strech Trainer', '', '63,64,65', '', '', '<br>', 200, 200, 2, NULL, '151620489011_StretchTrainer240i_Precor.jpg', '<br>', 0, 3, 'yes', '2018-01-17 16:01:30', '2018-02-09 08:18:01', 1, NULL, ''),
(35, NULL, 'admin', 'Tirage Poulie Inférieur', '', '35,45,55', '', '', '<br>', 1200, 1200, 2, NULL, '151620502615_TiragePoulieInférieure_VR3_Cybex_1.png', '<br>', 0, 0, 'yes', '2018-01-17 16:03:46', '2018-01-17 16:03:46', 1, NULL, ''),
(36, NULL, 'admin', 'Abdominaux', '', '35,45,49', '', '', '<br>', 1200, 1200, 2, NULL, '151620514217_Abdominaux_VR3_Cybex_1.png', '<br>', 0, 4, 'yes', '2018-01-17 16:05:42', '2018-02-17 14:41:28', 1, '1518715897cybex-converted.png', 'libre'),
(37, NULL, 'admin', 'Aviron', '', '35,45,55', '', '', '<br>', 1200, 1200, 2, NULL, '151620523818_Aviron_VR3_Cybex_1.png', '<br>', 0, 0, 'yes', '2018-01-17 16:07:18', '2018-01-17 16:07:18', 1, NULL, ''),
(38, NULL, 'admin', 'Tirage Poulie Supérieur', '', '35,52,56', '', '', '<br>', 1200, 1200, 1, NULL, '151620548915_TiragePoulieInférieure_VR3_Cybex_1.png', '<br>', 0, 0, 'yes', '2018-01-17 16:11:29', '2018-01-17 16:11:29', 1, NULL, ''),
(39, NULL, 'admin', '45° Extension Dos', '', '35,45,55', '', '', '<br>', 400, 400, 1, NULL, '151620557927_45°backextension_Cybex.png', '<br>', 0, 0, 'yes', '2018-01-17 16:12:59', '2018-01-17 16:12:59', 1, NULL, ''),
(40, NULL, 'admin', 'Tirage Nuque/Poitrine', '', '35,45,55', '', '', '<br>', 600, 600, 1, NULL, '151620568130_LatPullDown_LS102_Lexco.jpeg', '<br>', 0, 0, 'yes', '2018-01-17 16:14:41', '2018-01-17 16:14:41', 1, NULL, ''),
(41, NULL, 'admin', 'Triceps dips', '', '35,52,61', '', '', '<br>', 600, 600, 1, NULL, '151620579431_Dipping_LS109_Lexco.jpeg', '<br>', 0, 0, 'yes', '2018-01-17 16:16:34', '2018-01-17 16:16:34', 1, NULL, ''),
(42, NULL, 'admin', 'Dorsy bas', '', '35,45,55', '', '', '<br>', 600, 600, 1, NULL, '151620592232_MidRow_LS108_Lexco.jpeg', '<br>', 0, 3, 'yes', '2018-01-17 16:18:42', '2018-02-15 18:22:35', 1, NULL, ''),
(43, NULL, 'admin', 'Butter Fly', '', '35,45,59', '', '', '<br>', 600, 600, 1, NULL, '151620605933_Butterfly_LS106_Lexco.jpeg', '<br>', 0, 0, 'yes', '2018-01-17 16:20:59', '2018-01-17 16:20:59', 1, NULL, ''),
(44, NULL, 'admin', 'Flexion Avant Bras', '', '35,52,53', '', '', '<br>', 1200, 1200, 3, NULL, '151620617534_FlexionBras_VR3_Cybex_1.png', '<br>', 0, 0, 'yes', '2018-01-17 16:22:55', '2018-01-17 16:22:55', 1, NULL, ''),
(45, NULL, 'admin', 'Extension Jambe', '', '35,42,60', '', '', '<br>', 1200, 1200, 2, NULL, '151620627135_LegExtension_VR3_Cybex_1.png', '<br>', 0, 0, 'yes', '2018-01-17 16:24:31', '2018-01-17 16:24:31', 1, NULL, ''),
(46, NULL, 'admin', 'Rotation Torse', '', '35,45,49', '', '', '<br>', 1200, 1200, 1, NULL, '151620638737_RotationTorse_VR3_Cybex_1.png', '<br>', 0, 3, 'yes', '2018-01-17 16:26:27', '2018-03-07 11:34:47', 1, NULL, ''),
(47, NULL, 'admin', 'Presse Horizontale-', '', '35,42,60', '', '', '<br>', 1400, 1400, 1, NULL, '151620673136_LegPress_VR3_Cybex_1.png', '<br>', 0, 0, 'yes', '2018-01-17 16:32:11', '2018-01-17 16:32:11', 1, NULL, ''),
(48, NULL, 'admin', 'Adduction Hanche', '', '35,42,51', '', '', '<br>', 1200, 1200, 2, NULL, '151620685038_HipAdduction_VR3_Cybex_1.png', '<br>', 0, 0, 'yes', '2018-01-17 16:34:10', '2018-01-17 16:34:10', 1, NULL, ''),
(49, NULL, 'admin', 'Smith Press', '', '35,44,46', '', '', '<br>', 1200, 1200, 3, NULL, '151620693440_SmithPress_LifeFitness.jpg', '<br>', 0, 2, 'yes', '2018-01-17 16:35:34', '2018-02-15 18:04:22', 1, NULL, ''),
(50, NULL, 'admin', 'Presse à Jambes', '', '35,42,60', '', '', '<br>', 1200, 1200, 1, NULL, '151620706141_LegPress_VR1_Cybex.png', '<br>', 0, 0, 'yes', '2018-01-17 16:37:41', '2018-01-17 16:37:41', 1, NULL, ''),
(51, NULL, 'admin', 'Vis-à-vis', '', '35,44,47', '', '', '<br>', 1400, 1400, 2, NULL, '1516207371no-pic.jpg', '<br>', 0, 0, 'yes', '2018-01-17 16:42:51', '2018-01-17 16:42:51', 1, NULL, ''),
(52, NULL, 'admin', 'Traction/Dips assisté', '', '35,44,48', '', '', '<br>', 1000, 1000, 1, NULL, '151620747243_AssistedChinDipA911_SportsArt.jpg', '<br>', 0, 0, 'yes', '2018-01-17 16:44:32', '2018-01-17 16:44:32', 1, NULL, ''),
(53, NULL, 'admin', 'Colonne Cable', '', '35,44,46', '', '', '<br>', 1000, 1000, 1, NULL, '1516207606no-pic.jpg', '<br>', 0, 1, 'yes', '2018-01-17 16:46:46', '2018-02-17 14:16:43', 1, NULL, ''),
(54, NULL, 'admin', 'Abduction Hanche', '', '35,42,51', '', '', '<br>', 1200, 1200, 2, NULL, '151620769149_HipAbduction_VR3_Cybex_1.png', '<br>', 0, 1, 'yes', '2018-01-17 16:48:11', '2018-03-09 15:36:44', 1, NULL, ''),
(55, NULL, 'admin', 'Assi Flexion Jambe', '', '35,42,54', '', '', '<br>', 1200, 1200, 2, NULL, '151620779250_SeatedLegCurl_VR3_Cybex_1.png', '<br>', 0, 0, 'yes', '2018-01-17 16:49:52', '2018-01-17 16:49:52', 1, NULL, ''),
(56, NULL, 'admin', 'ChinDipFlexor', '', '35,44,50', '', '', '<br>', 600, 600, 1, NULL, '151620788051_ChinDipFlexor_Lexco.jpeg', '<br>', 0, 0, 'yes', '2018-01-17 16:51:20', '2018-01-17 16:51:20', 1, NULL, ''),
(57, NULL, 'admin', 'Mouche/Delta', '', '35,45,59', '', '', '<br>', 1200, 1200, 2, NULL, '151620798752_MoucheDelta_VR1_Cybex.png', '<br>', 0, 0, 'yes', '2018-01-17 16:53:07', '2018-01-17 16:53:07', 1, NULL, ''),
(58, NULL, 'admin', 'Tirage Nuque/Poitrine-', '', '35,45,55', '', '', '<br>', 800, 800, 1, NULL, '151620817255_LatPullDownA926_sportsart.jpg', '<br>', 0, 0, 'yes', '2018-01-17 16:56:12', '2018-01-17 16:56:12', 1, NULL, ''),
(59, NULL, 'admin', 'Presse à Pectoraux', '', '35,45,59', '', '', '<br>', 1200, 1200, 2, NULL, '151620827956_PresseAPectoraux_VR3_Cybex_1.png', '<br>', 0, 2, 'yes', '2018-01-17 16:57:59', '2018-03-09 09:31:39', 1, NULL, ''),
(60, NULL, 'admin', 'Soulevement Latéral', '', '35,52,57', '', '', '<div id=\"lipsum\">\r\n<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel tortor \r\nodio. Aliquam scelerisque a sapien vitae hendrerit. Curabitur nisl \r\nlorem, aliquet eget convallis id, vehicula ut turpis. Suspendisse eget \r\norci velit. Praesent vitae dolor sed felis consectetur convallis. Nunc \r\narcu elit, fringilla eget ornare sed, condimentum sed elit. Vivamus orci\r\n nunc, bibendum sit amet pretium in, hendrerit non ipsum. Nunc dapibus \r\narcu urna, ac aliquet orci mattis vel. Etiam mollis ornare nunc, vitae \r\ncommodo lectus maximus eu. In sodales venenatis quam ut sodales. Vivamus\r\n rhoncus tristique condimentum. Phasellus at ligula vel tellus elementum\r\n viverra. Vivamus vestibulum orci quis malesuada fermentum.\r\n</p></div>', 1200, 1200, 1, NULL, '1528648736npm.jpg', '<div id=\"lipsum\">\r\n<p>\r\nLlorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel tortor \r\nodio. Aliquam scelerisque a sapien vitae hendrerit. Curabitur nisl \r\nlorem, aliquet eget convallis id, vehicula ut turpis. Suspendisse eget \r\norci velit. Praesent vitae dolor sed felis consectetur convallis. Nunc \r\narcu elit, fringilla eget ornare sed, condimentum sed elit. Vivamus orci\r\n nunc, bibendum sit amet pretium in, hendrerit non ipsum. Nunc dapibus \r\narcu urna, ac aliquet orci mattis vel. Etiam mollis ornare nunc, vitae \r\ncommodo lectus maximus eu. In sodales venenatis quam ut sodales. Vivamus\r\n rhoncus tristique condimentum. Phasellus at ligula vel tellus elementum\r\n viverra. Vivamus vestibulum orci quis malesuada fermentum.\r\n</p></div>', 0, 29, 'yes', '2018-01-17 16:59:23', '2018-06-10 17:25:43', 1, '1520594153cybex.png', 'libre'),
(61, NULL, 'admin', 'test', 'testfrench0', '35,44,46', 'testmodel', 'testmark', '<br>', 20, 25, 15, NULL, '1528928177npm.jpg', 'fgf<br>', 0, 13, 'yes', '2018-06-13 22:16:17', '2018-06-13 23:33:16', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `productid`, `image`) VALUES
(1, 26, 'br150028710072d783df472ec91220ca7714adf113c6.jpg'),
(2, 26, 'tq1500287100E1F.jpg'),
(3, 29, '8t151612675925181937_10155966773228748_1133746160_n.jpg'),
(4, 30, 'fF15162031101_SeatedLegPress_LS117_Lexco.jpeg'),
(5, 27, 'vL15162033056_mxt4x_matrix.jpg'),
(6, 31, '7r15162041278_ab-x_precor.jpg'),
(7, 32, 'Vc15162043229_PlateLoadedCalfRaise_SportsArt.png'),
(8, 33, '7n151620445810_v-crunch_precor.png'),
(9, 34, '2K151620489011_StretchTrainer240i_Precor.jpg'),
(10, 35, '7K151620502615_TiragePoulieInférieure_VR3_Cybex_2.png'),
(11, 35, 'vq151620502615_TiragePoulieInférieure_VR3_Cybex_1.png'),
(12, 36, 'ec151620514217_Abdominaux_VR3_Cybex_2.png'),
(13, 36, 'XT151620514217_Abdominaux_VR3_Cybex_1.png'),
(14, 37, 'Gh151620523818_Aviron_VR3_Cybex_2.png'),
(15, 37, 'jz151620523918_Aviron_VR3_Cybex_1.png'),
(16, 39, 'nv151620557927_45°backextension_Cybex.png'),
(17, 40, '92151620568230_LatPullDown_LS102_Lexco.jpeg'),
(18, 41, '4s151620579431_Dipping_LS109_Lexco.jpeg'),
(19, 42, '6U151620592232_MidRow_LS108_Lexco.jpeg'),
(20, 43, 'u8151620605933_Butterfly_LS106_Lexco.jpeg'),
(21, 44, 'Lw151620617534_FlexionBras_VR3_Cybex_2.png'),
(22, 44, 'UU151620617534_FlexionBras_VR3_Cybex_1.png'),
(23, 45, 'bV151620627135_LegExtension_VR3_Cybex_2.png'),
(24, 45, 'zT151620627135_LegExtension_VR3_Cybex_1.png'),
(25, 46, 'pP151620638837_RotationTorse_VR3_Cybex_2.png'),
(26, 46, '7s151620638837_RotationTorse_VR3_Cybex_1.png'),
(27, 47, '5V151620673136_LegPress_VR3_Cybex_2.png'),
(28, 47, 'wE151620673136_LegPress_VR3_Cybex_1.png'),
(29, 48, 'AG151620685038_HipAdduction_VR3_Cybex_2.png'),
(30, 48, 'L1151620685038_HipAdduction_VR3_Cybex_1.png'),
(31, 49, '7E151620693440_SmithPress_LifeFitness.jpg'),
(32, 50, 'uM151620706241_LegPress_VR1_Cybex.png'),
(33, 52, 'ma151620747343_AssistedChinDipA911_SportsArt.jpg'),
(34, 54, 'Mg151620769149_HipAbduction_VR3_Cybex_2.png'),
(35, 54, 'vy151620769149_HipAbduction_VR3_Cybex_1.png'),
(36, 55, 'n8151620779250_SeatedLegCurl_VR3_Cybex_2.png'),
(37, 55, 'qp151620779250_SeatedLegCurl_VR3_Cybex_1.png'),
(38, 56, 'oc151620788051_ChinDipFlexor_Lexco.jpeg'),
(39, 57, 'kR151620798852_MoucheDelta_VR1_Cybex.png'),
(40, 58, 'kp151620817255_LatPullDownA926_sportsart.jpg'),
(41, 59, '7c151620827956_PresseAPectoraux_VR3_Cybex_1.png'),
(44, 61, '1D151871430026942711_10156065934913748_1656512044_n.png'),
(45, 62, 'M31518715489cybex-converted.png'),
(47, 60, 'yI1528648802Raatajat_rahanalaiset.JPG'),
(48, 61, 'BV1528928177npm.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `review` text,
  `rating` int(11) DEFAULT NULL,
  `review_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `productid`, `name`, `email`, `review`, `rating`, `review_date`) VALUES
(1, NULL, 'sssssssss', 'user@gmail.com', NULL, NULL, '2017-05-08 17:15:56'),
(2, NULL, 'shaon', 'user@gmail.com', 'Lorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsam Lorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsam', NULL, '2017-05-08 17:17:32'),
(3, 8, 'shaon', 'admin@gmail.com', 'Lorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsam Lorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsam', 5, '2017-05-08 17:18:15'),
(4, 8, 'wwwwwwwww wwwwwwww', 'user@gmail.com', 'wwwwww www wwww wwwwwww wwwwwwww wwwwww www wwwwww', 4, '2017-05-08 18:15:37'),
(5, 3, 'Shaon Zaman', 'user@gmail.com', 'Good Product.', 5, '2017-05-08 21:37:38'),
(6, 3, 'B Chow', 'admin@gmail.com', 'Nice Product.', 4, '2017-05-09 10:20:51'),
(7, 3, 'Dreamy', 'user@gmail.com', 'Poor Product.', 1, '2017-05-09 10:21:45'),
(9, 4, 'Shaon Zaman', 'user@gmail.com', 'aaaaaaaaaaaaaaaaaa', 5, '2017-05-12 10:56:24'),
(10, 24, 'ddddddddf', 'badruddozsa.me@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 5, '2017-05-19 15:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `section_titles`
--

CREATE TABLE `section_titles` (
  `id` int(11) NOT NULL,
  `service_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `service_text` text CHARACTER SET latin1,
  `pricing_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `pricing_text` text CHARACTER SET latin1,
  `portfolio_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `portfolio_text` text CHARACTER SET latin1,
  `testimonial_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `testimonial_text` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section_titles`
--

INSERT INTO `section_titles` (`id`, `service_title`, `service_text`, `pricing_title`, `pricing_text`, `portfolio_title`, `portfolio_text`, `testimonial_title`, `testimonial_text`) VALUES
(1, 'Our Services', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Pricing Plans', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Latest Projects', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Customer Reviews', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.');

-- --------------------------------------------------------

--
-- Table structure for table `service_section`
--

CREATE TABLE `service_section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text` text CHARACTER SET latin1 NOT NULL,
  `icon` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_section`
--

INSERT INTO `service_section` (`id`, `title`, `text`, `icon`, `status`) VALUES
(2, 'Musculation', 'Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s', 'zccmusculation.png', 1),
(3, 'Cardio training', 'Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s', 'ogwcardio.png', 1),
(4, 'Nouveautés', 'Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s', 'f5Unouveautes.png', 1),
(5, 'Bonnes affaires', 'Bonnes affairesBonnes affairesBonnes affaires', '4vlbonnesaffaires.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about` text CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fax` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `footer` varchar(255) CHARACTER SET latin1 NOT NULL,
  `background` varchar(255) CHARACTER SET latin1 NOT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `withdraw_fee` float NOT NULL DEFAULT '0',
  `withdraw_charge` float NOT NULL DEFAULT '0',
  `paypal_business` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shipping_cost` float DEFAULT '0',
  `stripe_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_file` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `title`, `url`, `about`, `address`, `phone`, `fax`, `email`, `footer`, `background`, `theme_color`, `withdraw_fee`, `withdraw_charge`, `paypal_business`, `shipping_cost`, `stripe_key`, `stripe_secret`, `css_file`) VALUES
(1, 'LogoOccas Fitness.JPG', 'favicon.ico', 'Occas Fitness', 'Fuckcccccc', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae&nbsp;', '124/6 Street, Country', '00 000 000 000', '00 000 000 000', 'admin@geniusocean.com', 'COPYRIGHT 2018 Occas Fitness<br>', 'f0876672-450x291.jpg', '#2e4bcb', 3.5, 3, 'shaon143-facilitator-1@gmail.com', 0, 'pk_test_bD5Si0msHNV75sd5R71jSJFb', 'sk_test_r7zxASOuYYCiuT3svkUtuh6W', 'genius1.css');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text` text CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text_position` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `text`, `image`, `text_position`, `status`) VALUES
(6, 'Cardio training', 'Entretenir votre forme, misez sur l\'endurance !', 'MYrmaxresdefault.jpg', 'slide_style_left', 1),
(7, 'Musculation', 'Acquérir plus de force, d\'endurance, de puissance, ou de volume musculaire.', 'cyUsalle-de-musculation-grenoble.jpg', 'slide_style_left', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `g_plus` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `f_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `t_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `g_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `link_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twiter`, `g_plus`, `linkedin`, `f_status`, `t_status`, `g_status`, `link_status`) VALUES
(1, 'http://facebook.com/', 'http://twitter.com/', 'http://google.com/', 'http://linkedin.com/', 'enable', 'enable', 'enable', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `review` text CHARACTER SET latin1 NOT NULL,
  `client` varchar(255) CHARACTER SET latin1 NOT NULL,
  `designation` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `review`, `client`, `designation`) VALUES
(1, 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'eBangladesh', 'Project Manager'),
(2, 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'The Usual Suspects', 'Owner');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `name`, `gender`, `phone`, `fax`, `email`, `password`, `address`, `city`, `zip`, `created_at`, `updated_at`, `status`) VALUES
(1, 'toutou titi', NULL, '123456', NULL, 'toutou@titi.com', '$2y$10$yoKg.QmMSUVSrXch0UKOyu7mqHJWK35BYI8mIOOCOUQR2hNlLJZna', NULL, NULL, NULL, '2017-12-04 12:37:34', '2017-12-04 12:37:34', 1),
(2, 'Test', NULL, '00000000', NULL, 'admin@test.com', '$2y$10$wteXdWVMeKX3.ugLKNyeyu.rbCvd83LE8BEJdRm3yATGozHUI1YQe', NULL, NULL, NULL, '2018-01-17 20:07:41', '2018-01-17 20:07:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_profiles`
--

CREATE TABLE `vendor_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `current_balance` float NOT NULL DEFAULT '0',
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `acc_email` varchar(255) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `acc_name` varchar(255) DEFAULT NULL,
  `address` text,
  `swift` varchar(255) DEFAULT NULL,
  `reference` text,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `vendorid`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssssssssssssssss', 2063.5, 63.5, '2017-07-25 10:29:33', '2017-07-25 10:32:58', 'rejected'),
(2, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'ssss', 2063.5, 63.5, '2017-07-25 10:34:32', '2017-07-25 10:35:58', 'rejected'),
(3, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssss', 2000, 63.5, '2017-07-25 10:36:14', '2017-07-25 10:36:57', 'rejected'),
(4, 1, 'Skrill', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssssssss', 1936.5, 63.5, '2017-07-25 10:37:08', '2017-07-25 10:37:42', 'rejected'),
(5, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sss', 2000, 0, '2017-07-25 10:38:27', '2017-07-25 10:38:48', 'rejected'),
(6, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'ssss', 1936.5, 63.5, '2017-07-25 10:39:52', '2017-07-25 10:40:03', 'rejected'),
(7, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssssssssss', 1936.5, 63.5, '2017-07-25 10:59:39', '2017-07-25 10:59:49', 'completed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code_scripts`
--
ALTER TABLE `code_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_settings`
--
ALTER TABLE `page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_titles`
--
ALTER TABLE `section_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_section`
--
ALTER TABLE `service_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_profiles`
--
ALTER TABLE `vendor_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `code_scripts`
--
ALTER TABLE `code_scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `page_settings`
--
ALTER TABLE `page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `section_titles`
--
ALTER TABLE `section_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `service_section`
--
ALTER TABLE `service_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vendor_profiles`
--
ALTER TABLE `vendor_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

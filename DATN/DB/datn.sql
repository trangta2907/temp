-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 03:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datn`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`) VALUES
(1, 'Adidas', 'AVAILABLE'),
(2, 'Vans', 'AVAILABLE'),
(3, 'Converse', 'AVAILABLE'),
(4, 'Versace', 'AVAILABLE'),
(8, 'Nike', 'AVAILABLE'),
(9, 'nhãn hiệu 1', 'AVAILABLE'),
(10, 'Sandal', 'AVAILABLE'),
(11, 'Cao gót', 'AVAILABLE'),
(12, 'Dior', 'AVAILABLE'),
(13, 'nhãn hiệu 1', 'AVAILABLE'),
(14, 'nhãn hiệu B', 'AVAILABLE'),
(15, 'Juno', 'AVAILABLE'),
(16, 'Biti’s Hunter', 'AVAILABLE'),
(17, 'HM', 'AVAILABLE'),
(18, 'dungna', 'AVAILABLE'),
(19, 'dungna', 'AVAILABLE');

-- --------------------------------------------------------

--
-- Table structure for table `brand_category`
--

CREATE TABLE `brand_category` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_category`
--

INSERT INTO `brand_category` (`id`, `brand_id`, `category_id`) VALUES
(4, 2, 3),
(5, 2, 5),
(6, 2, 6),
(7, 3, 3),
(8, 3, 4),
(9, 3, 5),
(10, 4, 3),
(11, 4, 6),
(12, 4, 5),
(16, 1, 3),
(18, 1, 5),
(19, 1, 6),
(20, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `create_by`, `update_by`) VALUES
(3, 'Sneaker', 'AVAILABLE', 1, NULL),
(4, 'Cao gót', 'AVAILABLE', 1, NULL),
(5, 'Sandal', 'AVAILABLE', 1, NULL),
(6, 'Guốc', 'AVAILABLE', 1, NULL),
(7, 'giày bệt', 'AVAILABLE', 1, 1),
(8, 'Dép cao gót', 'AVAILABLE', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`) VALUES
(1, 'Kem'),
(2, 'Đen'),
(3, 'Hồng'),
(4, 'Cam'),
(5, 'Tím'),
(6, 'Xanh nhạt'),
(7, 'Đỏ'),
(8, 'Trắng hồng'),
(9, 'Vàng nhạt'),
(10, 'Xanh hồng'),
(15, 'Vân ANh');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `stars` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `height`
--

CREATE TABLE `height` (
  `id` int(11) NOT NULL,
  `height` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `height`
--

INSERT INTO `height` (`id`, `height`) VALUES
(1, 'Bệt'),
(3, '2'),
(4, '3'),
(5, '4'),
(6, '5'),
(7, '6'),
(8, '7'),
(9, '8'),
(10, '9'),
(15, '10');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `product_id`) VALUES
(1, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F88.37690375550378giay2.jpg?alt=media&token=a29ed42c-bbaa-4c71-ba79-da5c1660648d', 24),
(2, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F0.9520222999708006cnv_red1.webp?alt=media&token=601cfc6f-0e40-47b1-ab90-c96f610a5bf6', 25),
(3, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F59.81775242573975cnv_red6.jfif?alt=media&token=7f747c67-1e58-4860-a7c2-95868e743ee1', 25),
(4, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F98.1810636396808cnv_red6.jfif?alt=media&token=e6b80437-8250-43a6-92e7-a5146670bc93', 25),
(5, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F62.69785198115449cnv_red6.jfif?alt=media&token=b1cf53dc-613e-4a39-8ce9-60f9332a4668', 25),
(6, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F3.5741186731578cnv_red6.jfif?alt=media&token=c3d1760c-0a89-422d-8ace-1716fb2c8ab0', 25),
(7, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F12.948669357606612giay-sneaker-snk-0040-mau-trang-5__60532__1625301752-medium.jpg?alt=media&token=86b1adbc-1eef-4270-8b8c-1c0f7a25fc5f', 1),
(11, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F87.12220275111014giay-sneaker-vien-chi-noi-phoi-metallic-snk-0045-mau-trang-3__62044__1640853343-medium.jpg?alt=media&token=88b4bcec-d69b-4c85-b2c1-174a6ac8c7cb', 2),
(12, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F39.37346451994799giay-sneaker-vien-chi-noi-phoi-metallic-snk-0045-mau-trang-main__62043__1640853330-medium%402x.jpg?alt=media&token=ecab57da-97da-4d72-bf91-bd266180fe8e', 1),
(13, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F57.94236261104084giay-sneaker-vien-chi-noi-phoi-metallic-snk-0045-mau-trang-4__62046__1640853369-medium.jpg?alt=media&token=7aceda8a-0cfd-47b6-a089-84e5b905a248', 1),
(15, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F32.78516293441298giay-sneaker-vien-chi-noi-phoi-metallic-snk-0045-mau-trang-main__62043__1640853330-medium%402x.jpg?alt=media&token=b779efa0-00b3-413e-a893-3ea210cc1436', 2),
(49, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F43.965250732887796dsc00030-copy__66121__1665563330-medium%402x.jpg?alt=media&token=c13ba3ea-59f7-4042-90e3-5bec47dfdd07', 34),
(50, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F37.5401425817969hau01306-copy-2__66122__1665563331-medium.jpg?alt=media&token=a7ed9106-453d-4a9e-a045-669973b5c88c', 34),
(51, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F81.60628826348126dsc00030-copy__66121__1665563330-medium%402x.jpg?alt=media&token=4f230af7-5a39-4594-bd30-c969f4df33f4', 35),
(52, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F9.231341354996436gia-y-sneaker-neon-light-3-snk-0040-mau-trang-photo__60536__1626077969-medium%402x.jpg?alt=media&token=b560951b-9c09-4ef3-9c54-c704d2e5b96d', 35),
(53, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F56.351196068723894dsc00030-copy__66121__1665563330-medium%402x.jpg?alt=media&token=a2306bf8-edeb-45d1-9e3d-76f80de21c24', 36),
(54, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F29.044166424812158hau01306-copy-2__66122__1665563331-medium.jpg?alt=media&token=8b02cfb9-b37d-4846-b8a9-149fc53d5f2c', 36),
(55, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F44.825414853908406hau01324-copy__66123__1665563332-medium.jpg?alt=media&token=0da6689f-c90c-4a5b-b60e-f1b4a07196e7', 36),
(62, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F95.8584729241677nike3.webp?alt=media&token=3af3a313-7e95-4851-a630-89f5ba0d2dd0', 3),
(63, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F78.99527317680284nike4.webp?alt=media&token=0a33cad3-1a21-4af9-8d50-6ccf8a346ffa', 3),
(64, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F92.55923224702917sn3.jfif?alt=media&token=bc85d2d7-ee6e-4cbb-abd2-11718eb23a4f', 4),
(65, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F61.22972671385518sn2.jfif?alt=media&token=055e4e6d-a68f-4558-b0b0-e2600deac5a2', 4),
(66, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F83.75469579735473sn1.jfif?alt=media&token=c37e38ae-c1b1-497b-84e2-d8279c4c91df', 4),
(67, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F48.1404022472048jo4.webp?alt=media&token=b432c2e1-b90f-42ad-9fe9-a3dbfc961cd5', 5),
(68, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F84.32247298387416jo1.webp?alt=media&token=c2693a7d-e25c-4b8b-9702-cae58043a12d', 5),
(69, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F48.1404022472048jo4.webp?alt=media&token=b432c2e1-b90f-42ad-9fe9-a3dbfc961cd5', 5),
(70, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F84.32247298387416jo1.webp?alt=media&token=c2693a7d-e25c-4b8b-9702-cae58043a12d', 5),
(71, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F90.398843315878043.jpeg?alt=media&token=8dd21a4d-9bac-45f5-b87d-6192d9003b37', 6),
(72, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F0.18763979972731272.webp?alt=media&token=5b4f7ce8-d782-46cd-9da5-95eba5933c61', 6),
(73, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F90.398843315878043.jpeg?alt=media&token=8dd21a4d-9bac-45f5-b87d-6192d9003b37', 6),
(74, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F0.18763979972731272.webp?alt=media&token=5b4f7ce8-d782-46cd-9da5-95eba5933c61', 6),
(75, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F90.398843315878043.jpeg?alt=media&token=8dd21a4d-9bac-45f5-b87d-6192d9003b37', 6),
(76, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F0.18763979972731272.webp?alt=media&token=5b4f7ce8-d782-46cd-9da5-95eba5933c61', 6),
(77, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F26.50917024426851yz3.webp?alt=media&token=e1dae726-1a2f-4a09-9ddd-67111eec126d', 8),
(78, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F45.77546583239247yz2.webp?alt=media&token=36465cb5-49f7-4903-bf84-78ac1b72b992', 8),
(79, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F77.19849876068588yz1.png?alt=media&token=09a5ef1d-d6c7-433e-8877-63b4f51ea3c4', 8),
(80, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F26.50917024426851yz3.webp?alt=media&token=e1dae726-1a2f-4a09-9ddd-67111eec126d', 8),
(81, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F45.77546583239247yz2.webp?alt=media&token=36465cb5-49f7-4903-bf84-78ac1b72b992', 8),
(82, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F77.19849876068588yz1.png?alt=media&token=09a5ef1d-d6c7-433e-8877-63b4f51ea3c4', 8),
(83, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F66.38142115452949.png?alt=media&token=ab5f8f41-cd83-496d-bc14-c60947281199', 9),
(84, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F13.21762958387648.png?alt=media&token=b599e74b-117f-4dad-9942-4337be180035', 9),
(85, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F3.902532629849325.png?alt=media&token=53c70a58-5af8-4c15-9fab-89708b28364e', 9),
(86, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F21.5130197398230939.png?alt=media&token=280f1720-daae-40e7-837a-099a6cf5d2ec', 37),
(87, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F94.94185103872378.png?alt=media&token=651391a0-8caa-4163-a976-857848588bb7', 38),
(88, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F81.82650211285075fpt1.png?alt=media&token=e0858c69-3da0-4115-9c9e-a903161057a5', 15),
(89, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F81.82650211285075fpt1.png?alt=media&token=e0858c69-3da0-4115-9c9e-a903161057a5', 15),
(90, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F23.6671798982004625.png?alt=media&token=75087b87-e99e-4fc7-9159-d63075b7eb8a', 11),
(91, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F80.28904864848533mc2.jfif?alt=media&token=dd9e5f4d-78e1-45d6-a60c-bd76b2d0ffb2', 13),
(92, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F4.627989349954098sd2.jfif?alt=media&token=62b6366b-8948-45c4-9a05-745c5955674c', 14),
(93, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F92.14472489119179sd1.jfif?alt=media&token=a71c13e1-d332-4f81-add8-71ff37977c58', 14),
(94, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F99.688799433843979.png?alt=media&token=84717b4c-ccb5-450e-a2d7-49e382a0393e', 10),
(95, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F79.48998529089819nike1.webp?alt=media&token=18590564-f13d-4dc0-96e8-e68202c3280b', 33),
(96, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F26.390467005073482nike4.webp?alt=media&token=b3267e6f-9ef0-414c-82dd-4b62db14be3b', 33),
(97, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F79.48998529089819nike1.webp?alt=media&token=18590564-f13d-4dc0-96e8-e68202c3280b', 33),
(98, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F26.390467005073482nike4.webp?alt=media&token=b3267e6f-9ef0-414c-82dd-4b62db14be3b', 33),
(99, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F23.84041289748392giay-sneaker-snk-0040-mau-be-4__60525__1625301595-medium.jpg?alt=media&token=58cdf8bc-a096-4bca-a4c6-0618d4ee2795', 39);

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `name`) VALUES
(1, 'Da tổng hợp'),
(2, 'Vải nhân tạo'),
(3, 'Da nhân tạo'),
(4, 'Da thật'),
(5, 'Vải Canvas'),
(6, 'Vải tổng hợp'),
(11, 'Vân Anh');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `code_ghn` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `order_type` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `is_pay` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `code_ghn`, `customer_name`, `created_date`, `update_date`, `phone`, `address`, `province`, `district`, `ward`, `description`, `order_type`, `payment_type`, `voucher_id`, `status`, `create_by`, `update_by`, `is_pay`) VALUES
(1, 'abc', NULL, 'trungnt', '2022-10-05 19:06:51', '2022-10-21 17:30:18', '0961932630', 'Số 1 ', 'Hà nội', 'Từ Liêm', 'Mỹ Đình', NULL, 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(2, 'aaa', NULL, 'trungnt', '2022-10-05 19:08:21', '2022-10-20 16:37:31', '0961932630', 'Số 2', 'Hà Nội', 'Từ Liêm', 'Mỹ Đình', NULL, 'OFFLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(41, '1234567', NULL, 'a', '2022-10-12 21:17:33', '2022-10-20 17:22:54', '0961932630', 'số 1', 'Thành phố Hà Nội', 'Quận Ba Đình', 'Phường Phúc Xá', NULL, 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(42, '12345678', NULL, 'a', '2022-10-12 21:19:03', '2022-10-21 16:48:47', '0961932630', 'số 1', 'Thành phố Hà Nội', 'Quận Ba Đình', 'Phường Phúc Xá', NULL, 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(43, '1235434', NULL, 'Nguyễn Thành Trung', '2022-10-12 21:48:58', '2022-10-21 21:03:34', '0961932630', 'Số 1', 'Thành phố Hà Nội', 'Quận Long Biên', 'Phường Giang Biên', NULL, 'ONLINE', 'ONLINE', NULL, 'WAIT_FOR_THE_SHIPPER_TO_PICK_UP', 1, NULL, 0),
(44, '105865', NULL, 'Nguyễn Thành Trung', '2022-10-13 11:29:25', '2022-10-20 16:48:06', '0961932630', 'Số 1', 'Thành phố Hà Nội', 'Quận Tây Hồ', 'Phường Xuân La', NULL, 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', 1, NULL, 0),
(46, '100000001', NULL, 'Nguyễn Thành Trung', '2022-10-13 14:28:28', '2022-10-13 15:05:13', '0961932630', 'Số 2', 'Thành phố Hà Nội', 'Quận Hai Bà Trưng', 'Phường Bạch Đằng', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'CANCELLED', 1, NULL, 0),
(48, '13369231', NULL, 'Nguyễn Thành Trung', '2022-10-13 14:31:58', '2022-10-20 17:19:22', '0961932630', 'Số 1', 'Tỉnh Điện Biên', 'Huyện Điện Biên', 'Xã Sam Mứn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(49, '13791216', NULL, 'nguyễn Văn A', '2022-10-13 16:20:02', '2022-10-20 16:34:34', '0961932630', 'Số 3', 'Thành phố Hà Nội', 'Quận Hoàn Kiếm', 'Phường Đồng Xuân', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', 1, NULL, 0),
(50, '12251366', NULL, 'Nguyễn Văn A', '2022-10-17 22:21:09', '2022-11-30 22:53:38', '0961932630', 'Số 2', 'Tỉnh Hà Giang', 'Huyện Yên Minh', 'Xã Phú Lũng', '', 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(51, '10964079', NULL, 'Nguyễn Thành Trung', '2022-10-17 22:29:41', '2022-10-17 22:45:19', '0961932630', 'Số 3', 'Tỉnh Cao Bằng', 'Huyện Bảo Lâm', 'Xã Lý Bôn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(54, '11865681', '', 'Nguyễn Thành Trung', '2022-10-19 10:15:08', '2022-10-19 11:25:24', '0961932630', 'Số 123', 'Hà Nội', 'Quận Cầu Giấy', 'Phường Dịch Vọng Hậu', '', 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(55, '16837828', 'LLGBET', 'Nguyễn Văn A', '2022-10-19 11:08:06', '2022-10-21 21:31:43', '0961930630', 'Số 12', 'Hà Nội', 'Quận Đống Đa', 'Phường Hàng Bột', '', 'ONLINE', 'OFFLINE', NULL, 'WAIT_FOR_THE_SHIPPER_TO_PICK_UP', 1, NULL, 0),
(56, '18546794', NULL, 'Trung', '2022-10-19 11:45:06', '2022-10-20 17:16:41', '0961932630', 'Số 12', 'Hà Nội', 'Quận Tây Hồ', 'Phường Yên Phụ', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', 1, NULL, 0),
(57, '14411613', NULL, 'nguyen van c', '2022-10-19 15:47:36', NULL, '0961932630', 'Số 1234', 'Hà Nội', 'Quận Bắc Từ Liêm', 'Phường Xuân Đỉnh', '', 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(58, '16922928', NULL, 'nguyen van c', '2022-10-19 15:55:38', NULL, '0961932630', 'Số 123', 'Hà Nội', 'Quận Hai Bà Trưng', 'Phường Bạch Mai', '', 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(59, '16681783', NULL, 'Nguyễn Văn Admin', '2022-10-20 23:31:07', NULL, '0961932630', 'Số 123', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '', 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(60, '19374338', 'LLGBEW', 'Nguyễn Trung Thành', '2022-10-21 16:46:32', '2022-10-21 21:13:50', '0961932630', 'Số 123', 'Hà Nội', 'Quận Thanh Xuân', 'Phường Thanh Xuân Nam', '', 'ONLINE', 'OFFLINE', NULL, 'WAIT_FOR_THE_SHIPPER_TO_PICK_UP', 1, NULL, 0),
(61, '17610674', NULL, 'ttttt', '2022-10-22 20:45:06', '2022-10-28 14:31:58', '0598578484', '6655', 'Hưng Yên', 'Huyện Phù Cừ', 'Xã Tống Phan', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'CONFIRMED', 1, 1, 0),
(62, '19302808', NULL, 'okeee', '2022-10-22 20:49:36', NULL, '09765443333', 'ffr', 'Điện Biên', 'Huyện Tuần Giáo', 'Xã Quài Tở', '', 'ONLINE', 'ONLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(63, '12676417', NULL, 'yyyyy', '2022-10-22 20:52:16', NULL, '097666666666', 'rrrrtr', 'Hòa Bình', 'Huyện Lạc Sơn', 'Xã Xuất Hóa', '', 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(64, '12563911', NULL, 'a123456', '2022-10-22 21:02:38', '2022-10-28 14:30:56', '0598578484', 'hhttttt', 'Lào Cai', 'Huyện Mường Khương', 'Xã Thanh Bình', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', 1, 1, 0),
(65, '10538605', NULL, 'uhu', '2022-10-28 11:50:13', '2022-10-28 14:53:39', '04939333887', 'so1', 'Phú Thọ', 'Huyện Thanh Ba', 'Xã Quảng Yên', '', 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, 1, 0),
(69, '16469505', NULL, 'trung', '2022-10-31 14:55:14', '2022-11-23 23:30:35', '0961932630', 'số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'DELIVERED', NULL, NULL, 0),
(70, '18166507', NULL, 'Trung', '2022-10-31 15:46:35', '2022-10-31 23:16:37', '0961932630', 'Số 1', 'Hà Nội', 'Quận Tây Hồ', 'Phường Tứ Liên', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'DELIVERED', 3, 1, 0),
(73, '18600119', 'LLGHWR', 'Trung', '2022-11-01 14:17:06', '2022-11-01 14:18:05', '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_THE_SHIPPER_TO_PICK_UP', 3, 1, 0),
(74, '11809232', NULL, 'Trung', '2022-11-02 13:24:17', NULL, '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(75, '14098326', NULL, 'Trung', '2022-11-02 13:30:14', NULL, '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(77, '11710250', NULL, 'Trung', '2022-11-02 13:57:58', NULL, '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(79, '11311402', NULL, 'Nguyễn Thành Trung', '2022-11-16 22:21:29', NULL, '0961932630', 'số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Mễ Trì', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(80, '14113035', NULL, 'Nguyễn Thành Trung', '2022-11-17 21:17:42', NULL, '0961932630', 'số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Mễ Trì', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(81, '11859170', NULL, 'Trung', '2022-11-18 15:25:16', NULL, '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(82, '11226978', NULL, 'Trung', '2022-11-21 20:29:03', NULL, '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Xuân Phương', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(83, '11566030', NULL, 'Trung', '2022-11-21 20:56:34', NULL, '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Mễ Trì', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(84, '16451862', NULL, 'Trung', '2022-11-21 20:59:48', NULL, '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(86, '13471154', NULL, 'Trung', '2022-11-21 22:09:29', NULL, '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(87, '15187611', NULL, 'Trung', '2022-11-21 22:15:18', NULL, '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_CONFIRMATION', NULL, NULL, 0),
(88, '15396251', NULL, 'Trung', '2022-11-23 09:48:54', '2022-12-21 08:02:52', '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'CONFIRMED', NULL, NULL, 0),
(89, '14678583', 'LLUL3U', 'Trung', '2022-11-23 09:52:53', '2022-11-23 23:39:59', '0961932630', 'Số 1', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'DELIVERED', 3, NULL, 0),
(90, '14250674', NULL, 'Trung', '2022-11-24 23:13:03', '2022-11-30 22:55:42', '0961932630', 'Số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'CONFIRMED', NULL, NULL, 0),
(91, '12940658', NULL, 'Trung', '2022-11-24 23:27:58', '2022-11-30 22:54:56', '0961932630', 'Số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'CONFIRMED', NULL, NULL, 0),
(93, '17557900', 'LLUGDH', 'Trung', '2022-11-29 21:23:25', '2022-11-29 21:27:09', '0961932630', 'Số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_THE_SHIPPER_TO_PICK_UP', 3, NULL, 0),
(94, '16936840', NULL, 'Trung', '2022-11-29 22:05:54', '2022-11-29 22:50:35', '0961932630', 'Số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE', 'OFFLINE', NULL, 'DELIVERING', 1, NULL, 0),
(95, '18734039', NULL, 'AAAAAAAAAAA', '2022-11-29 22:22:40', NULL, '0961932630', '', '', '', '', '', 'OFFLINE', 'OFFLINE', NULL, 'DELIVERED', 1, NULL, 0),
(96, '19809544', NULL, 'Trung', '2022-11-29 23:18:43', '2022-11-29 23:20:43', '0961932630', 'Số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'DELIVERED', 3, NULL, 0),
(99, '12884057', NULL, 'Trung', '2022-12-04 12:16:34', NULL, '0961932630', 'Số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, 0),
(100, '12041744', NULL, 'Trung', '2022-12-04 14:20:12', '2022-12-04 14:33:01', '0961932630', 'Số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'DELIVERED', 3, NULL, 0),
(101, '19843497', NULL, 'Trung', '2022-12-10 12:04:15', NULL, '0961932630', 'Số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'OFFLINE', 'OFFLINE', NULL, 'DELIVERED', 1, NULL, 0),
(102, '14346130', NULL, 'Trung', '2022-12-10 14:07:53', '2022-12-10 14:12:18', '0961932630', 'Số 123', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'DELIVERED', 3, NULL, 0),
(113, '16440333', 'LLU49Q', 'Trung Nguyễn Thành', '2022-12-15 21:42:28', '2022-12-23 14:47:06', '0961932630', 'Số 1 Lê Quang Đạo', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'VNPAY', NULL, 'CONFIRMED', 3, NULL, 1),
(114, '10720868', 'LLUBXE', 'Trung Nguyễn Thành', '2022-12-20 08:01:35', '2022-12-20 08:03:28', '0961932630', 'Số 1 Lê Quang Đạo', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Tây Mỗ', '', 'ONLINE_WEB', 'VNPAY', NULL, 'WAIT_FOR_THE_SHIPPER_TO_PICK_UP', 3, NULL, 1),
(115, '12607427', NULL, 'Trung Nguyễn Thành', '2022-12-20 08:05:35', '2022-12-20 08:07:05', '0961932630', 'Số 1 Lê Quang Đạo', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Trung Văn', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'DELIVERED', 3, NULL, 1),
(116, '12921360', 'LLU3VD', 'trung nguyễn', '2022-12-21 08:06:49', '2022-12-21 08:08:42', '0961932638', 'Số 123', 'Hà Nội', 'Huyện Phú Xuyên', 'Xã Nam Tiến', '', 'ONLINE', 'OFFLINE', NULL, 'DELIVERED', 1, NULL, 1),
(117, '19339931', NULL, 'Trung Nguyễn Thành', '2022-12-21 08:11:17', '2022-12-21 08:13:04', '0962987225', 'Số 1 Lê Quang Đạo', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Mễ Trì', '', 'ONLINE_WEB', 'VNPAY', NULL, 'DELIVERED', 3, NULL, 1),
(118, '10639449', NULL, 'nguyễn thanh trung', '2022-12-22 21:00:44', '2022-12-22 21:06:20', '0962987225', 'số 123', 'Hồ Chí Minh', 'Thành Phố Thủ Đức', 'Phường An Khánh', '', 'ONLINE_WEB', 'VNPAY', NULL, 'DELIVERED', 3, NULL, 1),
(119, '15555665', NULL, 'nguyễn thanh trung', '2022-12-23 14:39:44', '2022-12-23 14:49:09', '0962987225', 'số 123', 'Hồ Chí Minh', 'Thành Phố Thủ Đức', 'Phường An Khánh', '', 'ONLINE_WEB', 'VNPAY', NULL, 'DELIVERED', 3, NULL, 1),
(120, '16140412', NULL, 'Nguyễn Thành Trung', '2022-12-23 14:41:32', '2022-12-23 14:47:05', '0961932999', 'Số 123', 'Hà Nội', 'Huyện Ứng Hòa', 'Xã Viên Nội', '', 'ONLINE_WEB', 'OFFLINE', NULL, 'WAIT_FOR_THE_SHIPPER_TO_PICK_UP', NULL, NULL, NULL),
(121, '19610356', NULL, 'trung', '2022-12-23 14:54:55', NULL, '0961962333', 'Số 1', 'Hà Nội', 'Quận Cầu Giấy', 'Phường Yên Hoà', '', 'ONLINE', 'OFFLINE', NULL, 'CONFIRMED', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_detail_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_detail_id`, `quantity`, `price`, `status`) VALUES
(2, 1, 2, 3, 2, 839000, 1),
(3, 44, 1, 1, 1, 682000, 1),
(16, 41, 1, 1, 1, 682000, 1),
(17, 42, 1, 1, 1, 682000, 1),
(18, 43, 1, 1, 1, 682000, 1),
(19, 43, 2, 3, 2, 839000, 1),
(22, 46, 1, 8, 2, 682000, 1),
(24, 48, 1, 2, 2, 682000, 1),
(25, 49, 2, 3, 1, 839000, 1),
(27, 50, 24, 38, 1, 100000, 1),
(28, 50, 1, 1, 1, 682000, 1),
(29, 51, 24, 37, 3, 100000, 1),
(34, 54, 24, 38, 2, 100000, 1),
(35, 54, 1, 1, 1, 682000, 1),
(36, 55, 24, 38, 2, 100000, 1),
(37, 56, 24, 38, 2, 100000, 1),
(39, 58, 24, 38, 1, 100000, 1),
(50, 1, 15, 11, 1, 1200000, 1),
(51, 44, 2, 3, 1, 839000, 1),
(52, 56, 1, 1, 1, 682000, 1),
(54, 48, 15, 13, 1, 1200000, 1),
(55, 41, 24, 38, 1, 100000, 1),
(56, 59, 24, 38, 2, 100000, 1),
(57, 59, 1, 1, 2, 682000, 1),
(58, 60, 1, 1, 2, 682000, 1),
(59, 42, 2, 3, 1, 839000, 1),
(60, 43, 24, 38, 2, 100000, 1),
(61, 1, 24, 38, 2, 100000, 1),
(62, 60, 24, 38, 2, 100000, 1),
(63, 61, 1, 2, 1, 682000, 1),
(64, 62, 1, 1, 1, 682000, 1),
(65, 63, 1, 1, 1, 682000, 1),
(66, 64, 1, 1, 1, 682000, 1),
(67, 65, 1, 2, 2, 682000, 1),
(68, 65, 2, 4, 2, 839000, 1),
(69, 65, 3, 5, 2, 50000, 1),
(70, 69, 1, 8, 2, 682000, 1),
(72, 70, 2, 4, 2, 839000, 1),
(73, 70, 1, 1, 2, 682000, 1),
(83, 70, 15, 11, 1, 1200000, 1),
(85, 69, 15, 13, 1, 1200000, 1),
(89, 73, 15, 12, 1, 1200000, 1),
(90, 74, 15, 12, 1, 1200000, 1),
(91, 75, 1, 8, 1, 682000, 1),
(93, 77, 15, 12, 1, 1200000, 1),
(95, 79, 1, 1, 2, 682000, 1),
(96, 79, 1, 2, 1, 682000, 1),
(97, 80, 1, 1, 2, 682000, 1),
(98, 80, 1, 2, 1, 682000, 1),
(100, 82, 1, 1, 2, 682000, 1),
(101, 82, 2, 3, 1, 839000, 1),
(102, 83, 1, 2, 2, 682000, 1),
(103, 84, 2, 4, 1, 839000, 1),
(104, 86, 1, 1, 2, 682000, 1),
(105, 87, 1, 1, 2, 682000, 1),
(106, 88, 1, 1, 2, 682000, 1),
(107, 89, 2, 3, 2, 839000, 1),
(108, 89, 1, 1, 2, 682000, 1),
(109, 90, 1, 1, 2, 682000, 1),
(110, 90, 2, 3, 1, 839000, 1),
(111, 91, 1, 1, 1, 682000, 1),
(112, 91, 2, 3, 2, 839000, 1),
(114, 93, 2, 3, 1, 839000, 1),
(115, 93, 1, 1, 2, 682000, 1),
(116, 93, 15, 12, 1, 1200000, 1),
(117, 94, 1, 1, 2, 682000, 1),
(118, 94, 25, 40, 1, 500000, 1),
(119, 95, 1, 1, 2, 682000, 1),
(120, 95, 25, 40, 1, 500000, 1),
(121, 96, 1, 1, 2, 682000, 1),
(123, 99, 1, 1, 1, 682000, NULL),
(124, 99, 15, 12, 1, 1200000, NULL),
(125, 100, 1, 1, 2, 682000, NULL),
(126, 100, 2, 3, 2, 839000, NULL),
(127, 101, 1, 1, 2, 682000, NULL),
(128, 102, 1, 1, 2, 682000, NULL),
(129, 102, 3, 6, 2, 50000, NULL),
(141, 113, 3, 5, 2, 50000, NULL),
(142, 114, 1, 1, 3, 682000, NULL),
(143, 114, 3, 5, 3, 50000, NULL),
(144, 115, 1, 1, 2, 682000, NULL),
(145, 115, 3, 5, 2, 50000, NULL),
(146, 116, 1, 1, 3, 682000, NULL),
(147, 116, 3, 6, 2, 50000, NULL),
(148, 117, 1, 1, 1, 682000, NULL),
(149, 117, 3, 5, 2, 50000, NULL),
(150, 118, 1, 1, 1, 682000, 0),
(151, 118, 3, 5, 2, 50000, 0),
(152, 119, 39, 56, 2, 200000, NULL),
(153, 119, 39, 57, 2, 200000, NULL),
(154, 119, 39, 58, 2, 200000, NULL),
(155, 119, 1, 1, 1, 8200000, NULL),
(157, 120, 3, 5, 2, 700000, NULL),
(158, 121, 1, 1, 2, 8200000, NULL),
(159, 121, 4, 15, 2, 700000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `product_detail_id` int(11) NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`id`, `order_id`, `order_detail_id`, `product_detail_id`, `create_by`, `update_by`, `action`, `quantity`, `description`, `status`, `created_date`) VALUES
(10, 1, 2, 3, 1, 1, 'DOI', 1, NULL, 'DONE', NULL),
(11, 41, 55, 38, 1, NULL, 'DOI', 1, NULL, 'DONE', NULL),
(12, 41, 55, 38, 1, NULL, 'TRA', 1, NULL, 'DONE', NULL),
(14, 44, 3, 1, 1, NULL, 'DOI', 1, NULL, 'DONE', NULL),
(15, 70, 72, 4, NULL, 1, 'DOI', 1, NULL, 'DONE', NULL),
(18, 89, 108, 1, 3, NULL, 'DOI', 1, 'hàng lỗi', 'WAIT', NULL),
(19, 89, 107, 3, 3, NULL, 'TRA', 1, NULL, 'WAIT', NULL),
(22, 96, 121, 1, NULL, 1, 'DOI', 1, 'Hàng lỗi', 'DONE', NULL),
(25, 100, 126, 3, 3, NULL, 'DOI', 1, NULL, 'WAIT', '2022-12-04 14:33:35'),
(26, 100, 126, 3, 3, NULL, 'TRA', 1, NULL, 'WAIT', '2022-12-04 14:33:35'),
(27, 101, 127, 1, 1, NULL, 'DOI', 1, NULL, 'DONE', '2022-12-10 13:20:05'),
(28, 102, 128, 1, NULL, 1, 'DOI', 1, NULL, 'DONE', '2022-12-10 14:16:05'),
(29, 102, 128, 1, NULL, 1, 'TRA', 1, NULL, 'DONE', '2022-12-10 14:16:05'),
(30, 115, 144, 1, NULL, 1, 'TRA', 1, NULL, 'DONE', '2022-12-20 08:07:53'),
(32, 116, 147, 6, 1, NULL, 'DOI', 1, 'đổi trả', 'DONE', '2022-12-21 08:09:42'),
(33, 116, 146, 1, 1, NULL, 'TRA', 1, NULL, 'DONE', '2022-12-21 08:09:42'),
(34, 117, 148, 1, NULL, 1, 'DOI', 1, NULL, 'DONE', '2022-12-21 08:13:49'),
(35, 117, 149, 5, NULL, 1, 'TRA', 1, NULL, 'DONE', '2022-12-21 08:13:49'),
(48, 118, 150, 1, NULL, 1, 'TRA', 1, NULL, 'DONE', '2022-12-22 22:08:08'),
(49, 118, 151, 5, NULL, 1, 'DOI', 1, NULL, 'WAIT', '2022-12-22 22:08:08'),
(50, 119, 152, 56, 1, NULL, 'TRA', 2, NULL, 'DONE', '2022-12-23 14:53:08'),
(51, 119, 153, 57, 1, NULL, 'DOI', 1, NULL, 'DONE', '2022-12-23 14:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `origin`
--

CREATE TABLE `origin` (
  `id` int(11) NOT NULL,
  `origin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `origin`
--

INSERT INTO `origin` (`id`, `origin`) VALUES
(1, 'Việt Nam'),
(2, 'Trung Quốc'),
(3, 'Italy'),
(4, 'EU');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sex` varchar(25) NOT NULL,
  `created_date` datetime NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `weight_id` int(11) NOT NULL,
  `origin_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `price`, `image`, `sex`, `created_date`, `update_date`, `description`, `brand_id`, `category_id`, `weight_id`, `origin_id`, `status`, `create_by`, `update_by`) VALUES
(1, '17269865', 'Giày Thể Thao Biti’s Hunter Street White', 8200000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F86.3610440234057gia-y-sneaker-neon-light-3-snk-0040-mau-trang-photo__60536__1626077969-medium%402x.jpg?alt=media&token=b0d24c30-2c27-4000-8c67-1548b09ea857', 'UNISEX', '2022-10-02 14:49:31', '2022-12-23 10:58:02', 'Giày Thể Thao Biti’s Hunter Street White(Trắng) \n- Đế Eva cao su - nhẹ như bay - Độ nhẹ tối đa 300g/chiếc \n- Đàn hồi tốt mà vẫn chịu được mài mòn, chịu lực cao \n- Đế lót EVA Kháng khuẩn, hút ẩm tốt và êm ái. \n- Mũ quai si nubuck: Cao cấp, bóng mịn, êm nhờ cấu trúc chặt chẽ theo từng sợi của lớp si. \n- Lót quai thun cá sấu & vải tricot êm mềm\n- Có dây buộc \n- Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.\nĐiều kiện và thời gian bảo hành:\nThời gian hỗ trợ bảo hành kể từ ngày mua hàng: 3 tháng kể từ ngày mua hàng.\nĐiều kiện áp dụng:\nKhách hàng mua sản phẩm Biti’s sẽ được bảo hành miễn phí đối với các trường hợp sau: Hở keo, dứt chỉ, gãy móc khoá, bung hoạ tiết trang trí (nơ, nút, hoa, …)', 16, 3, 2, 1, 'AVAILABLE', 1, 1),
(2, '78269851', 'Sneaker Royal', 839000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F40.304614543015326giay-sneaker-vien-chi-noi-phoi-metallic-snk-0045-mau-trang-photodetail__62199__1641013897-medium.jpg?alt=media&token=6a64c20e-8420-4c48-919b-e4ebffc3175f', 'UNISEX', '2022-10-02 09:52:06', '2022-12-04 12:43:21', NULL, 3, 5, 2, 1, 'AVAILABLE', 1, 1),
(3, '17766985', 'Nike Air Force 1', 700000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F54.40965239537776nile2.webp?alt=media&token=b14b0af2-1fac-4e95-b921-e0b5cc406bec', 'UNISEX', '2022-10-03 23:24:22', '2022-12-23 11:09:29', '- Size: 36-43\n🖋Giày đầy đủ phụ kiện (hộp, giấy gói, giấy tờ, tất tặng kèm)  được đóng gói cẩn thận.\n🖋Chất liệu: da thật 100%, da nhăn mềm mại không bám bẩn rất dễ vệ sinh.\n🖋Đế: Đế đúc liền khối phần dưới có các đường họa tiết (chống trơn trượt) và in logo thương hiệu giày.\n🖋Form: Form dáng chuẩn 1:1 , được gia công tỉ mỉ tạo độ hài hòa giữa phần thân và phần đế\n🖋Giày hot trend, kiểu dáng đẹp sang chảnh dễ phối đồ có thể mang đi chơi, đi học dự tiệc , đi làm...', 8, 3, 1, 1, 'AVAILABLE', 1, 1),
(4, '17290985', 'Sneaker Nữ', 700000, 'https://cf.shopee.vn/file/a19f27be8b53896289ba4a5c16034be5', 'FEMALE', '2022-10-05 10:24:30', '2022-12-23 11:26:11', 'Giày Thể Thao Nữ cá tính\nGiày đầy đủ phụ kiện (hộp, giấy gói, giấy tờ, tất tặng kèm) được đóng gói cẩn thận. 🖋Chất liệu: da thật 100%, da nhăn mềm mại không bám bẩn rất dễ vệ sinh. 🖋Đế: Đế đúc liền khối phần dưới có các đường họa tiết (chống trơn trượt) và in logo thương hiệu giày. 🖋Form: Form dáng chuẩn 1:1 , được gia công tỉ mỉ tạo độ hài hòa giữa phần thân và phần đế 🖋Giày hot trend, kiểu dáng đẹp sang chảnh dễ phối đồ có thể mang đi chơi, đi học dự tiệc , đi làm...', 1, 3, 1, 1, 'AVAILABLE', 1, 1),
(5, '65467889', 'Jordan Dior', 1200000, 'https://www.talkbeauty.vn/public/assets/article_dir/2021/07/nike-air-jordan-1-mid-light-smoke-grey-6.jpg', 'UNISEX', '2022-10-05 10:25:04', '2022-12-23 11:37:51', 'Giày Jordan 1 Low White Metallic Gold là một biến thể Jordan 1 low mới, được thiết kế để Nike cho ra mắt trong những ngày thị trường sneaker đang rất nhộn nhịp. Được chế tác từ da lộn chất lượng cao, cùng màu Vàng Gold khiến những đôi AJ1 này mang lại cảm giác sang trọng ngay lập tức khi on feet. \nThiết kế cổ điển như những đôi \"Triple White\" thông thường cặp cũng với điểm nhấn là Nike Swooshes màu vàng kim loại chạy dọc mỗi bên và các chi tiết mang tính biểu tượng như toe box đục lỗ cũng xuất hiện. Logo Jumpman được thêu trên lưỡi gà, trong khi logo đôi cánh của Thương hiệu Jordan được đặc trưng ở gót giày.', 12, 3, 1, 1, 'AVAILABLE', 1, 1),
(6, '12354321', 'Giày Vans', 550000, 'https://minhphusport.com.vn/wp-content/uploads/2019/10/giay-the-thao-nam-525-1.jpg', 'UNISEX', '2022-10-05 10:25:27', '2022-12-23 11:48:44', 'Giày Jordan 1 Low White Metallic Gold là một biến thể Jordan 1 low mới, được thiết kế để Nike cho ra mắt trong những ngày thị trường sneaker đang rất nhộn nhịp. Được chế tác từ da lộn chất lượng cao, cùng màu Vàng Gold khiến những đôi AJ1 này mang lại cảm giác sang trọng ngay lập tức khi on feet. Thiết kế cổ điển như những đôi \"Triple White\" thông thường cặp cũng với điểm nhấn là Nike Swooshes màu vàng kim loại chạy dọc mỗi bên và các chi tiết mang tính biểu tượng như toe box đục lỗ cũng xuất hiện. Logo Jumpman được thêu trên lưỡi gà, trong khi logo đôi cánh của Thương hiệu Jordan được đặc trưng ở gót giày.', 2, 3, 2, 1, 'AVAILABLE', 1, 1),
(7, '78908654', 'Giày Alexander McQueen', 4000000, 'https://cf.shopee.vn/file/b739792b2d1d833fbd7f0a2ec6a692e4', 'UNISEX', '2022-10-05 10:25:46', '2022-12-23 11:59:38', 'Giày Alexander McQueenlà một biến thể mới, được thiết kế để Nike cho ra mắt trong những ngày thị trường sneaker đang rất nhộn nhịp. Được chế tác từ da lộn chất lượng cao, cùng màu Vàng Gold khiến những đôi AJ1 này mang lại cảm giác sang trọng ngay lập tức khi on feet. \nThiết kế cổ điển như những đôi \"Triple White\" thông thường cặp cũng với điểm nhấn là Nike Swooshes màu vàng kim loại chạy dọc mỗi bên và các chi tiết mang tính biểu tượng như toe box đục lỗ cũng xuất hiện. Logo Jumpman được thêu trên lưỡi gà, trong khi logo đôi cánh của Thương hiệu Jordan được đặc trưng ở gót giày.', 1, 3, 3, 2, 'AVAILABLE', 1, 1),
(8, '34567897', 'YZ 700', 600000, 'https://cf.shopee.vn/file/dedc06eaec040f0c4e59e2b6943b1ade', 'MALE', '2022-10-05 10:26:09', '2022-12-23 12:05:06', 'Giày Jordan 1 Low White Metallic Gold là một biến thể Jordan 1 low mới, được thiết kế để Nike cho ra mắt trong những ngày thị trường sneaker đang rất nhộn nhịp. Được chế tác từ da lộn chất lượng cao, cùng màu Vàng Gold khiến những đôi AJ1 này mang lại cảm giác sang trọng ngay lập tức khi on feet. \nThiết kế cổ điển như những đôi \"Triple White\" thông thường cặp cũng với điểm nhấn là Nike Swooshes màu vàng kim loại chạy dọc mỗi bên và các chi tiết mang tính biểu tượng như toe box đục lỗ cũng xuất hiện. Logo Jumpman được thêu trên lưỡi gà, trong khi logo đôi cánh của Thương hiệu Jordan được đặc trưng ở gót giày.', 1, 3, 2, 1, 'AVAILABLE', 1, 1),
(9, '89087654', 'Sneaker cổ cao', 650000, 'https://cf.shopee.vn/file/56bbdc72ba925a331d2448b81a6fe2df', 'FEMALE', '2022-10-05 10:26:25', '2022-12-23 12:18:40', 'Giày Thể Thao Nữ Cao Cấp Phối Lưới Thoáng Khí Đế Nhựa Trong 2 Màu Trắng Hồng\n👉 Hàng Sẵn Kho, Mẫu mới hot hit\nĐộ lạ, rất hiếm đụng hàng các shop trên thị trường \nPhong cách tạo trẻ trung và sang trọng cho phái nữ \nSản phẩm sử dụng đa dạng kết hợp dùng đi chơi, đi làm, dùng cho các chị em, các mẹ, các bé, đồ đôi mẹ & bé, tuổi teen, đồ đồng phục, .... vv \n👉 Chiều cao gót: cao gót 5cm\nChất liệu đế: nhựa dẻo cao cấp \nMũi da lì phối thân nhựa dẻo cao cấp, chất dù dai phối lưới thoáng khí họa tiết đính đá long lanh tạo nên sự sang trọng đẳng cấp mà lại phong cách trẻ.\nSử dụng quanh năm \nChất liệu bên trong: Lót đệm phối lưới mềm mại rất êm chân', 1, 3, 2, 1, 'AVAILABLE', 1, 1),
(10, '78643215', 'Nike AF1', 1000000, 'https://cf.shopee.vn/file/sg-11134201-22100-avry65c0yhiv74_tn', 'FEMALE', '2022-10-05 10:26:47', '2022-12-23 13:37:05', 'Nike AF1', 3, 3, 3, 2, 'AVAILABLE', 1, 1),
(11, '86643678', 'Sneaker Jordan', 400000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F14.0215716893232998.png?alt=media&token=293d2302-8ee0-48e6-9b3e-cdc3af6fbea8', 'UNISEX', '2022-10-05 10:27:04', '2022-12-23 13:31:31', 'Sneaker Jordan', 1, 3, 1, 4, 'AVAILABLE', 1, 1),
(13, '74567364', 'MC Quen Auth', 650000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F65.19514416736976mc3.jfif?alt=media&token=390ca199-68a4-4219-9d51-dc752bce552b', 'UNISEX', '2022-10-05 23:44:32', '2022-12-23 13:33:02', 'MC Quen Auth', 1, 3, 3, 3, 'AVAILABLE', 1, 1),
(14, '85746274', 'Giày Sandal', 750000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F23.768431800696256sd3.jfif?alt=media&token=9b989ccc-872a-4e1e-b529-2ad510a93c2f', 'FEMALE', '2022-10-05 23:50:02', '2022-12-23 13:34:57', 'Sandal 2023', 12, 5, 3, 1, 'AVAILABLE', 1, 1),
(15, '84645487', 'Giày cao gót đế xuồng', 1200000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F29.941494849616102fpt1.png?alt=media&token=5ee07cf5-d1de-4dbb-a602-e4d6a48760da', 'FEMALE', '2022-10-05 23:54:23', '2022-12-23 13:20:43', 'fptpolytechic', 12, 4, 2, 2, 'AVAILABLE', 1, 1),
(24, '45276478', 'Giày thể thao', 100000, '', 'UNISEX', '2022-10-09 11:29:57', NULL, '', 1, 3, 1, 1, 'AVAILABLE', 1, NULL),
(25, '56747678', 'giày abcc', 500000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F27.174622334447875cnv_red.webp?alt=media&token=2f45a3d0-8a4a-4f0d-86be-73d294d19cde', 'FEMALE', '2022-11-01 14:34:08', '2022-11-01 14:59:08', 'đây là mô tả', 3, 3, 2, 1, 'AVAILABLE', 1, 1),
(26, '67845689', 'Nike', 500000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F43.7205567363538download1.jpg?alt=media&token=0c814c2f-5dc2-4b9b-98f3-e0348f12b2d6', 'UNISEX', '2022-12-10 14:28:18', '2022-12-10 15:29:38', 'Sản phẩm tốt', 8, 3, 2, 1, 'AVAILABLE', 1, 1),
(27, '54765878', 'Nike123', 100000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F68.0319414690762download2.jpg?alt=media&token=4e73fe36-d111-4396-b707-c778321900e0', 'UNISEX', '2022-12-10 15:09:29', NULL, '', 8, 3, 1, 1, 'AVAILABLE', 1, NULL),
(32, '65786598', 'dfdsfdfd', 1000000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F48.87330591988999dsc00030-copy__66121__1665563330-medium%402x.jpg?alt=media&token=5aba403d-709d-41d3-b4a1-9ab7ed760162', 'FEMALE', '2022-12-14 21:20:03', NULL, 'mô tả sản phẩm', 1, 3, 1, 1, 'AVAILABLE', 1, NULL),
(33, '34567654', 'Boot', 1000000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F66.51888577439959nike1.webp?alt=media&token=7176d4be-4833-424a-a04e-e4839811f09f', 'FEMALE', '2022-12-14 21:25:08', '2022-12-23 13:39:51', 'Mô tả sản phẩm', 1, 4, 1, 3, 'AVAILABLE', 1, 1),
(34, '14828495', 'test', 200000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F2.849347919245071bot-0922-blk--1-__66086__1665400633-medium.jpg?alt=media&token=cd8686df-2d8b-4ebf-ae39-9466a20074a8', 'FEMALE', '2022-12-20 07:56:01', NULL, 'Mô tả sản phẩm', 10, 3, 1, 3, 'AVAILABLE', 1, NULL),
(35, '17269851', 'test 12345', 200000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F89.549616346197821.jpeg?alt=media&token=da2460af-6326-461c-8964-0877c7c0d27d', 'MALE', '2022-12-20 07:57:51', '2022-12-23 13:41:03', 'Mô tả sản phẩm', 11, 3, 1, 3, 'AVAILABLE', 1, 1),
(36, '15215507', 'Boot', 200000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F19.45878611505014mc1.jfif?alt=media&token=379c7cc2-b1f5-4395-bc51-ec07b02abff1', 'FEMALE', '2022-12-21 08:04:02', '2022-12-23 13:41:21', 'Mô tả sản phẩm', 1, 3, 1, 3, 'AVAILABLE', 1, 1),
(39, '11702634', 'hangnt', 200000, 'https://firebasestorage.googleapis.com/v0/b/datn-d68cb.appspot.com/o/images%2F45.18803936657565gia-y-sneaker-neon-light-3-snk-0040-mau-trang-photo__60536__1626077969-medium%402x.jpg?alt=media&token=29e117b5-51d6-460d-b7be-049bb7a85d39', 'FEMALE', '2022-12-23 14:31:24', '2022-12-23 15:01:53', 'Mô tả', 18, 3, 2, 3, 'UNAVAILABLE', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `height_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `size_id`, `color_id`, `height_id`, `material_id`, `quantity`) VALUES
(1, 1, 2, 1, 3, 2, 14),
(2, 1, 3, 1, 4, 2, 20),
(3, 2, 3, 4, 4, 1, 0),
(4, 2, 4, 4, 4, 1, 7),
(5, 3, 2, 2, 4, 2, 11),
(6, 3, 1, 2, 5, 3, 21),
(8, 1, 3, 3, 4, 2, 10),
(11, 15, 3, 2, 5, 1, 10),
(12, 15, 1, 6, 5, 1, 9),
(13, 15, 2, 2, 1, 3, 9),
(15, 4, 3, 4, 4, 2, 10),
(36, 1, 2, 2, 3, 2, 20),
(37, 24, 2, 1, 4, 2, 0),
(38, 24, 3, 3, 4, 2, 22),
(39, 25, 3, 7, 3, 2, 21),
(40, 25, 2, 7, 3, 2, 18),
(41, 26, 3, 8, 4, 6, 15),
(42, 35, 2, 3, 4, 3, 20),
(43, 35, 3, 2, 3, 4, 15),
(44, 36, 3, 2, 5, 2, 15),
(45, 36, 3, 4, 6, 2, 20),
(47, 4, 2, 3, 5, 2, 3),
(48, 6, 3, 2, 4, 1, 22),
(49, 5, 4, 2, 4, 1, 33),
(50, 7, 3, 1, 6, 3, 12),
(51, 8, 2, 1, 4, 2, 22),
(52, 11, 4, 6, 7, 1, 12),
(53, 13, 5, 6, 6, 2, 23),
(54, 14, 2, 4, 5, 1, 12),
(55, 10, 6, 7, 8, 5, 78),
(56, 39, 3, 2, 4, 3, 32),
(57, 39, 4, 3, 4, 3, 30),
(58, 39, 5, 6, 6, 3, 99);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `begin_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_blacklist`
--

CREATE TABLE `promotion_blacklist` (
  `id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_categories`
--

CREATE TABLE `promotion_categories` (
  `id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `owner_name`, `address`, `province`, `district`, `ward`, `tel`, `email`, `password_email`) VALUES
(1, 'Nguyễn Thành Trung', 'Số 1, Lê Quang Đạo', 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Phú Đô', '0961932630', 'laclacshop.info@gmail.com', 'zsodopqtkmuborwz');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`) VALUES
(1, '35'),
(2, '36'),
(3, '37'),
(4, '38'),
(5, '39'),
(6, '40'),
(7, '41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `province_id` varchar(255) NOT NULL,
  `ward_code` varchar(255) DEFAULT NULL,
  `district_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `email`, `password`, `phone`, `address`, `status`, `avatar`, `province`, `district`, `ward`, `province_id`, `ward_code`, `district_id`) VALUES
(1, 'trungnt', 'Nguyễn Thành Trung', 'trungntph15556@fpt.edu.vn', '$2a$10$ZKnu4mb9erOxn3LJBg4lkODL8POItZQFHf.5TLu2h5y/KJhZjln4q', '0123456789', 'Hà Nội', 'ACTIVE', NULL, 'Hà Nội', 'Quận Nam Từ Liêm', 'Phường Xuân Phương', '201', '13010', '3440'),
(2, 'phuongbb', 'Bùi Bích Phương', 'bbphuong20022@gmail.com', '$2a$12$Jxa.32bExx8hXWRpi4hte.0cA2cF4Cj1.oM4IdObxmKkpIiojoGHG', '0393883934', 'Hà Nội', 'BLOCKED', NULL, '', '', '', '', NULL, NULL),
(3, 'trungnt2', 'nguyễn thanh trung', 'trung11042001@gmail.com', '$2a$10$L9so50cGDMrWi21CmPhtoes5PyEp7BsOPJD7yDnD7xx7C4/PJ6qpe', '0962987225', 'số 123', 'BLOCKED', NULL, 'Hồ Chí Minh', 'Thành Phố Thủ Đức', 'Phường An Khánh', '202', '90768', '3695');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code_voucher` varchar(255) NOT NULL,
  `min_money` int(11) NOT NULL,
  `begin_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `promotion` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_by` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `name`, `code_voucher`, `min_money`, `begin_date`, `end_date`, `promotion`, `quantity`, `create_by`, `update_by`, `status`, `is_delete`) VALUES
(1, '', 'F3CFY01CA', 50000, '2022-11-10 00:00:00', '2022-11-15 00:00:00', 10000, 20, 1, NULL, 'AVAILABLE', 0),
(2, '', 'YFGI0S012', 50000, '2022-11-10 00:00:00', '2022-11-16 00:00:00', 20000, 20, 1, 1, 'AVAILABLE', 1),
(3, '', 'Q26DHHZVR', 500000, '2022-12-20 00:00:00', '2022-12-22 00:00:00', 100000, 20, 1, 1, 'AVAILABLE', 0),
(4, 'khuyến mãi', 'K7KPQKG18', 500000, '2022-12-21 00:00:00', '2022-12-31 00:00:00', 200000, 20, 1, 1, 'AVAILABLE', 0),
(5, 'Khuyến mãi 1', 'G5YI3A528', 500000, '2022-12-22 00:00:00', '2022-12-31 00:00:00', 20000, 20, 1, NULL, 'AVAILABLE', 0),
(6, 'test', 'KXFVBXBWV', 11111, '2022-12-22 00:00:00', '2022-12-23 00:00:00', 11111, 11, 1, 1, 'UNAVAILABLE', 1),
(7, 'fpoly1', '60DONQKHY', 500000, '2022-12-23 00:00:00', '2022-12-20 00:00:00', 20000, 10, 1, 1, 'UNAVAILABLE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `weight`
--

CREATE TABLE `weight` (
  `id` int(11) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weight`
--

INSERT INTO `weight` (`id`, `weight`) VALUES
(1, 100),
(2, 200),
(3, 300),
(4, 400),
(5, 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_category`
--
ALTER TABLE `brand_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `height`
--
ALTER TABLE `height`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `code_ghn` (`code_ghn`),
  ADD KEY `phone` (`phone`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_id_2` (`order_id`),
  ADD KEY `order_detail_id` (`order_detail_id`),
  ADD KEY `order_detail_id_2` (`order_detail_id`);

--
-- Indexes for table `origin`
--
ALTER TABLE `origin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_blacklist`
--
ALTER TABLE `promotion_blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_categories`
--
ALTER TABLE `promotion_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weight`
--
ALTER TABLE `weight`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `brand_category`
--
ALTER TABLE `brand_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `height`
--
ALTER TABLE `height`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `origin`
--
ALTER TABLE `origin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion_blacklist`
--
ALTER TABLE `promotion_blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion_categories`
--
ALTER TABLE `promotion_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `weight`
--
ALTER TABLE `weight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

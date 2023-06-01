

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `khothietbidientu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(4, 'Màu sắc', 1),
(8, 'Dung tích', 1),
(9, 'RAM', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(14, 'Xanh', 4),
(15, 'Đỏ', 4),
(16, 'Đen', 4),
(17, 'Trắng', 4),
(18, 'Xám', 4),
(19, '<300L', 8),
(20, '>300L', 8),
(21, '>500L', 8),
(22, '16GB', 9),
(23, '8GB', 9),
(24, '32GB', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(4, 'Apple', 1),
(5, 'Samsung', 1),
(6, 'Toshiba', 1),
(7, 'Dell', 1),
(8, 'Hp', 1),
(9, 'Kangaroo', 1),
(10, 'Cookoo', 1),
(11, 'Điện cơ', 1),
(12, 'Sony', 1),
(13, 'Asus', 1),
(14, 'Acer', 1),
(15, 'Citizen', 1),
(16, 'Titan', 1),
(17, 'Xiaomi', 1),
(18, 'Lenovo', 1),
(19, 'MSI', 1),
(20, 'LG', 1),
(21, 'China', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(4, 'Tivi', 1),
(5, 'Tủ lạnh', 1),
(7, 'Quạt', 1),
(8, 'Laptop', 1),
(9, 'Điều hòa', 1),
(10, 'Quạt hơi nước', 1),
(11, 'Màn hình máy tính', 1),
(12, 'Bếp từ', 1),
(13, 'Tai nghe', 1),
(14, 'Loa', 1),
(15, 'Đồng hồ', 1),
(16, 'Điện thoại', 1),
(17, 'Máy sấy', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Thái An', '13', '10', 'Hà Nội', '758676851', 'Việt Nam', 'Quản lí kho hàng Thái An', 'VND');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(4, 'admin', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(5, 'nhân viên', 'a:26:{i:0;s:10:\"updateUser\";i:1;s:8:\"viewUser\";i:2;s:9:\"viewGroup\";i:3;s:11:\"createBrand\";i:4;s:11:\"updateBrand\";i:5;s:9:\"viewBrand\";i:6;s:11:\"deleteBrand\";i:7;s:14:\"createCategory\";i:8;s:14:\"updateCategory\";i:9;s:12:\"viewCategory\";i:10;s:14:\"deleteCategory\";i:11;s:9:\"viewStore\";i:12;s:15:\"createAttribute\";i:13;s:15:\"updateAttribute\";i:14;s:13:\"viewAttribute\";i:15;s:15:\"deleteAttribute\";i:16;s:13:\"createProduct\";i:17;s:13:\"updateProduct\";i:18;s:11:\"viewProduct\";i:19;s:13:\"deleteProduct\";i:20;s:11:\"createOrder\";i:21;s:11:\"updateOrder\";i:22;s:9:\"viewOrder\";i:23;s:11:\"deleteOrder\";i:24;s:11:\"viewReports\";i:25;s:11:\"viewProfile\";}'),
(6, 'khách hàng', 'a:6:{i:0;s:9:\"viewBrand\";i:1;s:12:\"viewCategory\";i:2;s:9:\"viewStore\";i:3;s:13:\"viewAttribute\";i:4;s:11:\"viewProduct\";i:5;s:11:\"viewProfile\";}'),
(7, 'Tạo', 'a:8:{i:0;s:10:\"createUser\";i:1;s:11:\"createGroup\";i:2;s:11:\"createBrand\";i:3;s:14:\"createCategory\";i:4;s:11:\"createStore\";i:5;s:15:\"createAttribute\";i:6;s:13:\"createProduct\";i:7;s:11:\"createOrder\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(9, 'BILPR-E13A', 'An', 'Hà Nội', '09794949', '1684030913', '62500000.00', '13', '8125000.00', '10', '6250000.00', '76875000.00', '', 1, 1),
(11, 'BILPR-5D6F', 'Nguyễn B', 'Kiên Giang', '09494494949', '1684398453', '173820000.00', '13', '22596600.00', '10', '17382000.00', '203798600.00', '10000000', 1, 1),
(12, 'BILPR-76F6', 'Nguyễn Văn C', 'Ninh Bình', '09494449', '1684489505', '117700000.00', '13', '15301000.00', '10', '11770000.00', '142771000.00', '2000000', 2, 1),
(13, 'BILPR-9CB4', 'Nguyễn Văn D', 'Cao Bằng', '04949441', '1684489588', '127060000.00', '13', '16517800.00', '10', '12706000.00', '155283800.00', '1000000', 2, 1),
(14, 'BILPR-ABA1', 'Nguyễn Văn E', 'Hà Nội', '09431944994', '1652953658', '113960000.00', '13', '14814800.00', '10', '11396000.00', '139670800.00', '500000', 1, 1),
(15, 'BILPR-8834', 'Nguyễn Văn Hùng', 'Hà Nội', '0944794494', '1679219388', '21880000.00', '13', '2844400.00', '10', '2188000.00', '26912400.00', '', 1, 1),
(16, 'BILPR-56C6', 'Nguyễn Văn Thanh', 'Lạng Sơn', '0942319449', '1674122135', '108170000.00', '13', '14062100.00', '10', '10817000.00', '133049100.00', '', 1, 1),
(17, 'BILPR-EBA4', 'Tú', 'Hải Dương', '044994494994', '1676800626', '92220000.00', '13', '11988600.00', '10', '9222000.00', '113430600.00', '', 1, 1),
(18, 'BILPR-90D6', 'Hoàng', 'Hải Phòng', '119090999', '1681898265', '85130000.00', '13', '11066900.00', '10', '8513000.00', '104709900.00', '', 1, 1),
(19, 'BILPR-4933', 'Vương A', 'Hà Nội', '099949449', '1650362308', '96500000.00', '13', '12545000.00', '10', '9650000.00', '118695000.00', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(20, 9, 3, '1', '62500000', '62500000.00'),
(29, 11, 19, '3', '3690000', '11070000.00'),
(30, 11, 13, '4', '16500000', '66000000.00'),
(31, 11, 14, '1', '19300000', '19300000.00'),
(32, 11, 6, '5', '15490000', '77450000.00'),
(33, 12, 19, '3', '3690000', '11070000.00'),
(34, 12, 17, '5', '3890000', '19450000.00'),
(35, 12, 14, '2', '19300000', '38600000.00'),
(36, 12, 7, '2', '24290000', '48580000.00'),
(37, 13, 18, '2', '2840000', '5680000.00'),
(38, 13, 16, '2', '2690000', '5380000.00'),
(39, 13, 5, '2', '58000000', '116000000.00'),
(49, 14, 19, '2', '3690000', '7380000.00'),
(50, 14, 5, '1', '58000000', '58000000.00'),
(51, 14, 7, '2', '24290000', '48580000.00'),
(55, 15, 16, '1', '2690000', '2690000.00'),
(56, 15, 16, '1', '2690000', '2690000.00'),
(57, 15, 13, '1', '16500000', '16500000.00'),
(61, 16, 17, '2', '3890000', '7780000.00'),
(62, 16, 17, '4', '3890000', '3890000.00'),
(63, 16, 14, '5', '19300000', '96500000.00'),
(87, 18, 18, '1', '2840000', '2840000.00'),
(88, 18, 5, '1', '58000000', '58000000.00'),
(89, 18, 7, '1', '24290000', '24290000.00'),
(90, 17, 19, '1', '3690000', '3690000.00'),
(91, 17, 18, '1', '2840000', '2840000.00'),
(92, 17, 17, '1', '3890000', '3890000.00'),
(93, 17, 14, '1', '19300000', '19300000.00'),
(94, 17, 3, '1', '62500000', '62500000.00'),
(95, 19, 14, '5', '19300000', '96500000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text DEFAULT NULL,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(3, 'Tủ lạnh Samsung Family Hub', 'tulanhsamsung', '62500000', '49', 'assets/images/product_image/6464425f07537.jpg', '<p>Tủ lạnh Samsung</p>', '[\"16\"]', '[\"5\"]', '[\"5\"]', 5, 1),
(5, 'Tủ lạnh Panasonic 550L', 'tulanhpana', '58000000', '49', 'assets/images/product_image/645ef0ec035dc.jpg', '', '[\"16\"]', '[\"4\"]', '[\"4\",\"5\"]', 7, 1),
(6, 'Acer Aspire 7 Gaming A715 42G R05G R5 5500U', 'laptopacer', '15490000', '50', 'assets/images/product_image/645ef77d2b779.jpg', '', '[\"16\",\"22\",\"24\"]', '[\"14\"]', '[\"8\"]', 5, 1),
(7, 'Laptop HP Victus gaming 15', 'laptophp', '24290000', '49', 'assets/images/product_image/645ef76095805.jpg', '', '[\"14\",\"22\",\"23\",\"24\"]', '[\"8\"]', '[\"8\"]', 5, 1),
(8, 'Lenovo Ideapad Gaming 3 15IHU6 i5 11320H', 'laptoplenovo', '15990000', '50', 'assets/images/product_image/645ef7e0e469d.jpg', '', '[\"16\",\"22\",\"24\"]', '[\"18\"]', '[\"8\"]', 5, 1),
(9, 'Lenovo Ideapad Gaming 3 15IAH7 i5 12500H', 'laptoplenovo', '18990000', '50', 'assets/images/product_image/645ef89536c78.jpg', '', '[\"17\",\"22\",\"23\"]', '[\"18\"]', '[\"8\"]', 6, 1),
(10, 'Asus Gaming ROG Strix G15 G513IH R7 4800H', 'HN015W', '18290000', '50', 'assets/images/product_image/645ef9642f178.jpg', '', '[\"16\",\"22\",\"24\"]', '[\"13\"]', '[\"8\"]', 7, 1),
(11, 'Đồng hồ Citizen Bi5093', 'HNW016', '5000000', '50', 'assets/images/product_image/645f9ae147475.jpg', '', '[\"14\"]', '[\"15\"]', '[\"15\"]', 5, 1),
(12, 'Đồng hồ Titan 2570 nữ', 'dhtitan', '15300000', '50', 'assets/images/product_image/6464eb4d74ed3.jpg', '', '[\"14\"]', '[\"16\"]', '[\"15\"]', 5, 1),
(13, 'Đồng hồ Titan 2579 nữ', 'dhtitan', '16500000', '50', 'assets/images/product_image/6464eb889122b.jpg', '', '[\"17\"]', '[\"16\"]', '[\"15\"]', 5, 1),
(14, 'Đồng hồ Titan 2565', 'dhtitan', '19300000', '39', 'assets/images/product_image/6464ec0320f09.jpg', '', '[\"14\",\"17\"]', '[\"16\"]', '[\"15\"]', 7, 1),
(16, 'Asus VZ24EHE-R 23.8 inch FHD', 'HNW022', '2690000', '50', 'assets/images/product_image/6464ecc522f71.jpg', '', '[\"16\"]', '[\"13\"]', '[\"11\"]', 5, 1),
(17, 'Asus TUF Gaming VG249Q1A 23.8 inch FHD', 'HNW023', '3890000', '43', 'assets/images/product_image/6464ed17c7f8b.jpg', '', '[\"16\"]', '[\"13\"]', '[\"11\"]', 5, 1),
(18, 'MSI Pro MP243 23.8 inch FHD', 'HNW024', '2840000', '48', 'assets/images/product_image/6464ed5e8e4ba.jpg', '', '[\"16\"]', '[\"19\"]', '[\"11\"]', 5, 1),
(19, 'LG Gaming UltraGear 24GQ50F-B.ATVQ 23.8 inch FHD', 'HNW026', '3690000', '49', 'assets/images/product_image/6464ee7690126.jpg', '', '[\"16\"]', '[\"20\"]', '[\"11\"]', 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(5, 'Nhà cung cấp 1', 1),
(6, 'Nhà cung cấp 2', 1),
(7, 'Nhà cung cấp 3', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'admin', '$2y$10$AoHjTrMJBprIGSGyL3N9XeWsUb004UcS9n.8SmgQIgbtqC3dIs8f.', 'admin@admin.com', 'Vuong', 'An', '80789998', 1),
(6, 'admin1', '$2y$10$LGikxeDy3V9t0eaYaOxroec9ZmeldgQPqjgdtJ/prlc6ORmoXCYNm', 'admin@gmail.com', 'an', 'vuong', '0943167549', 1),
(7, 'khachhang', '$2y$10$7SlddFXUjPxJf65F.FijrOaGD5B0NgJVQjeHjlDno0rlqKAD1UqL2', 'khachhang@gmail.com', 'khach', 'hang', '097977979', 1),
(8, 'nhanvien', '$2y$10$X1vAYztTdQJXAtlxd.E9lunIe019EMGmUMDc..J50YBDI4lLWdKTW', 'nhanvien@gmail.com', 'nhan', 'vien', '04949416116', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 4),
(8, 7, 6),
(9, 8, 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_charge_rate` (`service_charge_rate`),
  ADD KEY `vat_charge_rate` (`vat_charge_rate`);

--
-- Chỉ mục cho bảng `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`(1024)),
  ADD KEY `category_id` (`category_id`(1024)),
  ADD KEY `store_id` (`store_id`);

--
-- Chỉ mục cho bảng `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2020 at 01:56 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `website1`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `ten`, `mota`, `noidung`, `type`, `tenkhongdau`, `img`) VALUES
(1, 'logo', '', '', 'logo', '', 'img/logo.png'),
(2, 'giohang', '', '', 'giohang', '', 'img/top_icon_cart.png'),
(3, 'icon', '', '', 'icon', '', 'img/top_icon_coupon.png'),
(4, 'sự kiện', '', '', 'su-kien', '', 'img/top_icon_event.png'),
(5, 'đơn hàng', '', '', 'don-hang', '', 'img/top_icon_truck.png'),
(6, 'sản phẩm yêu thích', '', '', 'san-pham-yeu-thich', '', 'img/top_icon_wish.png'),
(7, 'slider', '', '', 'slider', '', 'img/900x350.jpg'),
(8, 'slider', '', '', 'slider', '', 'img/binh-giu-nhiet-colorful-banner.jpg'),
(9, 'thông tin công ty\r\n', '', '<h1 style="margin: -6px 0px 0px; padding: 0px; border: 0px; background: rgb(247, 247, 247); font-family: Roboto, verdana, arial, &quot;맑은 고딕&quot;, MalgunGothic, 돋움, Dotum, 굴림, gulim, Helvetica, &quot;Apple SD Gothic Neo&quot;, sans-serif; font-size: 24px; color: rgb(34, 34, 34);">Chăm sóc khách hàng</h1>  <p class="mainService_lSide_num" style="margin: 0px; padding: 0px; border: 0px; background: rgb(247, 247, 247); font-family: Roboto, verdana, arial, &quot;맑은 고딕&quot;, MalgunGothic, 돋움, Dotum, Helvetica, &quot;Apple SD Gothic Neo&quot;, sans-serif; font-size: 24px; color: rgb(0, 104, 183);">028-5413 5756 (488)</p>  <p class="p_fax_1" style="margin: 0px; padding: 0px; border: 0px; background: rgb(247, 247, 247); font-family: Roboto, verdana, arial, &quot;맑은 고딕&quot;, MalgunGothic, 돋움, Dotum, Helvetica, &quot;Apple SD Gothic Neo&quot;, sans-serif; font-size: 18px; color: rgb(102, 102, 102);">Email : thubui@locknlock.com</p>  <ul class="mainService_lSide_work" style="margin: 0px; padding-right: 0px; padding-left: 0px; border: 0px; list-style: none; background: rgb(247, 247, 247); font-family: Roboto, verdana, arial, &quot;맑은 고딕&quot;, MalgunGothic, 돋움, Dotum, Helvetica, &quot;Apple SD Gothic Neo&quot;, sans-serif; font-size: 12px; color: rgb(102, 102, 102);"> 	<li style="margin: 0px; padding: 5px 0px 0px; border: 0px; vertical-align: middle; list-style: none; line-height: 17px; background: transparent;">Các ngày trong tuần</li> 	<li style="margin: 0px; padding: 5px 0px 0px; border: 0px; vertical-align: middle; list-style: none; line-height: 17px; background: transparent;">(Thứ Hai ~ Thứ Sáu) 09:00 ~ 18:00</li> 	<li style="margin: 0px; padding: 5px 0px 0px; border: 0px; vertical-align: middle; list-style: none; line-height: 17px; background: transparent;">Thứ bảy, chủ nhật và ngày lễ</li> </ul>', 'thong-tin', '', 'img/mainService_lSide_banner02.jpg'),
(10, 'Mạng Xã Hội >', '', '', 'mxh', '', 'img/mainService_rSide_middle.jpg'),
(11, 'CBHQ -BÌNH ĐỰNG NƯỚC LOCKLOCK BẰNG NHỰA PET HAP654', '', '', 'notice', '', ''),
(12, 'tin tức', '', '', 'bg-tintuc', '', 'img/untitled_1.png'),
(13, 'cart', '', '', 'bg-cart', '', 'img/20170101_1.png');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` float NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `noibat` int(11) NOT NULL,
  `khuyenmai` int(11) NOT NULL,
  `banchay` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `tenkhongdau` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `code`, `ten`, `gia`, `mota`, `noidung`, `noibat`, `khuyenmai`, `banchay`, `id_list`, `id_cat`, `id_item`, `tenkhongdau`, `img`) VALUES
(1, 0, 'Bình nhựa đựng nước Lock& Lock dung tích 520 ml', 198000, '', '', 0, 1, 0, 1, 0, 0, '', 'img/201817039046792.jpg'),
(2, 0, 'Bình nước nhựa Lock&Lock 430ml', 260000, '', '', 0, 1, 0, 1, 0, 0, '', 'img/201817036880419.jpg'),
(3, 0, 'Bình đựng nước Lock&Lock Eco Water Bottle 550ml', 146000, '', '', 0, 1, 0, 1, 0, 0, '', 'img/201817034804743.jpg'),
(4, 0, 'Bình lắc SHAKE IT L&L, 600ml - Màu xanh dương', 230000, '', '', 0, 1, 0, 1, 0, 0, '', 'img/201834653628044.JPG'),
(5, 0, 'Bình Đựng Nước Lock&Lock Ice Bottle HLC568 (550ml)', 95000, '', '', 0, 1, 0, 1, 0, 0, '', 'img/201817041087790.jpg'),
(6, 0, 'Bình lắc SHAKE IT L&L, 600ml - Màu hồng', 230000, '', '', 0, 1, 0, 1, 0, 0, '', 'img/201834656686569.JPG'),
(7, 0, 'Chảo sâu lòng Cookplus Hard&Light 32cm, W/Coating inside Okitsumo (Sử dụng bếp từ)', 660000, '', '', 0, 1, 0, 1, 0, 0, '', 'img/201825359631443.jpg'),
(8, 0, 'Chảo Cookplus Hard&Light 28cm, W/Coating inside Okitsumo (Có thể sử dụng bếp từ)', 520000, '', '', 0, 1, 0, 2, 0, 0, '', 'img/201825359631506.jpg'),
(9, 0, 'Chảo sâu lòng Cookplus Hard&Light 26cm,W/Coating inside Okitsumo (Sử dụng bếp từ)', 500000, '', '', 0, 1, 0, 2, 0, 0, '', 'img/201825359631772.jpg'),
(10, 0, 'Chảo sâu lòng Cookplus Hard&Light 30cm,W/Coating inside Okitsumo (Sử dụng bếp từ)', 590000, '', '', 0, 1, 0, 2, 0, 0, '', 'img/201825359631044.jpg'),
(11, 0, 'Chảo Cookplus Hard&Light 30cm, W/Coating inside Okitsumo (Có thể sử dụng bếp từ)', 550000, '', '', 0, 1, 0, 2, 0, 0, '', 'img/201825359631992.jpg'),
(12, 0, 'Chảo sâu lòng Cookplus Hard&Light 28cm, W/Coating inside Okitsumo (Sử dụng bếp từ)', 560000, '', '', 0, 1, 0, 2, 0, 0, '', 'img/201825359631114.jpg'),
(13, 0, 'Nồi chiên không dầu thương hiệu LOCK&LOCK, 220-240V, 1500W, 4L - Màu trắng (EJF376WHT)', 4500000, '', '', 0, 1, 0, 2, 0, 0, '', 'img/201835438430430.JPG'),
(14, 0, 'Nồi cơm điện thương hiệu Lock&Lock 220V, 860W, 50/60Hz, 1.8L(5L) - Màu nâu', 2770000, '', '', 0, 1, 0, 2, 0, 0, '', 'img/201913439724209.jpg'),
(15, 0, 'Ấm Điện Thủy Tinh Siêu Tốc Có Điều Chỉnh Nhiệt Độ Lock&Lock EJK341 (1.8L)', 1020000, '', '', 0, 1, 0, 3, 0, 0, '', 'img/201828950486960.jpg'),
(16, 0, 'Máy ép trái cây tốc độ cao, hiệu L&L, 220V, 50Hz,600W, 292*237*384mm', 2678000, '', '', 0, 1, 0, 3, 0, 0, '', 'img/201821953428453.jpg'),
(17, 0, 'Máy pha café hiệu Lock&Lock - ELCM-202 (0.3L)', 1369000, '', '', 0, 1, 0, 3, 0, 0, '', 'img/201816557430172.jpg'),
(18, 0, 'Máy Xay Trộn Đa Năng Lock&Lock ELHB-220 (420W)', 2400000, '', '', 0, 1, 0, 3, 0, 0, '', 'img/201816553664694.jpg'),
(19, 0, 'Bộ 2 Hộp Bảo Quản Lock&Lock Special W/Flip Lid HPL700S2 (5L/Hộp)', 546000, '', '', 0, 1, 0, 3, 0, 0, '', 'img/201814857271583.jpg'),
(20, 0, 'Bộ 5 Hộp Bảo Quản Thủy Tinh Tròn Lock&Lock Glass Euro LLG821S5', 748000, '', '', 0, 1, 0, 3, 0, 0, '', 'img/201814855698263.jpg'),
(21, 0, 'Bộ 8 hộp Interlock (INL301W*4, INL302W*4)', 440000, '', '', 0, 1, 0, 3, 0, 0, '', 'img/201834559498345.jpg'),
(22, 0, 'Bộ 4 Hộp Bảo Quản Thủy Tinh Lock&Lock Glass Euro LLG428S4', 847000, '', '', 0, 1, 0, 3, 0, 0, '', 'img/201814854694650.jpg'),
(23, 0, 'Bộ 5 hộp thủy tinh hình vuông L&L Euro Steam Hole (LLG224T*2, LLG234T*1,LLG214T*2)', 999000, '', '', 0, 1, 0, 3, 0, 0, '', 'img/201814233904694.jpg'),
(24, 0, 'Combo 10 Hộp Nhựa Bisfree Table Top Lock&Lock LBF631S10', 1530000, '', '', 0, 1, 0, 3, 0, 0, '', 'img/201806161182366.jpg'),
(25, 0, 'LHC1448PIK - Bình nước giữ nhiệt Lock&Lock City Vacuum Bottle (Olympic) Montreal 700ml - Màu hồng', 482000, '', '', 0, 1, 0, 4, 0, 0, '', 'img/201900755110529.jpg'),
(26, 0, 'LHC8029- Hộp cơm giữ nhiệt thương hiệu Lock & Lock, 500ml (Màu đỏ, xanh, đen)', 515000, '', '', 0, 1, 0, 4, 0, 0, '', 'img/201913559744948.jpg'),
(27, 0, 'Bình giữ nhiệt bằng thép không gỉ Lock&Lock Loop Tumbler 620ml', 450000, '', '', 0, 1, 0, 4, 0, 0, '', 'img/201822947975749.jpg'),
(28, 0, 'Bình giữ nhiệt bằng thép không gỉ Lock&Lock Clip Tumbler 540ml', 460000, '', '', 0, 1, 0, 4, 0, 0, '', 'img/201822947766590.jpg'),
(29, 0, 'Bình giữ nhiệt bằng thép không gỉ Lock&Lock Cylinder Bottle 600ml Màu bạc', 524000, '', '', 0, 1, 0, 4, 0, 0, '', 'img/201822947766937.jpg'),
(30, 0, 'Bình giữ nhiệt bằng thép không gỉ Lock&Lock Bumper Bottle 650ml Màu bạc', 513000, '', '', 0, 1, 0, 4, 0, 0, '', 'img/201822947765081.jpg'),
(31, 0, 'Bộ 6 Sản Phẩm Lock&Lock LHC4119BSH606', 1775000, '', '', 0, 1, 0, 4, 0, 0, '', 'img/201814861148412.jpg'),
(32, 0, 'Bộ túi hộp cơm thủy tinh L&L 4EA  (LLG422*3, HWB801WN-B-0*1) - Màu Wine', 620000, '', '', 0, 1, 0, 4, 0, 0, '', 'img/201829053857496.jpg'),
(33, 0, 'Bộ Túi Hộp Cơm Lock&Lock Triangle Pattern Bag - 470*470*300 ml', 430000, '', '', 0, 1, 0, 4, 0, 0, '', 'img/201814153156395.jpg'),
(34, 0, 'Bộ Túi Hộp Cơm Thủy Tinh Lock&Lock 4EA LLG224I3 (750ml)', 879000, '', '', 0, 1, 0, 5, 0, 0, '', 'img/201814150559907.jpg'),
(35, 0, 'Bộ 3 Hộp Cơm Giữ Nhiệt Lock&Lock Mushroom LHC8025SLV - Bạc', 870000, '', '', 0, 1, 0, 5, 0, 0, '', 'img/201806157274562.jpg'),
(36, 0, 'LHC8031SLV-OCH - Bộ hộp cơm giữ nhiệt L&L bằng thép không gỉ -460ml*1, 420ml*1, 280ml*1, đũa*1, túi', 1112000, '', '', 0, 1, 0, 5, 0, 0, '', 'img/201914957458521.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_cat`
--

CREATE TABLE IF NOT EXISTS `product_cat` (
`id` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `ten` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_cat`
--

INSERT INTO `product_cat` (`id`, `id_list`, `ten`, `tenkhongdau`, `img`) VALUES
(1, 1, 'Hộp bảo quản', 'hop_bao_quan', ''),
(2, 2, 'Dụng cụ nấu ăn', 'Dung_cu_nau_an', ''),
(3, 3, 'Đồ dùng trên bàn', 'Do_dung_tren_ban', ''),
(4, 3, 'Phụ kiện nhà bếp', 'Phu_kien_nha_bep', ''),
(5, 4, 'Đồ dùng dã ngoại', 'Do_dung_da_ngoai', ''),
(6, 4, 'Bình giữ nhiệt/giữ lạnh', 'Binh_giu_nhiet', ''),
(7, 5, 'Bảo quản đồ đạt', 'Bao_quan_do_dat', ''),
(8, 5, 'Đồ dùng sinh hoạt', 'Do_dung_sinh_hoat', ''),
(9, 6, 'Hàng da dụng', 'Hang_da_dung', ''),
(10, 7, 'Đồ dùng trẻ em', 'do_dung_tre_em', ''),
(11, 8, 'Đồ nội thất', 'Do_noi_that', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_item`
--

CREATE TABLE IF NOT EXISTS `product_item` (
`id` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `id_cat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_item`
--

INSERT INTO `product_item` (`id`, `id_list`, `id_cat`, `ten`, `tenkhongdau`, `img`) VALUES
(1, 1, '1', 'Hộp kín hơi', 'hop_kin_hoi', 'C:\\xampp\\mysql\\data\\img_website\\201806161182366'),
(2, 1, '1', 'Hộp nhựa', 'hop_nhua', 'http://www.locknlock.vn/data/base/goods/small/201825359631443.jpg'),
(3, 2, '1', 'Chảo/chảo sâu lòng', 'Chao/chao_sau_long', ''),
(4, 2, '1', 'Nồi chảo/Nồi áp suât', 'Noi_chao/Noi_ap_suat', ''),
(5, 2, '1', 'Dùng cho lò nướng', 'Dung_cho_lo_nuong', ''),
(6, 2, '1', 'Dụng cụ trộn thực phẩm', 'Dung_cu_tron_thuc_pham', ''),
(7, 2, '1', 'Khay/rỗ', 'khay/ro', ''),
(8, 2, '1', 'Dụng cụ nhà bếp/ khay gắp', 'Dung_cu_nha_bep/khay_gap', ''),
(9, 2, '1', 'Dao/kéo', 'dao/keo', ''),
(10, 2, '1', 'Thớt', 'thot', ''),
(11, 3, '1', 'Bình nước', 'binh_nuoc', ''),
(12, 3, '1', 'ly/cốc', 'Ly/coc', ''),
(13, 3, '1', 'Đế nồi', 'De_noi', ''),
(14, 3, '1', 'khay', 'khay', ''),
(15, 3, '1', 'ẤM đun nước', 'am_dun_nuoc', ''),
(16, 3, '2', 'Dụng cụ vệ sinh', 'Dung_cu_ve_sinh', ''),
(17, 3, '2', 'Đồ rửa chén', 'Do_rua_chen', ''),
(18, 3, '2', 'Dụng cụ làm đá', 'Dung_cu_lam_da', ''),
(19, 3, '2', 'Dụng cụ nấu ăn', 'Dung_cu_nau_an', ''),
(20, 3, '2', 'Giá/kệ', 'gia/ke', ''),
(21, 3, '2', 'Hàng dùng một lần', 'Hang_dung_mot_lan', ''),
(22, 3, '2', 'Dụng cụ bảo quản tủ lạnh', 'Dung_cu_bao_quan_tu_lanh', ''),
(23, 4, '1', 'Bình nước', 'Binh_nuoc', ''),
(24, 4, '1', 'Hộp cơm', 'Hop_com', ''),
(25, 4, '1', 'Đồ dùng du lịch', 'Do_dung_du_lich', ''),
(26, 4, '1', 'Đồ dùng cắm trại', 'do_dung_cam_trai', ''),
(27, 4, '2', 'Hộp cơm giữ nhiệt', 'Hop_com_giu_nhiet', ''),
(28, 4, '2', 'Hộp đựng cháo', 'Hop_dung_chao', ''),
(29, 4, '2', 'Bình giữ nhiệt', 'Binh_giu_nhiet', ''),
(30, 4, '2', 'Túi chờm lạnh', 'Tui_chom_lanh', ''),
(32, 5, '1', 'Thùng đựng đồ', 'Thung_dung_do', ''),
(33, 5, '1', 'Giỏ', 'Gio', ''),
(34, 5, '1', 'kệ tủ', 'ke_tu', ''),
(35, 5, '1', 'kệ kéo', 'ke_keo', ''),
(36, 5, '2', 'dụng cụ nhà tắm', 'Dung_cu_nha_tam', ''),
(37, 5, '2', 'Thùng rác', 'thung_rac', ''),
(38, 5, '2', 'móc/kệ treo đồ', 'móc/ke_trao_do', ''),
(39, 5, '2', 'cây lau nhà', 'cay_lau_nha', ''),
(40, 6, '1', 'Thiết bị nhà bếp', 'thiet_bi_nha_bep', ''),
(41, 6, '1', 'thiết bị gia dụng', 'Thiet_bi_gia_dung', ''),
(42, 7, '1', 'Dụng cụ uống sữa', 'Dung_cu_uong_sua', ''),
(43, 7, '1', 'Đồ dùng cho bé', 'Do_dung_cho_be', ''),
(44, 7, '1', 'DỤng cụ vệ sinh cho bé', 'Dung_cu_ve_sinh_cho_be', ''),
(45, 7, '2', 'Thảm cho bé', 'Thảm_cho_be', ''),
(46, 8, '1', 'Bàn đa năng', 'Ban_da_nang', ''),
(47, 8, '1', 'giường', 'giuong', ''),
(48, 0, '', '', '', 'C:\\xampp\\mysql\\data\\img_website');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE IF NOT EXISTS `product_list` (
`id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `noibat` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `ten`, `tenkhongdau`, `img`, `noibat`) VALUES
(1, 'Hộp bảo quản', 'hop_bao_quan', 'img/CA_water_bottle.png', 1),
(2, 'Dụng cụ nấu ăn', 'Dung_cu_nau_an', 'img/CA_vacuum_flask.png', 1),
(3, 'Phụ Kiện nhà bếp', 'phu_kien_nha_bep', 'img/CA_food_storage.png', 1),
(4, 'ĐỒ dùng dã ngoại', 'Do_dung_da_ngoai', 'img/CA_cookware_2.png', 1),
(5, 'Đồ dùng sinh hoạt', 'Do_dung_sinh_hoat', 'img/CA_appliances_1.png', 1),
(6, 'Hàng da dụng', 'Hàng _da_dung', '', 0),
(7, 'Đồ dùng trẻ em', 'Đo_dung_tre_em', '', 0),
(8, 'Đồ nội thất', 'Do_noi_that', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_cat`
--
ALTER TABLE `product_cat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_item`
--
ALTER TABLE `product_item`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `product_cat`
--
ALTER TABLE `product_cat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `product_item`
--
ALTER TABLE `product_item`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

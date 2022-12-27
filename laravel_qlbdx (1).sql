-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2022 lúc 03:42 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_qlbdx`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khu`
--

CREATE TABLE `khu` (
  `id_khu` int(11) NOT NULL,
  `ten_khu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khu`
--

INSERT INTO `khu` (`id_khu`, `ten_khu`) VALUES
(1, '5'),
(2, 'Nhà giữ xe khu V'),
(3, 'Nhà giữ xe KTX'),
(4, 'Nhà giữ xe KTX');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khu_slot`
--

CREATE TABLE `khu_slot` (
  `khu_slot_id` int(11) NOT NULL,
  `khu_id` int(11) NOT NULL,
  `slot_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khu_slot`
--

INSERT INTO `khu_slot` (`khu_slot_id`, `khu_id`, `slot_name`, `status`) VALUES
(1, 1, '454545', 1),
(2, 1, '4545454', 1),
(3, 1, 'Bến Test', 0),
(4, 2, 'Bến V-1', 0),
(5, 2, 'Bến V-2', 0),
(6, 3, 'Bến K-1', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slot`
--

CREATE TABLE `slot` (
  `id` int(11) NOT NULL,
  `khu_slot_id` int(11) NOT NULL,
  `ten_khu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_ben` int(11) NOT NULL,
  `ten_ben` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `biensoxe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mathexe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thoigianvao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `thoigianra` timestamp NULL DEFAULT NULL,
  `giatien` int(11) DEFAULT NULL,
  `hinhanhcuaxe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slot`
--

INSERT INTO `slot` (`id`, `khu_slot_id`, `ten_khu`, `id_ben`, `ten_ben`, `biensoxe`, `mathexe`, `thoigianvao`, `thoigianra`, `giatien`, `hinhanhcuaxe`, `trangthai`) VALUES
(34, 1, '5', 1, '454545', '51A13883', 'ce7b5aa6-8561-4ebc-8927-3834273e2766', '2022-06-18 01:49:52', '2022-06-18 01:49:52', NULL, '1655516901_fileName.jpg', 1),
(35, 2, '5', 2, '4545454', '0C-66666', '00bcf373-70d1-465c-a06b-62f018b90b82', '2022-06-18 01:49:23', NULL, NULL, '1655516953_fileName.jpg', 0),
(36, 1, '5', 1, '454545', '75A16868', '52ae7ce8-f22e-4c94-b1ef-8d70ce474a5b', '2022-06-18 01:50:06', NULL, NULL, '1655517001_fileName.jpg', 0),
(37, 3, '5', 3, 'Bến Test', '75A16868', 'e2beaf48-7ae1-4aac-80de-17fcded5bc0b', '2022-06-18 02:41:53', '2022-06-18 02:41:53', NULL, '1655519334_fileName.jpg', 1),
(38, 3, '5', 3, 'Bến Test', '75A16868', 'a8dfb8b7-37e8-4697-8c5e-de4ace30ff74', '2022-06-18 02:49:48', '2022-06-18 02:49:48', NULL, '1655520578_fileName.jpg', 1),
(39, 3, '5', 3, 'Bến Test', '75A16868', '13cf93df-13e0-41be-9a3e-fb131e9debea', '2022-06-18 02:50:31', '2022-06-18 02:50:31', NULL, '1655520609_fileName.jpg', 1),
(40, 3, '5', 3, 'Bến Test', '75A16868', 'ca571864-06df-410d-a8e8-a8a627c6cfac', '2022-06-18 02:51:26', '2022-06-18 02:51:26', NULL, '1655520675_fileName.jpg', 1),
(41, 3, '5', 3, 'Bến Test', '75A16868', 'dda037d5-fc97-4ef4-8119-d5b6ee3997bf', '2022-06-18 02:52:53', '2022-06-18 02:52:53', NULL, '1655520755_fileName.jpg', 1),
(42, 3, '5', 3, 'Bến Test', '75A16868', '931d1142-85ab-416c-b5c5-80b2b5725e79', '2022-06-18 02:53:20', '2022-06-18 02:53:20', NULL, '1655520792_fileName.jpg', 1),
(43, 3, '5', 3, 'Bến Test', '75A16868', '9b5edd6c-74ac-455c-9e30-cadff49edeba', '2022-06-18 02:53:48', '2022-06-18 02:53:48', NULL, '1655520820_fileName.jpg', 1),
(44, 3, '5', 3, 'Bến Test', '75A16868', 'ef879a13-51d7-4cda-adbe-f96390d19d1a', '2022-06-18 02:55:45', '2022-06-18 02:55:45', NULL, '1655520937_fileName.jpg', 1),
(45, 3, '5', 3, 'Bến Test', '75A16868', '60698ab2-4ab3-4eb4-b7f2-f6e4a8190366', '2022-06-18 02:57:05', '2022-06-18 02:57:05', NULL, '1655521016_fileName.jpg', 1),
(46, 3, '5', 3, 'Bến Test', '75A16868', 'bbacf2f8-3cc0-441b-9a2f-afaff64cd6fc', '2022-06-18 02:58:54', '2022-06-18 02:58:54', NULL, '1655521125_fileName.jpg', 1),
(47, 3, '5', 3, 'Bến Test', '75A16868', 'ef250f6e-7fb8-4360-bf35-b21d459cd8ba', '2022-06-18 03:00:10', '2022-06-18 03:00:10', NULL, '1655521202_fileName.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vexe`
--

CREATE TABLE `vexe` (
  `id` int(11) NOT NULL,
  `biensoxe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thang` int(11) NOT NULL,
  `ngay_dang_ky` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vexe`
--

INSERT INTO `vexe` (`id`, `biensoxe`, `email`, `thang`, `ngay_dang_ky`) VALUES
(1, 'df', 'phtuan21@gmail.com', 12, '2022-06-18 02:11:10'),
(2, 'df', 'phtuan21@gmail.com', 12, '2022-06-18 02:11:47'),
(3, 'df', 'phtuan21@gmail.com', 12, '2022-06-18 02:12:46'),
(4, 'df', 'phtuan21@gmail.com', 12, '2022-06-18 02:13:59'),
(5, 'df', 'phtuan21@gmail.com', 12, '2022-06-18 02:14:44'),
(6, 'df', 'phtuan21@gmail.com', 12, '2022-06-18 02:14:57'),
(7, 'df', 'phtuan21@gmail.com', 12, '2022-06-18 02:15:15'),
(8, 'df', 'phtuan21@gmail.com', 12, '2022-06-18 02:16:27'),
(9, 'df', 'phtuan21@gmail.com', 12, '2022-06-18 02:16:38'),
(10, '75A16868', 'tuantyler21@gmail.com', 12, '2022-06-18 02:28:46');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `khu`
--
ALTER TABLE `khu`
  ADD PRIMARY KEY (`id_khu`);

--
-- Chỉ mục cho bảng `khu_slot`
--
ALTER TABLE `khu_slot`
  ADD PRIMARY KEY (`khu_slot_id`);

--
-- Chỉ mục cho bảng `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vexe`
--
ALTER TABLE `vexe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `khu`
--
ALTER TABLE `khu`
  MODIFY `id_khu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `khu_slot`
--
ALTER TABLE `khu_slot`
  MODIFY `khu_slot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `slot`
--
ALTER TABLE `slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `vexe`
--
ALTER TABLE `vexe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-07-15 05:44:33
-- 服务器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `xjd`
--

-- --------------------------------------------------------

--
-- 表的结构 `2`
--

CREATE TABLE `2` (
  `c1_id` int(11) NOT NULL,
  `c2_id` int(11) NOT NULL,
  `c3_id` int(11) NOT NULL,
  `c3_name` varchar(255) NOT NULL,
  `c3_img` varchar(255) NOT NULL,
  `c3_ishot` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `2`
--

INSERT INTO `2` (`c1_id`, `c2_id`, `c3_id`, `c3_name`, `c3_img`, `c3_ishot`) VALUES
(10, 41, 1, '面部护肤', 'mzkh-0006.jpg', '1'),
(10, 41, 2, '面部护肤', 'mzkh-0007.jpg', '1'),
(10, 41, 3, '面部护肤', 'mzkh-0008.jpg', '1'),
(10, 41, 4, '面部护肤', 'mzkh-0009.jpg', '1'),
(10, 41, 5, '面部护肤', 'mzkh-00010.jpg', '1'),
(10, 41, 6, '面部护肤', 'mzkh-00011.jpg', '1'),
(10, 41, 7, '面部护肤', 'mzkh-00012.jpg', '1'),
(10, 41, 8, '面部护肤', 'mzkh-00013.jpg', '1'),
(10, 41, 9, '面部护肤', 'mzkh-00014.jpg', '1'),
(10, 42, 10, '香水彩妆', 'mzkh-00015.jpg', '1'),
(10, 42, 11, '香水彩妆', 'mzkh-00016.jpg', '1'),
(10, 42, 12, '香水彩妆', 'mzkh-00017.jpg', '1'),
(10, 42, 13, '香水彩妆', 'mzkh-00018.jpg', '1'),
(10, 42, 14, '香水彩妆', 'mzkh-00019.jpg', '1'),
(10, 42, 15, '香水彩妆', 'mzkh-00020.jpg', '1'),
(10, 43, 16, '身体洗护', 'mzkh-00021.jpg', '1'),
(10, 43, 17, '身体洗护', 'mzkh-00022.jpg', '1'),
(10, 43, 18, '身体洗护', 'mzkh-00023.jpg', '1'),
(10, 43, 19, '身体洗护', 'mzkh-00024.jpg', '1'),
(10, 43, 20, '身体洗护', 'mzkh-00025.jpg', '1'),
(10, 43, 21, '身体洗护', 'mzkh-00026.jpg', '1'),
(10, 43, 22, '身体洗护', 'mzkh-00027.jpg', '1'),
(10, 43, 23, '身体洗护', 'mzkh-00028.jpg', '1'),
(10, 43, 24, '身体洗护', 'mzkh-00029.jpg', '1'),
(10, 44, 25, '口腔护理', 'mzkh-00030.jpg', '1'),
(10, 44, 26, '口腔护理', 'mzkh-00031.jpg', '1'),
(10, 44, 27, '口腔护理', 'mzkh-00032.jpg', '1'),
(11, 45, 28, '潮流女包', 'mzkh-00033.jpg', '1'),
(11, 45, 29, '潮流女包', 'mzkh-00034.jpg', '1'),
(11, 45, 30, '潮流女包', 'mzkh-00035.jpg', '1'),
(11, 45, 31, '潮流女包', 'mzkh-00036.jpg', '1'),
(11, 45, 32, '潮流女包', 'mzkh-00037.jpg', '1'),
(11, 45, 33, '潮流女包', 'mzkh-00038.jpg', '1'),
(11, 46, 34, '功能箱包', 'mzkh-00039.jpg', '1'),
(11, 46, 35, '功能箱包', 'mzkh-00040.jpg', '1'),
(11, 46, 36, '功能箱包', 'mzkh-00041.jpg', '1'),
(11, 46, 37, '功能箱包', 'mzkh-00042.jpg', '1'),
(11, 46, 38, '功能箱包', 'mzkh-00043.jpg', '1'),
(11, 46, 39, '功能箱包', 'mzkh-00044.jpg', '1'),
(11, 47, 40, '精品男包', 'mzkh-00045.jpg', '1'),
(11, 47, 41, '精品男包', 'mzkh-00046.jpg', '1'),
(11, 47, 42, '精品男包', 'mzkh-00047.jpg', '1'),
(11, 47, 43, '精品男包', 'mzkh-00048.jpg', '1'),
(11, 47, 44, '精品男包', 'mzkh-00049.jpg', '1'),
(11, 47, 45, '精品男包', 'mzkh-00050.jpg', '1'),
(11, 48, 46, '男鞋', 'mzkh-00051.jpg', '1'),
(11, 48, 47, '男鞋', 'mzkh-00052.jpg', '1'),
(11, 48, 48, '男鞋', 'mzkh-00053.jpg', '1'),
(11, 48, 49, '男鞋', 'mzkh-00054.jpg', '1'),
(11, 48, 50, '男鞋', 'mzkh-00055.jpg', '1'),
(11, 48, 51, '男鞋', 'mzkh-00056.jpg', '1'),
(11, 48, 52, '男鞋', 'mzkh-00057.jpg', '1'),
(11, 48, 53, '男鞋', 'mzkh-00058.jpg', '1'),
(11, 48, 54, '男鞋', 'mzkh-00059.jpg', '1'),
(11, 49, 55, '男鞋', 'mzkh-00060.jpg', '1'),
(11, 49, 56, '男鞋', 'mzkh-00061.jpg', '1'),
(11, 49, 57, '男鞋', 'mzkh-00062.jpg', '1'),
(11, 49, 58, '男鞋', 'mzkh-00063.jpg', '1'),
(11, 49, 59, '男鞋', 'mzkh-00064.jpg', '1'),
(11, 49, 60, '男鞋', 'mzkh-00065.jpg', '1'),
(11, 49, 61, '男鞋', 'mzkh-00066.jpg', '1'),
(11, 49, 62, '男鞋', 'mzkh-00067.jpg', '1'),
(11, 49, 63, '男鞋', 'mzkh-00068.jpg', '1');

--
-- 转储表的索引
--

--
-- 表的索引 `2`
--
ALTER TABLE `2`
  ADD PRIMARY KEY (`c3_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `2`
--
ALTER TABLE `2`
  MODIFY `c3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

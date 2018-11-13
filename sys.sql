-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2018-11-13 09:06:41
-- 服务器版本： 10.1.36-MariaDB
-- PHP 版本： 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `sys`
--

-- --------------------------------------------------------

--
-- 表的结构 `session_info`
--

CREATE TABLE `session_info` (
  `id` int(11) NOT NULL,
  `session_no` varchar(45) NOT NULL,
  `session_name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `stu_grade`
--

CREATE TABLE `stu_grade` (
  `id` int(11) NOT NULL,
  `stu_no` int(15) NOT NULL,
  `sub1_no` int(5) DEFAULT NULL,
  `sub1_grade` float DEFAULT NULL,
  `sub2_no` int(5) DEFAULT NULL,
  `sub2_grade` float DEFAULT NULL,
  `sub3_no` int(5) DEFAULT NULL,
  `sub3_grade` float DEFAULT NULL,
  `sub4_no` int(5) DEFAULT NULL,
  `sub4_grade` float DEFAULT NULL,
  `sub5_no` int(5) DEFAULT NULL,
  `sub5_grade` float DEFAULT NULL,
  `sub6_no` int(5) DEFAULT NULL,
  `sub6_grade` float DEFAULT NULL,
  `sub7_no` int(5) DEFAULT NULL,
  `sub7_grade` float DEFAULT NULL,
  `sub8_no` int(5) DEFAULT NULL,
  `sub8_grade` float DEFAULT NULL,
  `sub9_no` int(5) DEFAULT NULL,
  `sub9_grade` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `stu_grade`
--

INSERT INTO `stu_grade` (`id`, `stu_no`, `sub1_no`, `sub1_grade`, `sub2_no`, `sub2_grade`, `sub3_no`, `sub3_grade`, `sub4_no`, `sub4_grade`, `sub5_no`, `sub5_grade`, `sub6_no`, `sub6_grade`, `sub7_no`, `sub7_grade`, `sub8_no`, `sub8_grade`, `sub9_no`, `sub9_grade`) VALUES
(1, 123456789, 12345, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 123456, 1, 90.1, 2, 77.7, 3, 32.3, 4, NULL, NULL, NULL, 6, 99.5, 7, 60.1, 8, 12.3, 9, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `stu_info`
--

CREATE TABLE `stu_info` (
  `id` int(11) NOT NULL,
  `stu_no` int(15) NOT NULL,
  `stu_name` varchar(45) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `paper_type` varchar(45) NOT NULL,
  `paper_no` varchar(20) NOT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `stu_info`
--

INSERT INTO `stu_info` (`id`, `stu_no`, `stu_name`, `sex`, `paper_type`, `paper_no`, `tel`, `email`, `image`) VALUES
(1, 123456789, 'haoke', '女', '身份证', '99999999999', NULL, NULL, NULL),
(2, 123456, 'dingzhiwei', '女', '身份证', '567894512', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sub_info`
--

CREATE TABLE `sub_info` (
  `id` int(11) NOT NULL,
  `sub_no` varchar(45) NOT NULL,
  `sub_name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `session_info`
--
ALTER TABLE `session_info`
  ADD PRIMARY KEY (`id`,`session_no`);

--
-- 表的索引 `stu_grade`
--
ALTER TABLE `stu_grade`
  ADD PRIMARY KEY (`id`,`stu_no`);

--
-- 表的索引 `stu_info`
--
ALTER TABLE `stu_info`
  ADD PRIMARY KEY (`id`,`stu_no`);

--
-- 表的索引 `sub_info`
--
ALTER TABLE `sub_info`
  ADD PRIMARY KEY (`id`,`sub_no`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `session_info`
--
ALTER TABLE `session_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `stu_grade`
--
ALTER TABLE `stu_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `stu_info`
--
ALTER TABLE `stu_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sub_info`
--
ALTER TABLE `sub_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

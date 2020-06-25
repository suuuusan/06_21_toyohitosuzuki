-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 6 月 25 日 16:29
-- サーバのバージョン： 10.4.13-MariaDB
-- PHP のバージョン: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d06_21`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `BMI`
--

CREATE TABLE `BMI` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `u_id` varchar(60) NOT NULL,
  `u_pw` varchar(60) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `grade` varchar(30) NOT NULL,
  `height` varchar(30) NOT NULL,
  `weight` varchar(30) NOT NULL,
  `dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `BMI`
--

INSERT INTO `BMI` (`id`, `name`, `u_id`, `u_pw`, `mail`, `sex`, `grade`, `height`, `weight`, `dt`) VALUES
(1, '管理者', 'master', '0001', '', '00', '管理画面', 'ーー', 'ーー', '0000-00-00 00:00:00'),
(2, 'テスト太郎', 'テスト太郎', '1111', '', 'men', '高校2年', '180', '68', '2020-06-22 00:00:00'),
(3, '佐藤太郎', '', '', '', '', '中学1年生', '170', '65.2', '2020-06-23 13:14:41'),
(4, 'shin', '', '', '', '', '高校1年生', '161', '60.3', '2020-06-23 13:16:02'),
(5, 'ベジ子', 'ベジータ', '0002', '', '女性', '中学2年生', '160.0', '60.0', '2020-06-25 14:39:26'),
(6, 'ベジ子', 'ベジータ', '0002', '', '女性', '中学2年生', '160.0', '60.0', '2020-06-25 14:39:54'),
(7, 'ギニュー', 'ギニュー', 'gyunyu', '', '男性', '大学2年生', '190', '100', '2020-06-25 14:52:11'),
(8, 'グルト', 'グルト', 'グルト', '', '女性', '大学1年生', '180.0', '80.0', '2020-06-25 16:13:17'),
(9, '孫悟空', '悟空', 'ゴクウ', '', '男性', '一般の方', '181.0', '90.0', '2020-06-25 21:18:53'),
(10, 'バータ', 'バータ', 'バタ', '', '男性', '高校2年生', '230.0', '160.0', '2020-06-25 21:51:09');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, '昼飯食べたい', '2020-06-22', '2020-06-20 16:41:52', '2020-06-20 16:41:52'),
(2, 'genki', '2020-06-24', '2020-06-20 16:42:46', '2020-06-20 16:42:46'),
(3, '晩飯なに', '2020-06-26', '2020-06-20 17:02:33', '2020-06-20 17:02:33');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `BMI`
--
ALTER TABLE `BMI`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `BMI`
--
ALTER TABLE `BMI`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

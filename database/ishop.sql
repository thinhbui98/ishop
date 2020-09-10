-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2020 at 03:56 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `level` smallint(6) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `address`, `image`, `status`, `level`, `deleted`, `created_date`, `updated_date`) VALUES
(1, 'admin', '123456', 'administrator', 'admin@mail.com', '066669999', '03147 Rieder Terrace', NULL, 0, 0, 0, '2020-09-05 14:24:58', '2020-09-05 14:24:58'),
(2, 'mbuffery0', '123456', 'Mandel Buffery', 'mbuffery0@chronoengine.com', '7703176139', '6 Jackson Plaza', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(3, 'cbranchflower1', '123456', 'Che Branchflower', 'cbranchflower1@eventbrite.com', '4146657682', '67 Carberry Trail', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(4, 'jmalthus2', '123456', 'Jess Malthus', 'jmalthus2@angelfire.com', '2651758060', '66316 Sugar Road', NULL, 0, 0, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(5, 'lhackforth3', '123456', 'Lilla Hackforth', 'lhackforth3@ted.com', '1425317143', '201 Utah Lane', NULL, 0, 0, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(6, 'mfortun4', '123456', 'Marvin Fortun', 'mfortun4@nps.gov', '9579830489', '5789 Garrison Lane', NULL, 0, 1, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(7, 'lzeal5', '123456', 'Lanita Zeal', 'lzeal5@miibeian.gov.cn', '4637780237', '3 Hazelcrest Center', NULL, 0, 1, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(8, 'lsaffon6', '123456', 'Lexie Saffon', 'lsaffon6@mozilla.org', '5609180413', '9 Oak Valley Lane', NULL, 0, 1, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(9, 'jlockitt7', '123456', 'Jacky Lockitt', 'jlockitt7@admin.ch', '6908034539', '03147 Rieder Terrace', NULL, 0, 1, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(10, 'dsavery8', '123456', 'Debbie Savery', 'dsavery8@wiley.com', '1941623745', '062 Banding Place', NULL, 0, 1, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(11, 'gelders9', '123456', 'Gloria Elders', 'gelders9@vimeo.com', '7752834979', '001 High Crossing Pass', NULL, 0, 1, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(12, 'bclinninga', '123456', 'Barby Clinning', 'bclinninga@scientificamerican.com', '2696790260', '152 Lunder Court', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(13, 'fmarieb', '123456', 'Franky Marie', 'fmarieb@blogspot.com', '4477288088', '7 Wayridge Drive', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(14, 'adabrowskic', '123456', 'Alister Dabrowski', 'adabrowskic@reddit.com', '7242888704', '09 Erie Lane', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(15, 'mmacmakind', '123456', 'Marillin MacMakin', 'mmacmakind@toplist.cz', '2995079871', '3 Oneill Park', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(16, 'priccettie', '123456', 'Patrice Riccetti', 'priccettie@shareasale.com', '3765592144', '615 Butternut Park', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(17, 'wedgef', '123456', 'Wye Edge', 'wedgef@engadget.com', '1661227850', '94767 David Drive', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(18, 'jalmackg', '123456', 'Jen Almack', 'jalmackg@sogou.com', '6711402662', '472 Oak Pass', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(19, 'mfergusonh', '123456', 'Manda Ferguson', 'mfergusonh@columbia.edu', '5705446805', '2 Michigan Center', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(20, 'mdukei', '123456', 'Marieann Duke', 'mdukei@theatlantic.com', '7742030671', '60 Mesta Point', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(21, 'rfitchenj', '123456', 'Rebekkah Fitchen', 'rfitchenj@accuweather.com', '6527977585', '31461 Susan Crossing', NULL, 1, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(22, 'rsturleyk', '123456', 'Ruthy Sturley', 'rsturleyk@dell.com', '2089168463', '1 Amoth Trail', NULL, 1, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(23, 'bmorphewl', '123456', 'Bellanca Morphew', 'bmorphewl@sun.com', '9513234089', '67340 Burrows Crossing', NULL, 1, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(24, 'bfoulshamm', '123456', 'Barbara Foulsham', 'bfoulshamm@nba.com', '6126161804', '1 Weeping Birch Circle', NULL, 1, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(25, 'igebben', '123456', 'Isa Gebbe', 'igebben@cnbc.com', '7308443371', '2 Goodland Parkway', NULL, 1, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(26, 'arevenso', '123456', 'Antonia Revens', 'arevenso@squarespace.com', '4188824366', '99469 Ohio Drive', NULL, 1, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(27, 'epfeifferp', '123456', 'Edd Pfeiffer', 'epfeifferp@etsy.com', '1854547703', '4623 Menomonie Hill', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(28, 'dcroptonq', '123456', 'Dinny Cropton', 'dcroptonq@netscape.com', '9062740642', '8 Superior Avenue', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(29, 'cmattheisr', '123456', 'Cicily Mattheis', 'cmattheisr@purevolume.com', '5036067291', '14 Vidon Parkway', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(30, 'ggulls', '123456', 'Gaynor Gull', 'ggulls@epa.gov', '5278670466', '50 Corben Center', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(31, 'jconstancet', '123456', 'Johann Constance', 'jconstancet@weibo.com', '2714542591', '5924 Artisan Circle', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(32, 'ebamberyu', '123456', 'Esther Bambery', 'ebamberyu@japanpost.jp', '3706048638', '57 Caliangt Parkway', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(33, 'aquinnv', '123456', 'Almire Quinn', 'aquinnv@shareasale.com', '6743409317', '19568 Erie Drive', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(34, 'ocarltonw', '123456', 'Opaline Carlton', 'ocarltonw@blogs.com', '5182648100', '075 Hauk Alley', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(35, 'apockex', '123456', 'Alfred Pocke', 'apockex@ebay.co.uk', '6659680608', '103 Sachtjen Way', NULL, 0, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(36, 'crealyy', '123456', 'Chantalle Realy', 'crealyy@taobao.com', '4566538965', '578 Randy Terrace', NULL, 1, 1, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(37, 'tdursleyz', '123456', 'Torre Dursley', 'tdursleyz@discuz.net', '3191165634', '8 Gulseth Drive', NULL, 1, 1, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(38, 'pgilhoolie10', '123456', 'Powell Gilhoolie', 'pgilhoolie10@unblog.fr', '4167435709', '03 Macpherson Terrace', NULL, 1, 1, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(39, 'lkleinmintz11', '123456', 'Lucita Kleinmintz', 'lkleinmintz11@github.com', '4678919691', '41 Forest Run Drive', NULL, 1, 1, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(40, 'brodbourne12', '123456', 'Bertrando Rodbourne', 'brodbourne12@ca.gov', '4914622088', '5 Bobwhite Avenue', NULL, 0, 0, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(41, 'fbaylie13', '123456', 'Fanny Baylie', 'fbaylie13@mashable.com', '6044524960', '314 Logan Street', NULL, 0, 0, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(42, 'dosipov14', '123456', 'Doug Osipov', 'dosipov14@yahoo.co.jp', '9799419737', '6369 Donald Way', NULL, 1, 0, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(43, 'ljennins15', '123456', 'Lewiss Jennins', 'ljennins15@1und1.de', '7985541109', '049 Pepper Wood Alley', NULL, 1, 0, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(44, 'nlever16', '123456', 'Niko Lever', 'nlever16@apple.com', '3028886803', '80 Ridge Oak Avenue', NULL, 1, 0, 1, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(45, 'mshepton17', '123456', 'Marysa Shepton', 'mshepton17@bigcartel.com', '9245001970', '8 West Drive', NULL, 1, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(46, 'pbeharrell18', '123456', 'Pattin Beharrell', 'pbeharrell18@tinyurl.com', '5607913330', '14496 Bayside Circle', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(47, 'schristall19', '123456', 'Shadow Christall', 'schristall19@etsy.com', '4878983517', '551 Towne Terrace', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(48, 'rde1a', '123456', 'Randolf De Blasio', 'rde1a@yahoo.com', '2847010791', '1109 Shopko Way', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(49, 'adaly1b', '123456', 'Angelia Daly', 'adaly1b@dagondesign.com', '2028859198', '761 Northwestern Lane', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(50, 'cgillease1c', '123456', 'Conrad Gillease', 'cgillease1c@fda.gov', '2651249580', '85558 Elka Lane', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20'),
(51, 'cturvie1d', '123456', 'Chloe Turvie', 'cturvie1d@technorati.com', '8709014781', '5 Roth Trail', NULL, 0, 0, 0, '2020-09-05 18:49:20', '2020-09-05 18:49:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 06:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `createdate`, `updatedate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-05-10 10:47:41', '2020-05-10 10:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_catagory`
--

CREATE TABLE `tbl_catagory` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `catdescription` text NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_catagory`
--

INSERT INTO `tbl_catagory` (`id`, `categoryname`, `catdescription`, `createdate`, `updatedate`) VALUES
(1, 'Electronics', 'Electronic prescribing is the computer-based electronic generation, transmission, and filling of a medical prescription, taking the place of paper and faxed prescriptions. ', '2020-05-08 06:05:47', '0000-00-00 00:00:00'),
(4, 'Books', 'test description ', '2020-05-08 06:55:18', '0000-00-00 00:00:00'),
(5, 'Furniture ', 'test', '2020-05-09 13:44:59', '0000-00-00 00:00:00'),
(6, 'Fashion', 'Fashion', '2020-05-09 13:45:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_oders`
--

CREATE TABLE `tbl_oders` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `orderdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paymentmethod` varchar(255) NOT NULL,
  `oderstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_oders`
--

INSERT INTO `tbl_oders` (`id`, `userid`, `productid`, `quantity`, `orderdate`, `paymentmethod`, `oderstatus`) VALUES
(6, '1', '8', '1', '2020-05-11 16:27:09', 'COD', 'Delivered'),
(7, '1', '9', '1', '2020-05-11 16:28:58', 'COD', 'Delivered'),
(8, '1', '8', '1', '2020-05-11 10:55:31', 'Internet Banking', ''),
(9, '1', '18', '1', '2020-05-11 10:55:31', 'Internet Banking', ''),
(10, '1', '18', '1', '2020-05-11 10:56:03', 'Debit / Credit card', ''),
(11, '1', '13', '1', '2020-05-11 11:25:19', 'COD', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ordertrackhistory`
--

CREATE TABLE `tbl_ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderid` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `postingdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ordertrackhistory`
--

INSERT INTO `tbl_ordertrackhistory` (`id`, `orderid`, `status`, `remark`, `postingdate`) VALUES
(1, '6', 'in Process', 'waiting for product', '2020-05-11 16:24:10'),
(4, '6', 'Delivered', 'done', '2020-05-11 16:27:09'),
(5, '7', 'in Process', 'test', '2020-05-11 16:28:06'),
(6, '7', 'Delivered', 'tst', '2020-05-11 16:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `catid` varchar(20) NOT NULL,
  `subcatid` varchar(20) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productcompany` varchar(255) NOT NULL,
  `productprice` varchar(255) NOT NULL,
  `productpricebeforediscount` varchar(255) NOT NULL,
  `pdescription` text NOT NULL,
  `productimage1` varchar(255) NOT NULL,
  `productimage2` varchar(255) NOT NULL,
  `productimage3` varchar(255) NOT NULL,
  `shippingcharge` varchar(255) NOT NULL,
  `productavailability` varchar(255) NOT NULL,
  `postingdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `catid`, `subcatid`, `productname`, `productcompany`, `productprice`, `productpricebeforediscount`, `pdescription`, `productimage1`, `productimage2`, `productimage3`, `shippingcharge`, `productavailability`, `postingdate`, `updatedate`) VALUES
(5, '1', '12', 'Sony TV ', 'Sony Rangs', '25000', '0', '															sony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo textsony test demo text														', 'micromax1.jpeg', 'micromax2.jpeg', 'micromax3.jpeg', '10', 'productavailability', '2020-05-09 10:20:40', '2020-05-09 10:20:40'),
(6, '4', '10', 'Story books', 'Mahfujur', '120', '0', 'demo text book demo text book demo text book demo text book demo text book demo text book demo text book demo text book demo text book demo text book demo text book demo text book demo text book demo text book demo text book demo text book&nbsp;', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'admin.ico', '', '10', 'In Stock', '2020-05-09 10:23:11', '0000-00-00 00:00:00'),
(8, '4', '14', 'The Wimpy Kid Do -It- Yourself Book', 'ABCD', '120', '120', '<h6><span style=\"color: rgb(102, 102, 102); font-size: 10px; font-weight: normal;\"><font face=\"arial\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa</font></span><span style=\"color: rgb(102, 102, 102); font-family: Verdana, Geneva, sans-serif; font-size: 10px; font-weight: normal;\">&nbsp;</span></h6>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'admin.ico', '', '10', 'In Stock', '2020-05-09 14:14:34', '0000-00-00 00:00:00'),
(9, '1', '1', 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', '60000', '60000', '<span style=\"color: rgb(102, 102, 102); font-size: 10px;\"><font face=\"arial\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa&nbsp;</font></span>						', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', '10', 'In Stock', '2020-05-09 14:33:37', '0000-00-00 00:00:00'),
(10, '1', '9', 'Micromax 81cm (32) HD Ready LED TV (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', '15000', '15000', '<span style=\"color: rgb(102, 102, 102); font-family: Verdana, Geneva, sans-serif; font-size: 10px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa&nbsp;</span>						', 'micromax1.jpeg', 'micromax2.jpeg', 'micromax3.jpeg', '10', 'In Stock', '2020-05-09 14:38:22', '0000-00-00 00:00:00'),
(11, '1', '1', 'Redmi Note 4 (Gold, 32 GB) (With 3 GB RAM)', 'Xiomi', '15000', '15000', '<span style=\"color: rgb(102, 102, 102); font-family: Verdana, Geneva, sans-serif; font-size: 10px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa&nbsp;</span>						', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', '10', 'In Stock', '2020-05-09 14:43:23', '0000-00-00 00:00:00'),
(12, '1', '1', 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo ', '26000', '26000', '<span style=\"color: rgb(102, 102, 102); font-family: Verdana, Geneva, sans-serif; font-size: 10px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa&nbsp;</span>						', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', '10', 'In Stock', '2020-05-09 14:48:26', '0000-00-00 00:00:00'),
(13, '1', '1', 'Lenovo Vibe K5 Note (Gold, 32 GB) ', 'Lenovo ', '30000', '30000', '<span style=\"color: rgb(102, 102, 102); font-family: Verdana, Geneva, sans-serif; font-size: 10px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa&nbsp;</span>						', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', '10', 'In Stock', '2020-05-09 14:52:10', '0000-00-00 00:00:00'),
(14, '1', '1', 'Micromax Canvas Mega 4G', 'Micromax ', '20000', '20000', '<span style=\"color: rgb(102, 102, 102); font-family: Verdana, Geneva, sans-serif; font-size: 10px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa&nbsp;</span>						', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', '10', 'In Stock', '2020-05-09 14:53:16', '0000-00-00 00:00:00'),
(15, '1', '1', 'SAMSUNG Galaxy On5', 'SAMSUNG ', '15000', '15000', '<div id=\"idTextPanel\" class=\"jqDnR\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(102, 102, 102); font-family: Verdana, Geneva, Helvetica, sans-serif; font-size: 11px;\"><p style=\"padding: 0px; line-height: normal; font-family: Verdana, Geneva, sans-serif; font-size: 10px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p><div><br></div></div>						', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', '10', 'In Stock', '2020-05-09 14:59:46', '0000-00-00 00:00:00'),
(16, '1', '1', 'OPPO A57', 'OPPO', '26000', '26000', '<div id=\"idTextPanel\" class=\"jqDnR\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(102, 102, 102); font-family: Verdana, Geneva, Helvetica, sans-serif; font-size: 11px;\"><p style=\"padding: 0px; line-height: normal; font-family: Verdana, Geneva, sans-serif; font-size: 10px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p><div><br></div></div>						', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', '10', 'In Stock', '2020-05-09 15:01:50', '0000-00-00 00:00:00'),
(17, '1', '21', 'Affix Back Cover for Mi Redmi Note 4', 'Xiomi', '150', '150', '<div id=\"idTextPanel\" class=\"jqDnR\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(102, 102, 102); font-family: Verdana, Geneva, Helvetica, sans-serif; font-size: 11px;\"><p style=\"padding: 0px; line-height: normal; font-family: Verdana, Geneva, sans-serif; font-size: 10px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p><div><br></div></div>						', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-3.jpeg', 'amzer-amz98947-original-2.jpeg', '10', 'In Stock', '2020-05-09 15:04:37', '0000-00-00 00:00:00'),
(18, '1', '19', 'Acer ES 15 Pentium Quad Core', 'Acer', '60000', '60000', '<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Acer ES 15 Pentium Quad Core&nbsp;</span><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Acer ES 15 Pentium Quad Core</span>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', '10', 'In Stock', '2020-05-09 15:07:38', '0000-00-00 00:00:00'),
(19, '1', '19', 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax ', '60000', '60000', '<span style=\"background-color: rgb(249, 249, 249); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Micromax Canvas Laptab II (WIFI) Atom 4th Gen&nbsp;</span><span style=\"background-color: rgb(249, 249, 249); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Micromax Canvas Laptab II (WIFI) Atom 4th Gen</span><span style=\"background-color: rgb(249, 249, 249); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Micromax Canvas Laptab II (WIFI) Atom 4th Gen</span>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', '10', 'In Stock', '2020-05-09 15:11:56', '0000-00-00 00:00:00'),
(20, '1', '19', 'HP Core i5 5th Gen', 'HP', '52000', '52000', '&nbsp;HP Laptop is one of the best product of the worldHP Laptop is one of the best product of the worldHP Laptop is one of the best product of the worldHP Laptop is one of the best product of the world', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', '10', 'In Stock', '2020-05-09 15:13:16', '0000-00-00 00:00:00'),
(21, '1', '19', 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', '60000', '60000', 'LenovoLenovo&nbsp;Lenovo&nbsp;Lenovo', 'lenovo-ideapad-notebook-3.jpeg', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', '10', 'In Stock', '2020-05-09 15:16:28', '0000-00-00 00:00:00'),
(22, '5', '15', 'Induscraft Solid Wood King Bed With Storage', 'Induscraft Solid Wood', '15000', '15000', '<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Induscraft Solid Wood King Bed With Storage</span>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', '10', 'In Stock', '2020-05-09 15:18:01', '0000-00-00 00:00:00'),
(23, '5', '16', 'Nilkamal Ursa Metal Queen Bed', 'Apple', '30000', '30000', '<span style=\"background-color: rgb(249, 249, 249); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Nilkamal Ursa Metal Queen Bed</span><span style=\"background-color: rgb(249, 249, 249); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Nilkamal Ursa Metal Queen Bed</span><span style=\"background-color: rgb(249, 249, 249); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Nilkamal Ursa Metal Queen Bed</span>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', '10', 'In Stock', '2020-05-09 15:21:08', '0000-00-00 00:00:00'),
(24, '6', '18', 'Asian Casuals (White, White)', 'Sony', '1500', '1500', '<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Asian Casuals  (White, White)</span><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Asian Casuals  (White, White)</span><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Asian Casuals  (White, White)</span><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 20px;\">Asian Casuals  (White, White)</span>', '1.jpeg', '2.jpeg', '3.jpeg', '10', 'In Stock', '2020-05-09 15:23:04', '0000-00-00 00:00:00'),
(25, '6', '18', 'Adidas MESSI 16.3 TF Football turf Shoes (Blue)', 'Adidas ', '2000', '2000', 'Adidas&nbsp;Adidas&nbsp;Adidas&nbsp;Adidas&nbsp;Adidas&nbsp;Adidas&nbsp;						', '1.jpeg', '2.jpeg', '3.jpeg', '10', 'In Stock', '2020-05-09 15:25:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productreview`
--

CREATE TABLE `tbl_productreview` (
  `id` int(11) NOT NULL,
  `proid` varchar(255) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `review` text NOT NULL,
  `reviewdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_productreview`
--

INSERT INTO `tbl_productreview` (`id`, `proid`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewdate`) VALUES
(1, '10', '5', '4', '5', 'Mahfujur Rahman', 'demo text', 'demo\r\n', '2020-05-09 17:26:34'),
(2, '10', '5', '4', '5', 'Mahfujur Rahman', 'demo text', 'demo\r\n', '2020-05-09 17:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcat`
--

CREATE TABLE `tbl_subcat` (
  `id` int(11) NOT NULL,
  `catid` varchar(255) NOT NULL,
  `subcat` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subcat`
--

INSERT INTO `tbl_subcat` (`id`, `catid`, `subcat`, `createdate`, `updatedate`) VALUES
(1, '1', 'Mobile', '2020-05-08 07:05:15', '0000-00-00 00:00:00'),
(2, '1', 'Camera', '2020-05-08 07:05:23', '0000-00-00 00:00:00'),
(9, '1', 'Tv', '2020-05-09 14:00:18', '2020-05-09 14:00:18'),
(10, '4', 'Story', '2020-05-09 10:16:14', '0000-00-00 00:00:00'),
(14, '4', 'Comics', '2020-05-09 13:50:24', '0000-00-00 00:00:00'),
(15, '5', 'Beds', '2020-05-09 13:50:48', '0000-00-00 00:00:00'),
(16, '5', 'Sofa', '2020-05-09 13:51:02', '0000-00-00 00:00:00'),
(17, '5', 'Dining Tables', '2020-05-09 13:59:34', '0000-00-00 00:00:00'),
(18, '6', 'Men Footwears', '2020-05-09 14:00:00', '0000-00-00 00:00:00'),
(19, '1', 'Laptops', '2020-05-09 14:09:36', '0000-00-00 00:00:00'),
(20, '1', 'Computer', '2020-05-09 14:09:44', '0000-00-00 00:00:00'),
(21, '1', 'Mobile Accessories', '2020-05-09 14:10:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `shippingaddress` text NOT NULL,
  `shippingstate` varchar(255) NOT NULL,
  `shippingcity` varchar(255) NOT NULL,
  `shippingpincode` varchar(255) NOT NULL,
  `billingaddress` text NOT NULL,
  `billingstate` varchar(255) NOT NULL,
  `billingcity` varchar(255) NOT NULL,
  `billingpincode` varchar(20) NOT NULL,
  `registrationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `contactno`, `password`, `shippingaddress`, `shippingstate`, `shippingcity`, `shippingpincode`, `billingaddress`, `billingstate`, `billingcity`, `billingpincode`, `registrationdate`, `updatedate`) VALUES
(1, 'Mahfujur Rahman', 'admin@admin.com', '01925555115', '21232f297a57a5a743894a0e4a801fc3', 'Gourinagar,Mujibnagar,Mherpur', 'Khulna', 'Meherpur', '150121', 'Gourinagar,Mujibnagar,Mherpur', 'Khulna', 'Meherpur', '150121', '2020-05-10 06:22:11', '2020-05-10 06:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userlog`
--

CREATE TABLE `tbl_userlog` (
  `id` int(11) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `userip` binary(255) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logoutime` varchar(255) NOT NULL,
  `statatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userlog`
--

INSERT INTO `tbl_userlog` (`id`, `useremail`, `userip`, `logintime`, `logoutime`, `statatus`) VALUES
(1, 'admin@admin.com', 0x3a3a31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2020-05-10 03:55:10', '', 1),
(2, 'admin@admin.com', 0x3a3a31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2020-05-10 03:57:17', '', 0),
(3, 'admin@admin.com', 0x3a3a31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2020-05-10 03:57:40', '', 0),
(4, 'admin@admin.com', 0x3a3a31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2020-05-10 06:32:18', '10-05-2020 12:32:18 PM', 1),
(5, 'admin@admin.com', 0x3a3a31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2020-05-10 06:41:15', '10-05-2020 12:41:15 PM', 1),
(6, 'admin@admin.com', 0x3a3a31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2020-05-10 10:47:07', '10-05-2020 04:47:07 PM', 1),
(7, 'admin@admin.com', 0x3a3a31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2020-05-11 15:13:43', '11-05-2020 09:13:43 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `postingdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `userid`, `productid`, `postingdate`) VALUES
(1, '1', '11', '2020-05-10 09:48:50'),
(2, '1', '5', '2020-05-10 09:54:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_oders`
--
ALTER TABLE `tbl_oders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ordertrackhistory`
--
ALTER TABLE `tbl_ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_productreview`
--
ALTER TABLE `tbl_productreview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subcat`
--
ALTER TABLE `tbl_subcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userlog`
--
ALTER TABLE `tbl_userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_oders`
--
ALTER TABLE `tbl_oders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_ordertrackhistory`
--
ALTER TABLE `tbl_ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_productreview`
--
ALTER TABLE `tbl_productreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_subcat`
--
ALTER TABLE `tbl_subcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_userlog`
--
ALTER TABLE `tbl_userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

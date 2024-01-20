-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 20, 2024 at 02:30 AM
-- Server version: 10.5.20-MariaDB-cll-lve-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cnpthbbs_invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `advancehistory`
--

CREATE TABLE `advancehistory` (
  `id` int(11) NOT NULL,
  `Invoice_no` int(150) NOT NULL,
  `Date` date NOT NULL,
  `advance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advancehistory`
--

INSERT INTO `advancehistory` (`id`, `Invoice_no`, `Date`, `advance`) VALUES
(1, 116, '2024-01-13', 500),
(2, 118, '2024-01-13', 50),
(3, 0, '2024-01-19', 500),
(4, 121, '2024-01-13', 786),
(5, 47, '2024-01-13', 500),
(6, 19, '2024-01-13', 5),
(7, 19, '2024-01-13', 5),
(8, 49, '2024-01-17', 500),
(9, 49, '2024-01-17', 500),
(10, 49, '2024-01-17', 250),
(11, 4, '2024-01-18', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `Company_name` varchar(150) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `Gst_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `Company_name`, `Name`, `Phone`, `Email`, `Address`, `Gst_no`) VALUES
(6, 'Coco Farms', 'Mr.Satish Garu', '9885943399', '', 'Y Junction, Chebrolu, Gollaprolu Highway, Kakinada, Andhra Pradesh 533449', ''),
(7, 'Kakinada pharmacy', 'Mr. Raju garu', '8977812367', '', 'Pulavarthi Vari St, Kakinada, Andhra Pradesh 533001', ''),
(8, 'ABC Multispecialty hospital ', 'Mr.Harsh garu', '91777 77277', '', 'pitapuram', ''),
(9, 'MEDENG Collage', 'Mr.Kiran Garu', '+91 99853 81111', '', 'Vijayawada', ''),
(10, 'One stop Vascular', 'Dr.Rahul Garu', '+91 90300 97940', '', 'Hyderabad', ''),
(12, 'oxalate', 'Mr.Raju garu Oxlate', '+91 95818 57857', '', 'Rajamundry', ''),
(13, 'REACH FOREIGN EDUCATION CONSULTANCY SERVICES', 'Mrs.Satya garu', '+91 93474 72799', '', 'kakinada', '');

-- --------------------------------------------------------

--
-- Table structure for table `gst_no`
--

CREATE TABLE `gst_no` (
  `si_No` int(11) NOT NULL,
  `gst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gst_no`
--

INSERT INTO `gst_no` (`si_No`, `gst`) VALUES
(1, 0),
(2, 5),
(3, 12),
(4, 18),
(5, 50),
(6, 20),
(7, 60);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Sid` int(11) NOT NULL,
  `Invoice_no` int(11) NOT NULL,
  `Invoice_date` date NOT NULL,
  `Company_name` varchar(150) NOT NULL,
  `Cname` varchar(50) NOT NULL,
  `Cphone` varchar(150) NOT NULL,
  `Caddress` text NOT NULL,
  `Cmail` varchar(150) NOT NULL,
  `Cgst` varchar(150) NOT NULL,
  `Final` double(10,2) NOT NULL,
  `Gst` int(20) NOT NULL,
  `Gst_total` double(10,2) NOT NULL,
  `Grandtotal` double(10,2) NOT NULL,
  `Totalinwords` text NOT NULL,
  `Terms` text NOT NULL,
  `Note` text NOT NULL,
  `advance` double(10,2) NOT NULL,
  `balance` double(10,2) NOT NULL,
  `balancewords` text NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Sid`, `Invoice_no`, `Invoice_date`, `Company_name`, `Cname`, `Cphone`, `Caddress`, `Cmail`, `Cgst`, `Final`, `Gst`, `Gst_total`, `Grandtotal`, `Totalinwords`, `Terms`, `Note`, `advance`, `balance`, `balancewords`, `status`) VALUES
(33, 1, '2024-01-03', 'Coco Farms ', 'Mr.Satish Garu', '9885943399', ' Y Junction, Chebrolu, Gollaprolu Highway, Kakinada, Andhra Pradesh 533449', '', '', 78820.00, 0, 0.00, 78820.00, 'seventy eight thousand eight hundred and twenty rupees only ', '', '', 0.00, 78820.00, '', 'paid'),
(34, 2, '2024-01-01', 'Kakinada pharmacy', 'Mr. Raju garu', '8977812367', 'Pulavarthi Vari St, Kakinada, Andhra Pradesh 533001', '', '', 3000.00, 18, 540.00, 3540.00, 'three thousand five hundred and forty rupees only ', '', '', 0.00, 3540.00, 'three thousand five hundred and forty rupees only ', 'paid'),
(35, 2, '2024-01-01', 'ABC Multispecialty hospital ', 'Mr.Harsh garu', '91777 77277', 'pitapuram', '', '', 7000.00, 18, 1260.00, 8260.00, 'eight thousand two hundred and sixty rupees only ', '', '', 0.00, 8260.00, 'eight thousand two hundred and sixty rupees only ', 'paid'),
(36, 3, '2024-01-17', 'MEDENG Collage', 'Mr.Kiran Garu', '+91 99853 81111', 'Vijayawada', '', '', 30000.00, 0, 0.00, 30000.00, 'thirty thousand only ', 'Terms and conditions apply.\r\nTotal payment should be advance.\r\n', 'Delivery will be 19-01-2024 or 20-01-204', 0.00, 30000.00, 'thirty thousand only ', 'paid'),
(38, 4, '2024-01-18', 'One stop Vascular', 'Dr.Rahul Garu', '+91 90300 97940', 'Hyderabad', '', '', 300000.00, 0, 0.00, 300000.00, 'three lakh only ', 'Installment 1 = Rs. 1,00,000/-(Done)\r\nInstallment 2 = Rs. 1,00,000/-(23-02-2024)\r\nInstallment 3 = Rs. 1,00,000/-(24-06-2024)\r\n\r\n', 'Terms and conditions apply.', 100000.00, 200000.00, 'two lakh only ', 'paid'),
(39, 5, '2024-01-20', 'oxalate', 'Mr.Raju garu Oxlate', '+91 95818 57857', 'Rajamundry', '', '', 134200.00, 18, 24156.00, 158356.00, 'one lakh fifty eight thousand three hundred and fifty six rupees only ', '1) This is 1st phase it will be 20-01-2024 to 15-02-2024(if payment done before 23-01-2024)\r\n2) Will visit 2 times in this period.\r\n3) terms and conditions apply.', '1)Training period valid for one year will visit every 45 days.\r\n2)monthly 2 google meets with team and take reports and implements.\r\n3)Designing set only one set between valid dates.\r\n4)Website making and 1 year maintenance.', 0.00, 158356.00, 'one lakh fifty eight thousand three hundred and fifty six rupees only ', 'paid'),
(40, 6, '2024-01-20', 'REACH FOREIGN EDUCATION CONSULTANCY SERVICES', 'Mrs.Satya garu', '+91 93474 72799', 'Kakinada', '', '', 61800.00, 0, 0.00, 61800.00, 'sixty one thousand eight hundred only ', 'terms and conditions apply.\r\n', '1st Phase - 20-01-2024 to 10-02-2024', 0.00, 61800.00, 'sixty one thousand eight hundred only ', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `Sid` int(11) NOT NULL,
  `quotation_no` int(11) NOT NULL,
  `quotation_date` date NOT NULL,
  `Company_name` varchar(150) NOT NULL,
  `Cname` varchar(50) NOT NULL,
  `Cphone` varchar(150) NOT NULL,
  `Caddress` text NOT NULL,
  `Cmail` varchar(150) NOT NULL,
  `Cgst` varchar(150) NOT NULL,
  `Final` double(10,2) NOT NULL,
  `Gst` int(20) NOT NULL,
  `Gst_total` double(10,2) NOT NULL,
  `Grandtotal` double(10,2) NOT NULL,
  `Totalinwords` text NOT NULL,
  `Terms` text NOT NULL,
  `Note` text NOT NULL,
  `advance` double(10,2) NOT NULL,
  `balance` double(10,2) NOT NULL,
  `balancewords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`Sid`, `quotation_no`, `quotation_date`, `Company_name`, `Cname`, `Cphone`, `Caddress`, `Cmail`, `Cgst`, `Final`, `Gst`, `Gst_total`, `Grandtotal`, `Totalinwords`, `Terms`, `Note`, `advance`, `balance`, `balancewords`) VALUES
(1, 3, '2024-01-20', 'REACH FOREIGN EDUCATION CONSULTANCY SERVICES', 'Mrs.Satya garu', '+91 93474 72799', 'Kakinada', '', '', 57000.00, 0, 0.00, 57000.00, 'fifty seven thousand only ', 'Terms and conditions apply', '', 0.00, 57000.00, 'fifty seven thousand only ');

-- --------------------------------------------------------

--
-- Table structure for table `quservice`
--

CREATE TABLE `quservice` (
  `Id` int(11) NOT NULL,
  `Sid` int(11) NOT NULL,
  `Sname` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Qty` int(11) NOT NULL,
  `Price` double(10,2) NOT NULL,
  `Totalprice` double(10,2) NOT NULL,
  `Discount` int(20) NOT NULL,
  `Finaltotal` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quservice`
--

INSERT INTO `quservice` (`Id`, `Sid`, `Sname`, `Description`, `Qty`, `Price`, `Totalprice`, `Discount`, `Finaltotal`) VALUES
(1, 1, 'Google My Business', 'dfgdsfg', 2, 50.00, 100.00, 5, 95),
(2, 1, 'Log-Design', 'fdgfdg', 5, 50.00, 250.00, 5, 238),
(3, 2, 'Website', 'dfgdfg', 50, 50.00, 2500.00, 5, 2375),
(4, 3, 'Social Media Management', 'dgdsfg', 50, 50.00, 2500.00, 8, 2300),
(5, 4, 'Log-Design', '', 50, 5.00, 250.00, 5, 238),
(6, 5, 'Log-Design', 'dhffghfg', 50, 5.00, 250.00, 5, 238),
(7, 5, 'SEO', 'hgfhgf', 80, 5.00, 400.00, 5, 380),
(8, 5, 'Letter Heads', 'dhfhdghgfh', 80, 5.00, 400.00, 8, 368),
(9, 0, 'Log-Design', 'testing', 1, 23.00, 23.00, 0, 23),
(10, 6, 'Log-Design', 'test', 1, 23.00, 23.00, 0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `Id` int(11) NOT NULL,
  `Sid` int(11) NOT NULL,
  `Sname` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Qty` int(11) NOT NULL,
  `Price` double(10,2) NOT NULL,
  `Totalprice` double(10,2) NOT NULL,
  `Discount` int(20) NOT NULL,
  `Finaltotal` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`Id`, `Sid`, `Sname`, `Description`, `Qty`, `Price`, `Totalprice`, `Discount`, `Finaltotal`) VALUES
(1, 1, 'Printing', '', 5, 10.00, 50.00, 5, 48),
(2, 2, 'Log-Design', '', 2, 10.00, 200.00, 5, 48),
(3, 2, 'Image Designing', '', 5, 20.00, 100.00, 2, 98),
(4, 3, 'Log-Design', '', 2, 10.00, 200.00, 5, 48),
(5, 4, 'Log-Design', '', 2, 10.00, 200.00, 5, 48),
(6, 5, 'Log-Design', '', 2, 10.00, 200.00, 5, 48),
(7, 6, 'Log-Design', 'hfghgfh', 2, 10.00, 200.00, 5, 48),
(8, 6, 'Log-Design', 'fdhgfdfh', 5, 20.00, 100.00, 2, 98),
(9, 7, 'Log-Design', 'fgjjngfjhngfjhgfhjgggggggggggggggggggggggfhgj', 5, 20.00, 100.00, 5, 95),
(10, 7, 'Social Media Management', 'dsgfdgdrfxhgfdhgfjhgfjhhgjytghhgjjhggggggggggggggggggggggggggggghj', 5, 20.00, 100.00, 3, 97),
(11, 7, 'Log-Design', '', 1, 565.00, 444.00, 959, 44),
(12, 7, 'Log-Design', '', 1, 565.00, 444.00, 959, 44),
(13, 8, 'Image Designing', 'hgjhgjhgj', 2, 20.00, 40.00, 5, 38),
(14, 9, 'Video Creation', '', 2, 20.00, 40.00, 5, 38),
(15, 10, 'Video Creation', '', 2, 20.00, 40.00, 5, 38),
(16, 11, 'Video Creation', '', 2, 20.00, 40.00, 5, 38),
(17, 12, 'Log-Design', '', 2, 20.00, 40.00, 5, 38),
(18, 13, 'Log-Design', '', 2, 20.00, 40.00, 5, 38),
(19, 14, 'Letter Heads', 'jhgbcfcdjhggj', 2, 20.00, 40.00, 5, 38),
(20, 14, 'Pamphlet', 'fjhghfjytgjytfj', 2, 50.00, 100.00, 5, 95),
(21, 15, 'Letter Heads', 'jhgbcfcdjhggj', 2, 20.00, 40.00, 5, 38),
(22, 15, 'Pamphlet', 'fjhghfjytgjytfj', 2, 50.00, 100.00, 5, 95),
(23, 16, 'Log-Design', 'fdhxhbfgh', 2, 20.00, 40.00, 5, 38),
(24, 17, 'Image Designing', 'gdfgd', 2, 20.00, 40.00, 5, 38),
(25, 18, 'physiotherapy report', '10 days unadu', 10, 5000.00, 50000.00, 10, 45000),
(26, 19, 'Website', 'i need good pics', 2, 10.00, 20.00, 5, 19),
(27, 20, 'Google My Business', '', 2, 50.00, 100.00, 5, 95),
(28, 21, 'Log-Design', '', 2, 50.00, 100.00, 5, 95),
(29, 21, 'Visiting Cards', '', 5, 20.00, 100.00, 1, 99),
(30, 21, 'Visiting Cards', '', 8, 50.00, 400.00, 5, 380),
(31, 21, 'Letter Heads', '', 5, 20.00, 100.00, 5, 95),
(32, 21, 'Visiting Cards', '', 8, 50.00, 400.00, 5, 380),
(33, 21, 'Flex', '', 8, 50.00, 400.00, 0, 400),
(34, 21, 'Pamphlet', '', 20, 8.00, 160.00, 0, 160),
(35, 21, 'Printing', '', 80, 9.00, 720.00, 0, 720),
(36, 21, 'Visiting Cards', '', 8, 1.00, 8.00, 2, 8),
(37, 21, 'Social Media Management', '', 8, 64.00, 512.00, 2, 502),
(38, 22, 'Log-Design', '', 2, 50.00, 100.00, 5, 95),
(39, 22, 'Visiting Cards', '', 5, 20.00, 100.00, 1, 99),
(40, 22, 'Visiting Cards', '', 8, 50.00, 400.00, 5, 380),
(41, 22, 'Letter Heads', '', 5, 20.00, 100.00, 5, 95),
(42, 22, 'Visiting Cards', '', 8, 50.00, 400.00, 5, 380),
(43, 22, 'Flex', '', 8, 50.00, 400.00, 0, 400),
(44, 22, 'Pamphlet', '', 20, 8.00, 160.00, 0, 160),
(45, 22, 'Printing', '', 80, 9.00, 720.00, 0, 720),
(46, 22, 'Visiting Cards', '', 8, 1.00, 8.00, 2, 8),
(47, 22, 'Social Media Management', '', 8, 64.00, 512.00, 2, 502),
(48, 23, 'Log-Design', '', 2, 50.00, 100.00, 5, 95),
(49, 23, 'Log-Design', '', 5, 20.00, 100.00, 1, 99),
(50, 23, 'Log-Design', '', 8, 50.00, 400.00, 5, 380),
(51, 23, 'Log-Design', '', 5, 20.00, 100.00, 5, 95),
(52, 23, 'Log-Design', '', 8, 50.00, 400.00, 5, 380),
(53, 23, 'Log-Design', '', 8, 50.00, 400.00, 0, 400),
(54, 23, 'Log-Design', '', 20, 8.00, 160.00, 0, 160),
(55, 23, 'Log-Design', '', 80, 9.00, 720.00, 0, 720),
(56, 23, 'Log-Design', '', 8, 1.00, 8.00, 2, 8),
(57, 23, 'Log-Design', '', 8, 50.00, 400.00, 2, 392),
(58, 23, 'Log-Design', '', 2, 10.00, 20.00, 2, 20),
(59, 23, 'Log-Design', '', 5, 10.00, 50.00, 2, 49),
(60, 23, 'Log-Design', '', 5, 10.00, 50.00, 5, 48),
(61, 23, 'Log-Design', '', 2, 20.00, 40.00, 5, 38),
(62, 23, 'Log-Design', '', 1, 10.00, 10.00, 5, 10),
(63, 23, 'Log-Design', '', 1, 5000.00, 5000.00, 8, 4600),
(64, 23, 'Log-Design', '', 1, 5000.00, 5000.00, 5, 4750),
(65, 23, 'Log-Design', '', 10, 5000.00, 50000.00, 8, 46000),
(66, 23, 'Log-Design', '', 2, 10.00, 20.00, 5, 19),
(67, 23, 'Log-Design', '', 10, 10.00, 100.00, 9, 91),
(68, 23, 'Log-Design', '', 1, 50.00, 50.00, 4, 48),
(69, 23, 'Log-Design', '', 10, 50.00, 500.00, 2, 490),
(70, 24, 'Log-Design', '', 2, 20.00, 40.00, 5, 38),
(71, 25, 'Log-Design', 'dsfewsfdfgdsfgdsgd', 2, 20.00, 40.00, 5, 38),
(72, 26, 'Log-Design', 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrtttttttttttttttrtuytiuytkm,jhmherghreirhgfierfgejbdsjhewuyefguyerbevfvyyeguer', 23, 22.00, 506.00, 3, 491),
(73, 26, 'Visiting Cards', 'dfvrgbthnyu', 22, 22.00, 484.00, 3, 469),
(74, 26, 'Calenders', 'trgtrhtytjhytjhtjytj', 22, 22.00, 484.00, 2, 474),
(75, 27, 'Log-Design', 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 23, 22.00, 506.00, 3, 491),
(76, 27, 'Visiting Cards', 'dfvrgbthnyu', 22, 22.00, 484.00, 3, 469),
(77, 27, 'Calenders', 'trgtrhtytjhytjhtjytj', 22, 22.00, 484.00, 2, 474),
(78, 28, 'Log-Design', 'fdsdffffffffffffffffffffffffhfgrdtrhtryrhtrhghbnhtyyyyyyyyyyyyyyyyyyyyyyyyytrhtyyyyyyyyyyyhhhhhhhhhhhhhrtythjhytytytytyt', 2, 50.00, 100.00, 5, 95),
(79, 29, 'Log-Design', 'i need good logo with 1515*20', 45, 5000.00, 225000.00, 5, 213750),
(80, 30, 'Log-Design', 'i need good logo with 1515*20', 45, 5000.00, 225000.00, 5, 213750),
(81, 31, 'Log-Design', 'dffgggdsdsdsdsdsdsgfdggggggf', 50, 100.00, 5000.00, 5, 4750),
(82, 32, 'Log-Design', 'ggggggggggggggggggggggggggggggggggg', 4, 40.00, 160.00, 11, 142),
(83, 33, 'Demo tents', '6*6', 3, 7000.00, 21000.00, 13, 18270),
(84, 33, 'Pamphlet', '3 sets ,  3k, 3k and 2k', 8000, 2.50, 20000.00, 10, 18000),
(85, 33, 'Brouchers', '4 fold browser', 500, 14.00, 7000.00, 10, 6300),
(86, 33, 'Social Media Influencers ', 'total 15 pages , 3 sets', 3, 7300.00, 21900.00, 0, 21900),
(87, 33, 'Fb/insta ads', '3 ad sets CPM (Cost per message)', 310, 35.00, 10850.00, 0, 10850),
(88, 33, 'Fb/insta ads', 'reach ad(7days)', 7, 500.00, 3500.00, 0, 3500),
(89, 34, 'Social Media Management', '', 1, 3000.00, 3000.00, 0, 3000),
(90, 35, 'Social Media Management', '', 1, 7000.00, 7000.00, 0, 7000),
(91, 36, 'Pamphlet', '90 GSM , b&b Multi color, art paper', 20000, 0.80, 16000.00, 0, 16000),
(92, 36, 'Stickers', 'A3 stickers', 1000, 14.00, 14000.00, 0, 14000),
(93, 37, 'Website', 'dfgdfg', 50, 50.00, 2500.00, 5, 2375),
(94, 38, 'Branding', 'Digital Marketing', 1, 300000.00, 300000.00, 0, 300000),
(95, 39, 'Google My Business', 'Optimization like services add, pics and proper response on reviews', 1, 3000.00, 3000.00, 10, 2700),
(96, 39, 'Website', 'Dynamic Website with ui/ux design and 1 year maintenance', 1, 50000.00, 50000.00, 15, 42500),
(97, 39, 'Social Media Management', 'Social media optimization , fb,insta,pinterest and linkedin', 1, 6000.00, 6000.00, 0, 6000),
(98, 39, 'Designing Set', 'Visiting cards,PPT,Pamphelts,brousers and required designs', 1, 20000.00, 20000.00, 0, 20000),
(99, 39, 'Training', 'Employees hiring and training', 1, 70000.00, 70000.00, 10, 63000),
(100, 40, 'Google My Business', '', 1, 3000.00, 3000.00, 20, 2400),
(101, 40, 'Website', 'Dynamic website with ui/ux with 1 year militance', 1, 40000.00, 40000.00, 10, 36000),
(102, 40, 'Designing Set', 'Animation videos, required designs for 1st phase', 1, 20000.00, 20000.00, 10, 18000),
(103, 40, 'Social Media Management', 'optimization and will create if any ', 1, 6000.00, 6000.00, 10, 5400);

-- --------------------------------------------------------

--
-- Table structure for table `service_names`
--

CREATE TABLE `service_names` (
  `si_No` int(11) NOT NULL,
  `service_Name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_names`
--

INSERT INTO `service_names` (`si_No`, `service_Name`) VALUES
(1, 'Log-Design'),
(2, 'Google My Business'),
(3, 'Website'),
(4, 'Social Media Management'),
(5, 'Image Designing'),
(6, 'Video Creation'),
(7, 'Video Editing'),
(8, 'SEO'),
(9, 'Printing'),
(10, 'Visiting Cards'),
(11, 'Letter Heads'),
(12, 'Pamphlet'),
(13, 'Flex'),
(14, 'Brouchers'),
(15, 'Viny Stickers'),
(16, 'Calenders'),
(17, 'Diary'),
(21, 'Demo tents'),
(22, 'Social Media Influencers '),
(23, 'Fb/insta ads'),
(24, 'browser'),
(25, 'Stickers'),
(26, 'Branding'),
(27, 'Training'),
(28, 'Designing Set'),
(29, 'Visiting charge');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advancehistory`
--
ALTER TABLE `advancehistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `gst_no`
--
ALTER TABLE `gst_no`
  ADD PRIMARY KEY (`si_No`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`Sid`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`Sid`);

--
-- Indexes for table `quservice`
--
ALTER TABLE `quservice`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `service_names`
--
ALTER TABLE `service_names`
  ADD PRIMARY KEY (`si_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advancehistory`
--
ALTER TABLE `advancehistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gst_no`
--
ALTER TABLE `gst_no`
  MODIFY `si_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quservice`
--
ALTER TABLE `quservice`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `service_names`
--
ALTER TABLE `service_names`
  MODIFY `si_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

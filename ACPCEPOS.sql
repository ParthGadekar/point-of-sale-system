-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2020 at 03:37 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ACPCEPOS`
--

-- --------------------------------------------------------

--
-- Table structure for table `Card`
--

CREATE TABLE `Card` (
  `cardnumber` varchar(20) NOT NULL DEFAULT '',
  `customerid` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `lastuseddate` varchar(15) NOT NULL,
  `registerdate` varchar(15) NOT NULL,
  `expireddate` varchar(15) NOT NULL,
  `pin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Card`
--

INSERT INTO `Card` (`cardnumber`, `customerid`, `amount`, `lastuseddate`, `registerdate`, `expireddate`, `pin`) VALUES
('7777771117770001122', '11001', '383784.0', '23/08/2020', '01/02/2019', '02/08/2020', 8756),
('7777771117770001123', '11002', '476394.0', '19/08/2019', '01/01/2019', '02/08/2020', 4574),
('7777771117770001124', '11003', '17035.0', '23/08/2020', '07/07/2019', '02/08/2020', 9764),
('7777771117770001125', '11004', '56900.0', '06/08/2019', '22/07/2019', '02/08/2020', 1245),
('7777771117770001126', '11006', '38646.0', '12/08/2019', '30/07/2019', '02/08/2020', 8728),
('7777771117770001127', '11012', '50000', '09/08/2019', '09/08/2019', '09/08/2021', 2356),
('7777771117770001128', '11005', '20000', '22/07/2019', '22/07/2019', '22/07/2020', 7354),
('7777771117770001129', '11007', '26373.0', '19/08/2019', '01/08/2019', '01/08/2020', 3258),
('7777771117770001130', '11008', '67114.0', '19/08/2019', '01/08/2019', '01/08/2020', 5696),
('7777771117770001131', '11009', '98290.0', '19/08/2019', '01/08/2019', '01/08/2020', 8450),
('7777771117770001132', '11010', '25000', '19/08/2019', '02/08/2019', '02/08/2020', 2233),
('7777771117770001133', '11011', '150000.0', '19/08/2019', '04/08/2019', '01/01/1970', 6833),
('7777771117770001137', '11013', '5000', '19/08/2019', '09/08/2019', '09/08/2021', 3697),
('7777771117770001138', '11014', '50000', '19/08/2019', '09/08/2019', '09/08/2021', 7623),
('7777771117770001139', '11015', '110000.0', '20/08/2019', '19/08/2019', '19/08/2021', 4855),
('7777771117770001141', '11017', '60000.0', '19/08/2019', '19/08/2019', '19/08/2021', 9324),
('7777771117770001142', '11018', '50000.0', '19/08/2019', '19/08/2019', '19/08/2021', 9849);


-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`id`, `name`, `age`, `gender`, `address`, `phone`, `email`, `password`, `date created`) VALUES
(11001, 'Spandan', 19, 'male', 'Koperkhairne', '09082138328', 'spandu500@gmail.com', 'cashier', '12/12/2019'),
(11002, 'Anuj', 20, 'male', 'Nerul', '5345311313', 'agop@gmail.com', 'cashier', '07/07/2020'),
(11003, 'Mayur', 19, 'male', 'Sanpada', '09698763333', 'mayur69@mail.com', 'cashier', '21/07/2020'),
(11004, 'Abhishek', 20, 'male', 'Kharghar', '09796656567', 'AKG99@gmail.com', 'cashier', '21/10/2020'),
(11005, 'Harsh', 20, 'male', 'Chembur', '09896649118', 'harshmakwana2805@gmail.com', 'cashier', '07/08/2020');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`id`, `name`, `age`, `gender`, `address`, `phone`, `email`) VALUES
('11001', 'John Doe', '21', 'male', 'abc street', '09256048382', 'jd@gmail.com'),
('11002', 'Carl Johnson', '20', 'male', 'grove street', '09433143333', 'cj@pm.me'),
('11003', 'Lewis', '20', 'male', 'hill street', '09399391187', 'unboxt@gmail.com'),
('11004', 'Parth G', '18', 'male', 'BARC', '09733434398', 'pygadekar@acpce.ac.in'),
('11005', 'Neha', '21', 'female', 'N.A', '0945343544', 'n95@gmail.com'),
('11006', 'Umya', '52', 'male', 'Thane', '095345353888', 'umya@yahoo.com'),
('11007', 'Varun B', '19', 'male', 'Ghatkoper', '097848583453', 'bolide69@mail.com'),
('11008', 'Arun M', '33', 'male', 'Riverdale', '0956465463', 'mrboss@gmail.com'),
('11009', 'Ashish B', '19', 'male', 'Vashi', '09435353400', 'ahbruh@gmail.com'),
('11010', 'Arthur M', '45', 'male', 'Horseshoe Overlook', '0935345345', 'armrdr2@rockstar.north');


-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `id` int(20) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `datecreated` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`id`, `name`, `datecreated`) VALUES
(10001, 'Commodity', '20/06/2019'),
(10002, 'Cosmetic', '20/06/2019'),
(10003, 'Stationary', '20/06/2019'),
(10004, 'Beverages', '20/06/2019'),
(10005, 'Snacks', '20/06/2019'),
(10006, 'Diary Products', '20/06/2019'),
(10007, 'Bread And Cake', '20/06/2019'),
(10008, 'Medicine', '20/06/2019');

-- --------------------------------------------------------

--
-- Table structure for table `productitems`
--

CREATE TABLE `productitems` (
  `name` varchar(100) NOT NULL,
  `categoryid` int(20) NOT NULL,
  `dateadded` varchar(20) NOT NULL,
  `expireddate` varchar(20) NOT NULL,
  `price` varchar(30) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  `supplierid` int(20) NOT NULL,
  `stockamount` varchar(30) NOT NULL,
  `count` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productitems`
--

INSERT INTO `productitems` (`name`, `categoryid`, `dateadded`, `expireddate`, `price`, `barcode`, `supplierid`, `stockamount`, `count`) VALUES
('Oreo', 10005, '02/08/2020', '02/10/2021', '20', '777456235986', 10001, '500', 43),
('Kurkure', 10005, '02/11/2019', '02/11/2021', '15', '777456235987', 10001, '483', 30),
('Bisleri 1L', 10002, '02/08/2019', '20/08/2020', '18', '777456235989', 11007, '495', 113),
('Sensodyne', 10001, '02/10/2020', '02/08/2023', '120', '777456235990', 11005, '497', 25),
('Hair Dye', 10001, '02/08/2019', '02/08/2025', '300', '777456235991', 11005, '495', 36),
('Pencil', 10003, '02/08/2020', '00/00/0000', '12', '777456235992', 11004, '492', 105),
('Notebook', 10003, '02/08/2019', '00/00/0000', '80', '777456235993', 11004, '477', 69),
('Tur Daal 250g', 10006, '02/08/2020', '02/12/2020', '25', '777456235996', 11003, '478', 42),
('Amul Butter', 10006, '02/09/2020', '02/01/2021', '50', '777456235997', 11003, '491', 42),
('N95 Mask', 10007, '02/12/2020', '22/12/2020', '200', '777456235998', 11006, '476', 71),
('Fudo Cake', 10007, '02/08/2019', '20/08/2019', '4000', '777456235999', 11006, '478', 36),
('Glucon D', 10008, '02/08/2019', '02/08/2021', '70', '777456236000', 11005, '494', 35),
('Ruler', 10003, '02/08/2019', '00/00/0000', '5', '777456236008', 11004, '490', 256),
('Whitener', 10003, '02/08/2019', '02/08/2023', '20', '777456236009', 11004, '495', 126),
('BournVita', 10002, '02/08/2019', '02/08/2021', '299', '777456236010', 10001, '495', 117),
('Reynolds Jiffy', 10008, '02/08/2019', '02/08/2021', '10', '777456236011', 10001, '474', 132),
('Good Knight', 10001, '02/08/2019', '02/08/2023', '65', '777456236012', 11005, '450', 218),
('Soy Milk 1L', 10004, '04/08/2019', '04/08/2020', '60', '777456236013', 11003, '447', 211),
('Unit Eraser', 10003, '06/08/2019', '00/00/0000', '3', '777456236014', 11008, '490', 23),
('Tissue', 10001, '07/08/2019', '07/08/2020', '70', '777456236015', 11005, '463', 56),
('Honey', 10005, '23/08/2020', '12/08/2022', '250', '777456236016', 11004, '1000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL,
  `productid` varchar(30) DEFAULT NULL,
  `percentage` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `name`, `productid`, `percentage`, `description`) VALUES
('110001', 'Rainy Season Promo', '777456235993', '0', 'Buy 5 Get 1'),
('110002', 'Back to School', '777456235992', '15', 'Buy 0 Get 0'),
('110003', 'Independence Celebration', '777456236005', '0', 'Buy 2 Get 1'),
('110004', 'Grand Promotion', '777456236003', '0', 'Buy 3 Get 1'),
('110005', 'Diwali Sale', '777456235997', '0', 'Buy 2 Get 1'),
('110006', 'Welcome School', '777456236004', '10', 'Buy 0 Get 0'),
('110007', 'New Year Sale', '777456236014', '10', 'Buy 0 Get 0'),
('110008', 'Welcome Store', '777456236012', '0', 'Buy 2 Get 1'),
('110009', 'End of Season Sale', '777456236013', '30', 'Buy 0 Get 0');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `cashierid` int(30) NOT NULL,
  `barcode` varchar(700) NOT NULL,
  `quantity` varchar(300) NOT NULL,
  `totalamount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `date`, `time`, `cashierid`, `barcode`, `quantity`, `totalamount`) VALUES
(11003, '01/01/2020', '11:47', 11001, '777456235992,', '4,', '50000'),
(11004, '01/02/2020', '11:47', 11001, '777456235992,', '4,', '600000'),
(11005, '01/03/2020', '11:47', 11001, '777456235992,', '4,', '4000'),
(11006, '01/04/2020', '11:47', 11001, '777456235992,', '4,', '700000'),
(11007, '01/05/2020', '11:47', 11001, '777456235992,', '4,', '800000'),
(11008, '01/06/2020', '11:47', 11001, '777456235992,', '4,', '70000'),
(11009, '01/07/2020', '11:47', 11001, '777456235992,', '4,', '900000'),
(11011, '01/08/2020', '11:47', 11001, '777456235992,', '4,', '1000'),
(11012, '02/08/2020', '13:24:40', 11001, '777456236001,777456236000,777456235997,777456235995,777456235994,777456235993,777456235992,777456235991,777456235990,777456235989,777456235988,777456235987,777456235986,', '2,2,1,8,10,1,8,3,2,1,1,1,6,', '158760.0'),
(11115, '08/08/2020', '13:24:40', 11002, '777456236012,', '1,', '2000.0'),
(11116, '08/08/2020', '13:24:40', 11003, '777456236010,', '1,', '5500.0'),
(11117, '08/08/2020', '23 : 1', 11003, '777456236014,', '1,', '229.5'),
(11118, '09/08/2020', '13:24:40', 11002, '777456236013,', '1,', '420.0'),
(11119, '09/08/2020', '13:24:40', 11002, '777456236008,', '1,', '500.0'),
(11120, '09/08/2020', '10 : 32', 11002, '777456236012,', '1,', '1700.0'),
(11121, '09/08/2020', '13:24:40', 11003, '777456236009,', '1,', '1200.0'),
(11122, '09/08/2020', '13:24:40', 11002, '777456236011,777456236007,', '1,1,', '7600.0'),
(11123, '09/08/2020', '21 : 33', 11002, '777456236012,777456236014,777456236005,', '1,1,5,', '44429.5'),
(11124, '09/08/2020', '21 : 34', 11002, '777456236015,777456236008,777456236011,777456236005,777456236003,777456235991,', '5,1,5,2,2,3,', '146200.0'),
(11125, '09/08/2020', '21 : 35', 11002, '777456236015,777456236011,', '1,66,', '392955.0'),
(11126, '09/08/2020', '21 : 38', 11002, '777456236010,777456236007,', '80,17,', '382670.0'),
(11127, '09/08/2020', '13:24:40', 11002, '777456236013,777456236009,', '1,1,', '1620.0'),
(11128, '09/08/2020', '13:24:40', 11003, '777456236013,', '1,', '420.0'),
(11129, '10/08/2020', '13:24:40', 11002, '777456236014,', '1,', '270.0'),
(11130, '10/08/2020', '13:24:40', 11002, '777456236011,', '1,', '7000.0'),
(11131, '10/08/2020', '13:24:40', 11002, '777456236013,', '1,', '420.0'),
(11132, '10/08/2020', '13:24:40', 11002, '777456236009,', '1,', '1200.0'),
(11133, '10/08/2020', '13:24:40', 11002, '777456236009,', '1,', '1200.0'),
(11134, '10/08/2020', '13:24:40', 11002, '777456236009,', '1,', '1200.0'),
(11135, '10/08/2020', '13:24:40', 11002, '777456236009,', '1,', '1200.0'),
(11136, '12/08/2020', '13:24:40', 11002, '777456236009,777456236011,777456236008,', '2,1,1,', '9900.0'),
(11137, '12/08/2020', '13:24:40', 11002, '777456236015,', '1,', '300.0'),
(11138, '12/08/2020', '13:24:40', 11002, '777456236011,', '1,', '7000.0'),
(11139, '12/08/2020', '13 : 44', 11002, '777456236006,777456236010,777456236011,777456236005,777456236004,777456236003,', '1,1,1,1,1,4,', '92097.5'),
(11140, '12/08/2020', '13:24:40', 11003, '777456236012,777456236011,', '1,3,', '23000.0'),
(11141, '12/08/2020', '13:24:40', 11002, '777456236014,', '8,', '2160.0'),
(11142, '12/08/2020', '13:24:40', 11002, '777456236006,', '1,', '4500.0'),
(11143, '12/08/2020', '13:24:40', 11002, '777456236014,', '1,', '270.0'),
(11144, '12/08/2020', '16 : 0', 11001, '777456235990,777456235991,777456235995,777456235998,777456236013,', '9,5,50,30,50,', '320280.0'),
(11145, '12/08/2020', '16 : 2', 11002, '777456236013,777456236007,777456235995,777456235994,', '50,51,70,60,', '142460.0'),
(11146, '12/08/2020', '16 : 5', 11002, '777456235994,777456235995,', '1,1,', '1530.0'),
(11147, '12/08/2020', '16 : 7', 11002, '777456235992,777456236004,777456236001,777456236006,777456235989,', '1,1,1,1,1,', '15189.5'),
(11148, '12/08/2020', '16 : 11', 11002, '777456235989,777456236002,', '1,1,', '5652.5'),
(11149, '12/08/2020', '16 : 12', 11002, '777456236007,', '18,', '9180.0'),
(11150, '12/08/2020', '16 : 13', 11002, '777456235996,777456236013,777456236003,777456235998,', '1,50,1,1,', '42075.0'),
(11151, '12/08/2020', '16 : 14', 11002, '777456236012,777456236012,777456235996,', '1,1,1,', '5525.0'),
(11152, '12/08/2020', '16 : 15', 11002, '777456236012,777456235993,777456235990,777456235992,', '1,1,1,1,', '4267.0'),
(11153, '12/08/2020', '16 : 18', 11002, '777456236013,777456236000,777456235999,', '1,1,1,', '5032.0'),
(11154, '14/08/2020', '15 : 28', 11002, '777456236015,777456236010,777456236008,777456236006,777456236005,', '1,1,1,1,1,', '17680.0'),
(11155, '14/08/2020', '15 : 28', 11002, '777456236012,777456236004,', '69,50,', '174675.0'),
(11156, '14/08/2020', '15 : 29', 11002, '777456235988,', '49,', '749700.0'),
(11157, '14/08/2020', '15 : 35', 11003, '777456236013,', '30,', '10710.0'),
(11158, '15/08/2020', '13:24:40', 11001, '777456235987,', '1,', '2000.0'),
(11159, '15/08/2020', '12 : 45', 11001, '777456235987,777456236002,777456235994,777456235995,777456235996,', '10,1,15,15,8,', '57502.5'),
(11160, '15/08/2020', '12 : 46', 11001, '777456235988,777456236009,777456236014,777456236015,', '1,1,1,1,', '16804.5'),
(11161, '15/08/2020', '12 : 47', 11001, '777456236002,777456236003,777456236007,', '1,4,6,', '71612.5'),
(11162, '15/08/2020', '12 : 50', 11002, '777456235999,777456235998,777456236011,', '7,6,8,', '102000.0'),
(11163, '15/08/2020', '13:24:40', 11003, '777456236015,777456236011,777456236005,777456236003,777456236000,777456235999,777456235998,', '1,2,1,1,1,2,3,', '71800.0'),
(11164, '16/08/2020', '10 : 29', 11002, '777456236014,777456236012,777456236011,777456236007,777456236005,', '1,1,1,1,1,', '16889.5'),
(11165, '16/08/2020', '10 : 29', 11002, '777456235986,777456235987,777456235988,', '1,1,3,', '49300.0'),
(11166, '16/08/2020', '10 : 30', 11002, '777456235999,777456235998,777456236012,', '10,9,5,', '88400.0'),
(11167, '17/08/2020', '13:24:40', 11002, '777456236003,', '1,', '20000.0'),
(11168, '17/08/2020', '13:24:40', 11002, '777456236005,777456236003,', '1,4,', '90000.0'),
(11169, '17/08/2020', '13 : 17', 11002, '777456236015,777456236014,777456236013,777456236012,777456236011,777456236010,777456236009,777456236008,777456236007,777456236006,777456236005,777456236004,777456236003,777456236002,777456236001,777456236000,777456235999,777456235998,777456235997,777456235996,777456235995,777456235994,777456235993,777456235992,777456235991,777456235990,777456235989,777456235988,777456235987,777456235986,', '15,2,10,2,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,', '125681.0'),
(11170, '17/08/2020', '13:24:40', 11002, '777456236015,777456236014,777456236012,', '6,1,1,', '4070.0'),
(11171, '17/08/2020', '13 : 43', 11002, '777456235986,777456235992,777456235993,777456236011,', '1,1,4,3,', '23137.0'),
(11172, '18/08/2020', '19 : 15', 11003, '777456236015,777456236013,777456236010,777456236012,777456236013,777456236014,777456236008,777456236006,777456236004,777456236005,777456235992,777456235993,777456235994,777456235995,777456235996,777456235997,777456235998,777456235999,777456236000,777456236001,777456236002,777456236003,', '1,5,1,8,2,4,3,5,1,1,4,1,1,1,1,1,1,1,1,1,1,6,', '180625.0'),
(11173, '18/08/2020', '13:24:40', 11003, '777456235992,777456236003,777456236014,777456236011,777456236012,', '1,2,1,1,4,', '56290.0'),
(11174, '18/08/2020', '20 : 5', 11003, '777456236002,777456235988,777456236012,777456235998,777456235995,777456235997,', '1,1,1,1,1,4,', '40332.5'),
(11175, '19/08/2020', '13:24:40', 11002, '777456236010,777456236004,777456236007,', '1,2,6,', '11800.0'),
(11176, '19/08/2020', '13:24:40', 11002, '777456236010,777456236004,777456236008,777456236005,777456235993,', '1,1,1,1,7,', '22950.0'),
(11177, '19/08/2020', '13 : 57', 11002, '777456235996,', '5,', '10625.0'),
(11178, '19/08/2020', '13:24:40', 11003, '777456236010,777456236001,777456236003,777456236006,777456236009,777456235998,777456235988,777456235993,777456235996,', '1,1,1,1,1,1,1,7,1,', '68300.0'),
(11179, '19/08/2020', '14 : 35', 11002, '777456236012,777456236000,777456236001,', '9,1,8,', '50575.0'),
(11180, '19/08/2020', '15 : 35', 11003, '777456236015,777456236011,777456236008,777456236009,777456236005,777456236006,777456236003,777456236002,777456236001,777456236000,777456235999,777456235998,777456235997,777456235996,777456235995,777456235994,777456235992,777456235991,777456235990,777456235989,777456235986,777456235987,', '1,1,1,1,1,1,1,1,1,1,1,1,1,6,1,1,1,1,1,1,1,1,', '101719.5'),
(11181, '19/08/2020', '13:24:40', 11003, '777456236011,777456236009,777456236006,', '1,1,1,', '12700.0'),
(11182, '20/08/2020', '13:24:40', 11001, '777456236011,', '8,', '56000.0'),
(11183, '20/08/2020', '13:24:40', 11001, '777456236005,', '1,', '10000.0'),
(11184, '20/08/2020', '13:24:40', 11005, '777456235991,777456235986,777456235987,', '3,1,3,', '83000.0'),
(11185, '20/08/2020', '10 : 26', 11005, '777456236013,777456236003,', '6,3,', '53142.0'),
(11186, '23/08/2020', '13:24:40', 11001, '777456236012,777456236008,777456236005,777456236015,', '3,1,5,2,', '57900.0'),
(11187, '23/08/2020', '13:24:40', 11001, '777456236015,777456235993,777456235989,', '10,2,3,', '26600.0'),
(11188, '23/08/2020', '9 : 23', 11001, '777456235998,777456235993,777456235990,', '1,1,1,', '6800.0'),
(11189, '23/08/2020', '9 : 24', 11001, '777456235997,', '1,', '4250.0'),
(11190, '23/08/2020', '13:24:40', 11001, '777456235997,777456235986,777456236000,', '1,2,1,', '10500.0');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(20) NOT NULL,
  `companyname` varchar(30) NOT NULL,
  `lastdatesupplied` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `companyname`, `lastdatesupplied`) VALUES
(10001, 'United Carbide', '09/12/2020'),
(10002, 'JCE', '02/12/2020'),
(11003, 'Anand Milk United Ltd', '04/11/2020'),
(11004, 'ITC', '23/10/2020'),
(11005, 'Smitch Company', '07/12/2019'),
(11006, 'Hindustan Unilever', '02/09/2020'),
(11007, 'Heinz Food', '09/10/2019'),
(11008, 'Bisleri Water', '06/08/2019');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` varchar(40) NOT NULL,
  `cashierid` varchar(40) NOT NULL,
  `cardid` varchar(30) NOT NULL,
  `purchaseid` varchar(30) NOT NULL,
  `amount` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `cashierid`, `cardid`, `purchaseid`, `amount`) VALUES
('11111', '11001', '7777771117770001122', '11031', '5000'),
('11112', '11002', '7777771117770001122', '11032', '510.0'),
('11113', '11001', '7777771117770001122', '11033', '4675.0'),
('11114', '11001', '7777771117770001131', '11035', '36720.0'),
('11115', '11001', '7777771117770001130', '11036', '12835.0'),
('11116', '11002', '7777771117770001123', '11068', '37791.0'),
('11117', '11002', '7777771117770001123', '11069', '44625.0'),
('11118', '11002', '7777771117770001123', '11073', '425.0'),
('11119', '11002', '7777771117770001122', '11075', '425.0'),
('11120', '11002', '7777771117770001122', '11076', '41429.0'),
('11121', '11002', '7777771117770001130', '11078', '4675.0'),
('11122', '11003', '7777771117770001130', '11080', '70499.0'),
('11123', '11003', '7777771117770001130', '11081', '94877.0'),
('11124', '11002', '7777771117770001122', '11083', '15300.0'),
('11125', '11003', '7777771117770001124', '11089', '22967.0'),
('11126', '11002', '7777771117770001125', '11091', '5100.0'),
('11127', '11002', '7777771117770001126', '11092', '1530.0'),
('11128', '11002', '7777771117770001123', '11095', '36550.0'),
('11129', '11002', '7777771117770001122', '11096', '5100.0'),
('11130', '11002', '7777771117770001123', '11098', '15300.0'),
('11131', '11002', '7777771117770001124', '11105', '1700.0'),
('11132', '11002', '7777771117770001124', '11106', '10098.0'),
('11133', '11002', '7777771117770001122', '11108', '2550.0'),
('11134', '11002', '7777771117770001122', '11109', '469200.0'),
('11135', '11002', '7777771117770001122', '11110', '34000.0'),
('11136', '11002', '7777771117770001122', '11111', '91800.0'),
('11137', '11002', '7777771117770001122', '11112', '20825.0'),
('11138', '11002', '7777771117770001122', '11114', '1700.0'),
('11139', '11003', '7777771117770001122', '11117', '229.5'),
('11140', '11002', '7777771117770001122', '11120', '1700.0'),
('11141', '11002', '7777771117770001122', '11123', '44429.5'),
('11142', '11002', '7777771117770001122', '11124', '146200.0'),
('11143', '11002', '7777771117770001122', '11125', '392955.0'),
('11144', '11002', '7777771117770001122', '11126', '382670.0'),
('11145', '11002', '7777771117770001122', '11139', '92097.5'),
('11146', '11001', '7777771117770001131', '11144', '320280.0'),
('11147', '11002', '7777771117770001131', '11145', '142460.0'),
('11148', '11002', '7777771117770001129', '11146', '1530.0'),
('11149', '11002', '7777771117770001129', '11147', '15189.5'),
('11150', '11002', '7777771117770001129', '11148', '5652.5'),
('11151', '11002', '7777771117770001129', '11149', '9180.0'),
('11152', '11002', '7777771117770001129', '11150', '42075.0'),
('11153', '11002', '7777771117770001126', '11151', '5525.0'),
('11154', '11002', '7777771117770001126', '11152', '4267.0'),
('11155', '11002', '7777771117770001126', '11153', '5032.0'),
('11156', '11002', '7777771117770001122', '11154', '17680.0'),
('11157', '11002', '7777771117770001122', '11155', '174675.0'),
('11158', '11002', '7777771117770001122', '11156', '749700.0'),
('11159', '11003', '7777771117770001122', '11157', '10710.0'),
('11160', '11001', '7777771117770001122', '11159', '57502.5'),
('11161', '11001', '7777771117770001122', '11160', '16804.5'),
('11162', '11001', '7777771117770001122', '11161', '71612.5'),
('11163', '11002', '7777771117770001122', '11162', '102000.0'),
('11164', '11002', '7777771117770001122', '11164', '16889.5'),
('11165', '11002', '7777771117770001122', '11165', '49300.0'),
('11166', '11002', '7777771117770001122', '11166', '88400.0'),
('11167', '11002', '7777771117770001122', '11169', '125681.0'),
('11168', '11002', '7777771117770001122', '11171', '23137.0'),
('11169', '11003', '7777771117770001122', '11172', '180625.0'),
('11170', '11003', '7777771117770001122', '11174', '40332.5'),
('11171', '11002', '7777771117770001122', '11177', '10625.0'),
('11172', '11002', '7777771117770001122', '11179', '50575.0'),
('11173', '11003', '7777771117770001122', '11180', '101719.5'),
('11174', '11005', '7777771117770001122', '11185', '53142.0'),
('11175', '11001', '7777771117770001122', '11188', '6800.0'),
('11176', '11001', '7777771117770001122', '11189', '4250.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Card`
--
ALTER TABLE `Card`
  ADD PRIMARY KEY (`cardnumber`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productitems`
--
ALTER TABLE `productitems`
  ADD PRIMARY KEY (`barcode`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

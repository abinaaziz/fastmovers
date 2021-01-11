-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2020 at 06:01 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_fastmovers`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_login`
--

CREATE TABLE IF NOT EXISTS `tbl_admin_login` (
  `adminID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`adminID`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin_login`
--

INSERT INTO `tbl_admin_login` (`adminID`, `userName`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_approximate_wages`
--

CREATE TABLE IF NOT EXISTS `tbl_approximate_wages` (
  `approximateWagesID` int(11) NOT NULL AUTO_INCREMENT,
  `siteID` int(11) NOT NULL,
  `approximateWages` float NOT NULL,
  `approximateVehicleCharge` float NOT NULL,
  `anyExtraCharges` float NOT NULL,
  `approximateServiceCharge` float NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`approximateWagesID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_approximate_wages`
--

INSERT INTO `tbl_approximate_wages` (`approximateWagesID`, `siteID`, `approximateWages`, `approximateVehicleCharge`, `anyExtraCharges`, `approximateServiceCharge`, `description`, `status`) VALUES
(5, 1, 5000, 2500, 500, 1000, 'Good', 0),
(6, 2, 4500, 3500, 0, 245, 'Nil', 0),
(7, 3, 200, 100, 20, 20, 'bad Road', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assigned_vehicle`
--

CREATE TABLE IF NOT EXISTS `tbl_assigned_vehicle` (
  `assignedVehicleID` int(11) NOT NULL AUTO_INCREMENT,
  `siteID` int(11) NOT NULL,
  `vehicleID` int(11) NOT NULL,
  `workedDate` varchar(20) NOT NULL,
  `totalDistance` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`assignedVehicleID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_assigned_vehicle`
--

INSERT INTO `tbl_assigned_vehicle` (`assignedVehicleID`, `siteID`, `vehicleID`, `workedDate`, `totalDistance`, `status`) VALUES
(1, 1, 1, '2020-11-19', 45, 0),
(2, 1, 1, '2020-11-18', 500, 0),
(3, 2, 1, '2020-11-10', 150, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assigned_worker`
--

CREATE TABLE IF NOT EXISTS `tbl_assigned_worker` (
  `assignedWorkerID` int(11) NOT NULL AUTO_INCREMENT,
  `siteID` int(11) NOT NULL,
  `dailyWorkerID` int(11) NOT NULL,
  `workedDate` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`assignedWorkerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_assigned_worker`
--

INSERT INTO `tbl_assigned_worker` (`assignedWorkerID`, `siteID`, `dailyWorkerID`, `workedDate`, `status`) VALUES
(1, 1, 4, '2020-11-09', 0),
(2, 1, 4, '2020-11-09', 0),
(3, 1, 5, '2020-11-18', 0),
(6, 2, 6, '2020-10-25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buildingcategory`
--

CREATE TABLE IF NOT EXISTS `tbl_buildingcategory` (
  `buildingCategoryID` int(10) NOT NULL AUTO_INCREMENT,
  `buildingCategoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`buildingCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_buildingcategory`
--

INSERT INTO `tbl_buildingcategory` (`buildingCategoryID`, `buildingCategoryName`) VALUES
(1, 'House'),
(3, 'Flat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contacts`
--

CREATE TABLE IF NOT EXISTS `tbl_contacts` (
  `contactID` int(11) NOT NULL AUTO_INCREMENT,
  `contactName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_contacts`
--

INSERT INTO `tbl_contacts` (`contactID`, `contactName`, `email`, `message`, `status`) VALUES
(1, 'Shainas PA ', 'shainas69@gmail.com', 'Please send the contact details of department Head', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daily_workers`
--

CREATE TABLE IF NOT EXISTS `tbl_daily_workers` (
  `dailyWorkerID` int(11) NOT NULL AUTO_INCREMENT,
  `staffCategoryID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `dailyWages` float NOT NULL,
  `commission` float NOT NULL,
  `address` varchar(200) NOT NULL,
  `postbox` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `aadarNumber` varchar(20) NOT NULL,
  `contactNumber` varchar(20) NOT NULL,
  `mobileNumber` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profilePicture` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dailyWorkerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_daily_workers`
--

INSERT INTO `tbl_daily_workers` (`dailyWorkerID`, `staffCategoryID`, `firstName`, `dailyWages`, `commission`, `address`, `postbox`, `place`, `pincode`, `aadarNumber`, `contactNumber`, `mobileNumber`, `email`, `profilePicture`, `status`) VALUES
(4, 3, 'Anu', 5000, 500, 'Perumpillil', 'udumbannoor', 'Thadiyanpadu', '645256', 's@gnm.com', '424569783658', '048622245628', '9447859625', 'IMG_1421.jpg', 0),
(5, 5, 'Danny', 3500, 250, 'Dag H', 'Uppala', 'Kasargod', '852369', '0484526396', '9447586932', 'dany@gmail.com', '8125147852369', 'IMG_1226.jpg', 0),
(6, 1, 'Sari', 5000, 250, 'Cappli', 'Darmapuri', 'Goa', '253674', '253685414563', '0484562389', '9447562341', 'Shanu@gamil.com', 'IMG_1279.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE IF NOT EXISTS `tbl_district` (
  `districtID` int(10) NOT NULL AUTO_INCREMENT,
  `stateID` int(11) NOT NULL,
  `districtName` varchar(50) NOT NULL,
  PRIMARY KEY (`districtID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`districtID`, `stateID`, `districtName`) VALUES
(1, 1, 'Idukki'),
(2, 1, 'Kannoor'),
(3, 4, 'Coimbattoor'),
(4, 4, 'Trichi'),
(5, 1, 'Kottayam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expence_category`
--

CREATE TABLE IF NOT EXISTS `tbl_expence_category` (
  `expenceCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `expenceCategoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`expenceCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_expence_category`
--

INSERT INTO `tbl_expence_category` (`expenceCategoryID`, `expenceCategoryName`) VALUES
(12, 'Service Charge'),
(13, 'Office Expense'),
(14, 'Loading Colee'),
(15, 'Unloading Colee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expence_details`
--

CREATE TABLE IF NOT EXISTS `tbl_expence_details` (
  `expenceID` int(10) NOT NULL AUTO_INCREMENT,
  `expenceCategoryID` int(10) NOT NULL,
  `siteID` int(11) NOT NULL,
  `expenceName` varchar(50) NOT NULL,
  `expenceDate` varchar(20) NOT NULL,
  `expenceMadeBy` varchar(50) NOT NULL,
  `expenceAmount` varchar(50) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`expenceID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tbl_expence_details`
--

INSERT INTO `tbl_expence_details` (`expenceID`, `expenceCategoryID`, `siteID`, `expenceName`, `expenceDate`, `expenceMadeBy`, `expenceAmount`, `discription`, `status`) VALUES
(15, 13, 3, '5000', '2020-11-11', 'Daniel', '35000', 'Nil', 0),
(16, 14, 3, 'Colle', '2020-11-11', 'Raju R', '2000', 'Nil', 0),
(17, 12, 3, 'Toll Gate Charge', '2020-11-11', 'Danny', '500', 'Nil', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE IF NOT EXISTS `tbl_item` (
  `itemID` int(11) NOT NULL AUTO_INCREMENT,
  `siteID` int(11) NOT NULL,
  `thingsCategoryID` int(11) NOT NULL,
  `thingsName` varchar(50) NOT NULL,
  `count` float NOT NULL,
  `weight` varchar(50) NOT NULL,
  `mass` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`itemID`, `siteID`, `thingsCategoryID`, `thingsName`, `count`, `weight`, `mass`, `status`) VALUES
(3, 1, 1, 'Cabord', 2, '25 Kg', '450', 0),
(4, 1, 1, 'Multi Purpose Chair', 1, '45', '250', 0),
(5, 1, 1, 'Dangle Chaair', 10, '5Kg', '45', 0),
(6, 2, 1, 'Double Chair', 5, '45 KG', '450', 0),
(7, 3, 1, 'Folder Chair', 100, '25 Kg', '450', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE IF NOT EXISTS `tbl_payments` (
  `paymentID` int(11) NOT NULL AUTO_INCREMENT,
  `siteID` int(11) NOT NULL,
  `payedAmount` float NOT NULL,
  `payedDate` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_payments`
--

INSERT INTO `tbl_payments` (`paymentID`, `siteID`, `payedAmount`, `payedDate`, `status`) VALUES
(1, 1, 913, '2020/11/07', 0),
(2, 1, 913, '2020/11/07', 0),
(3, 3, 134, '2020/11/07', 0),
(4, 1, 4500, '2020/11/10', 0),
(5, 1, 38000, '2020/11/10', 0),
(6, 1, 19, '2020/11/10', 0),
(7, 3, 38000, '2020/11/10', 0),
(8, 2, 829.5, '2020/11/11', 0),
(9, 2, 18095.5, '2020/11/11', 0),
(10, 3, 366, '2020/11/11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_details`
--

CREATE TABLE IF NOT EXISTS `tbl_salary_details` (
  `salaryDetailsID` int(11) NOT NULL AUTO_INCREMENT,
  `staffID` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `allowdedCasualLeaves` int(11) NOT NULL,
  `salaryDate` date NOT NULL,
  `description` varchar(5000) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salaryDetailsID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_salary_details`
--

INSERT INTO `tbl_salary_details` (`salaryDetailsID`, `staffID`, `salary`, `allowdedCasualLeaves`, `salaryDate`, `description`, `status`) VALUES
(1, 1, 75000, 4, '2017-04-20', 'Salary Will Credit into your Account', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_register`
--

CREATE TABLE IF NOT EXISTS `tbl_site_register` (
  `siteID` int(5) NOT NULL AUTO_INCREMENT,
  `userID` int(5) NOT NULL,
  `buildingCategoryID` int(5) NOT NULL,
  `moveFromPlace` varchar(50) NOT NULL,
  `moveFromAddress` varchar(200) NOT NULL,
  `moveFromDistrictID` int(5) NOT NULL,
  `moveFromStateID` int(5) NOT NULL,
  `siteImage` varchar(50) NOT NULL,
  `moveToPlace` varchar(50) NOT NULL,
  `moveToAddress` varchar(200) NOT NULL,
  `moveToDistrictID` int(5) NOT NULL,
  `moveToStateID` int(5) NOT NULL,
  `startDate` varchar(50) NOT NULL,
  `finishDate` varchar(50) NOT NULL,
  `distance` varchar(50) NOT NULL,
  `roadType` varchar(50) NOT NULL,
  `currentDate` varchar(50) NOT NULL,
  `finishedDate` varchar(50) NOT NULL DEFAULT '0',
  `status` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`siteID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_site_register`
--

INSERT INTO `tbl_site_register` (`siteID`, `userID`, `buildingCategoryID`, `moveFromPlace`, `moveFromAddress`, `moveFromDistrictID`, `moveFromStateID`, `siteImage`, `moveToPlace`, `moveToAddress`, `moveToDistrictID`, `moveToStateID`, `startDate`, `finishDate`, `distance`, `roadType`, `currentDate`, `finishedDate`, `status`) VALUES
(1, 1, 1, 'Pariyaram', 'peru', 1, 1, 'IMG_1078.jpg', 'Thodupuzha', 'kothy', 3, 4, '2020-11-10', '2020-11-30', '25km', 'high way', '2020/11/06', '2020/11/11', 3),
(2, 1, 3, 'Pala', 'Ramess House\r\nKattachira Po\r\nKidagoor\r\nPin 685545', 5, 1, 'IMG_1477.jpg', 'Thodupuzha', 'KBS Colany\r\nKothai Circle\r\nNear Private Bus Stand\r\nPin 562154\r\n', 1, 1, '2020-11-10', '2020-11-30', '35 Km', 'NH 47', '2020/11/07', '2020/10/11', 3),
(3, 1, 3, 'Pariyaram', 'Udumbannoor Po\r\nKaramannu\r\nPin 685595', 1, 1, 'IMG_1344.jpg', 'Karimannoor', 'Neyyassery Po\r\nKadavunkal\r\nPin 594265', 1, 1, '2020-11-12', '2020-11-12', '10 Km', '10 Feet Width Road', '2020/11/07', '2020/11/11', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff_category`
--

CREATE TABLE IF NOT EXISTS `tbl_staff_category` (
  `staffCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `staffCategoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`staffCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_staff_category`
--

INSERT INTO `tbl_staff_category` (`staffCategoryID`, `staffCategoryName`) VALUES
(1, 'Forest Guard'),
(2, 'Forest Jeep Driver'),
(3, 'Forest Ranger'),
(4, 'Forest Office Staff'),
(5, 'Office Staff');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff_details`
--

CREATE TABLE IF NOT EXISTS `tbl_staff_details` (
  `staffID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `postbox` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contactNumber` varchar(50) NOT NULL,
  `mobileNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `dateOfBirth` varchar(50) NOT NULL,
  `maritalStatus` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `recoveryQuestion` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `staffCategoryID` int(11) NOT NULL,
  `profilePicture` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`staffID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_staff_details`
--

INSERT INTO `tbl_staff_details` (`staffID`, `firstName`, `lastName`, `address`, `postbox`, `place`, `pincode`, `state`, `district`, `gender`, `contactNumber`, `mobileNumber`, `email`, `qualification`, `dateOfBirth`, `maritalStatus`, `userName`, `password`, `recoveryQuestion`, `answer`, `staffCategoryID`, `profilePicture`, `status`) VALUES
(1, 'Shanu', 'Mon KV', 'Kavalath HouseMurikkasseru\r\nIdukki', 'Kanath', 'Thadiyanpadu', '654123', '1', '2', 'Male', '04862224562', '9447859625', 'Shanu@gamil.com', 'BCA', '1950-11-13', 'Married', 'shanu', 'shanu', 'Nick Name', 'Shanu', 1, 'IMG_1265.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE IF NOT EXISTS `tbl_state` (
  `stateID` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(50) NOT NULL,
  PRIMARY KEY (`stateID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`stateID`, `stateName`) VALUES
(1, 'Kerala'),
(2, 'Karnataka'),
(3, 'Delhi'),
(4, 'Tamilnadu'),
(6, 'Goa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thingscategory`
--

CREATE TABLE IF NOT EXISTS `tbl_thingscategory` (
  `thingsCategoryID` int(10) NOT NULL AUTO_INCREMENT,
  `thingsCategoryName` varchar(50) NOT NULL,
  `thingsServiceCharge` float NOT NULL,
  PRIMARY KEY (`thingsCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_thingscategory`
--

INSERT INTO `tbl_thingscategory` (`thingsCategoryID`, `thingsCategoryName`, `thingsServiceCharge`) VALUES
(1, 'Wooden Chair', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_details`
--

CREATE TABLE IF NOT EXISTS `tbl_user_details` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `postbox` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contactNumber` varchar(50) NOT NULL,
  `mobileNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `maritalStatus` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `recoveryQuestion` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `profilePicture` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_user_details`
--

INSERT INTO `tbl_user_details` (`userID`, `firstName`, `lastName`, `address`, `postbox`, `place`, `pincode`, `district`, `state`, `gender`, `contactNumber`, `mobileNumber`, `email`, `qualification`, `dateOfBirth`, `maritalStatus`, `userName`, `password`, `recoveryQuestion`, `answer`, `profilePicture`, `status`) VALUES
(1, 'Arun', 'Madhavan', 'Karikkal H\r\nCheruthoni\r\nIdukki', 'Vellayamkudy', 'Kattapana', '684578', '1', '5', 'male', '04862272501', '8281880860', 'arun@gamil.com', 'SSLC', '1995-05-12', 'single', 'arun', 'arun', 'Favourite Place', 'Goa', 'IMG_1971.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_category`
--

CREATE TABLE IF NOT EXISTS `tbl_vehicle_category` (
  `vehicleCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleCategoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`vehicleCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_vehicle_category`
--

INSERT INTO `tbl_vehicle_category` (`vehicleCategoryID`, `vehicleCategoryName`) VALUES
(1, 'Pick Up'),
(2, 'Cargo Van'),
(3, 'Lorry');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_details`
--

CREATE TABLE IF NOT EXISTS `tbl_vehicle_details` (
  `vehicleID` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleCategoryID` int(11) NOT NULL,
  `vehicleNumber` varchar(20) NOT NULL,
  `perKmCharge` float NOT NULL,
  `commission` float NOT NULL,
  `company` varchar(50) NOT NULL,
  `modelName` varchar(50) NOT NULL,
  `profilePicture` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vehicleID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_vehicle_details`
--

INSERT INTO `tbl_vehicle_details` (`vehicleID`, `vehicleCategoryID`, `vehicleNumber`, `perKmCharge`, `commission`, `company`, `modelName`, `profilePicture`, `status`) VALUES
(1, 1, 'KL6 12456', 12, 1.5, 'Mahindra', 'H12', 'IMG_1841.jpg', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

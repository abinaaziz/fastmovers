-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2020 at 11:22 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_aquaponics`
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
(1, 'adm', 'adm');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_daily_workers`
--

INSERT INTO `tbl_daily_workers` (`dailyWorkerID`, `staffCategoryID`, `firstName`, `dailyWages`, `commission`, `address`, `postbox`, `place`, `pincode`, `aadarNumber`, `contactNumber`, `mobileNumber`, `email`, `profilePicture`, `status`) VALUES
(4, 3, 'Anu', 5000, 500, 'Perumpillil', 'udumbannoor', 'Thadiyanpadu', '645256', 's@gnm.com', '424569783658', '048622245628', '9447859625', 'IMG_1421.jpg', 0),
(5, 5, 'Danny', 3500, 250, 'Dag H', 'Uppala', 'Kasargod', '852369', '0484526396', '9447586932', 'dany@gmail.com', '8125147852369', 'IMG_1226.jpg', 0),
(6, 1, 'Sari', 5000, 250, 'Cappli', 'Darmapuri', 'Goa', '253674', '253685414563', '0484562389', '9447562341', 'Shanu@gamil.com', 'IMG_1279.jpg', 0),
(7, 1, '4', 4, 4, '4', '4', '4', '4', '424569783658', '4', '4', 's@hhh.bnn', 'IMG_1982.png', 0);

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
-- Table structure for table `tbl_farmbed_mechanism_details`
--

CREATE TABLE IF NOT EXISTS `tbl_farmbed_mechanism_details` (
  `farmbedMechanismID` int(11) NOT NULL AUTO_INCREMENT,
  `farmbedMechanismName` varchar(50) NOT NULL,
  `costOfMakingMechanism` float NOT NULL,
  `discription` varchar(50) NOT NULL,
  PRIMARY KEY (`farmbedMechanismID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_farmbed_mechanism_details`
--

INSERT INTO `tbl_farmbed_mechanism_details` (`farmbedMechanismID`, `farmbedMechanismName`, `costOfMakingMechanism`, `discription`) VALUES
(1, 'Plastc Sheet', 50, 'Nil');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feed_details`
--

CREATE TABLE IF NOT EXISTS `tbl_feed_details` (
  `feedID` int(11) NOT NULL AUTO_INCREMENT,
  `feedName` varchar(50) NOT NULL,
  `actualRate` float NOT NULL,
  `sellingRate` float NOT NULL,
  `weight` varchar(50) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`feedID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_feed_details`
--

INSERT INTO `tbl_feed_details` (`feedID`, `feedName`, `actualRate`, `sellingRate`, `weight`, `discription`, `status`) VALUES
(2, 'Growel .20 28protien', 450, 500, '10Kg', 'Nil', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_filter_category`
--

CREATE TABLE IF NOT EXISTS `tbl_filter_category` (
  `filterCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `filterCategoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`filterCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_filter_category`
--

INSERT INTO `tbl_filter_category` (`filterCategoryID`, `filterCategoryName`) VALUES
(1, 'Airator'),
(2, 'Blower'),
(4, 'Air Compressor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_filter_details`
--

CREATE TABLE IF NOT EXISTS `tbl_filter_details` (
  `filterID` int(11) NOT NULL AUTO_INCREMENT,
  `filterCategoryID` int(11) NOT NULL,
  `filterName` varchar(50) NOT NULL,
  `actualRate` float NOT NULL,
  `sellingRate` float NOT NULL,
  `capasity` varchar(50) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`filterID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_filter_details`
--

INSERT INTO `tbl_filter_details` (`filterID`, `filterCategoryID`, `filterName`, `actualRate`, `sellingRate`, `capasity`, `discription`, `status`) VALUES
(1, 1, '3', 333, 6, '3', 'Nil', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fish_details`
--

CREATE TABLE IF NOT EXISTS `tbl_fish_details` (
  `fishID` int(11) NOT NULL AUTO_INCREMENT,
  `fishName` varchar(50) NOT NULL,
  `actualRate` float NOT NULL,
  `sellingRate` float NOT NULL,
  `seedSize` varchar(50) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fishID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_fish_details`
--

INSERT INTO `tbl_fish_details` (`fishID`, `fishName`, `actualRate`, `sellingRate`, `seedSize`, `discription`, `status`) VALUES
(1, 'thilop[a', 7, 7, '7', 'NilNil', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE IF NOT EXISTS `tbl_payments` (
  `paymentID` int(11) NOT NULL AUTO_INCREMENT,
  `pondID` int(11) NOT NULL,
  `payedAmount` float NOT NULL,
  `payedDate` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_payments`
--

INSERT INTO `tbl_payments` (`paymentID`, `pondID`, `payedAmount`, `payedDate`, `status`) VALUES
(11, 4, 323940, '2020/11/22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pondcategory`
--

CREATE TABLE IF NOT EXISTS `tbl_pondcategory` (
  `pondCategoryID` int(10) NOT NULL AUTO_INCREMENT,
  `pondCategoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`pondCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_pondcategory`
--

INSERT INTO `tbl_pondcategory` (`pondCategoryID`, `pondCategoryName`) VALUES
(1, 'House'),
(3, 'Flat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pond_mechanism_details`
--

CREATE TABLE IF NOT EXISTS `tbl_pond_mechanism_details` (
  `pondMechanismID` int(11) NOT NULL AUTO_INCREMENT,
  `pondMechanismName` float NOT NULL,
  `costOfMakingMechanism` varchar(50) NOT NULL,
  `discription` varchar(200) NOT NULL,
  PRIMARY KEY (`pondMechanismID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_pond_mechanism_details`
--

INSERT INTO `tbl_pond_mechanism_details` (`pondMechanismID`, `pondMechanismName`, `costOfMakingMechanism`, `discription`) VALUES
(1, 0, '500', 'Nil'),
(2, 0, '500', 'Nil'),
(3, 0, '500', 'Nil'),
(4, 0, '66', 'Nil');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pond_register`
--

CREATE TABLE IF NOT EXISTS `tbl_pond_register` (
  `pondID` int(5) NOT NULL AUTO_INCREMENT,
  `userID` int(5) NOT NULL,
  `pondCategoryID` int(5) NOT NULL,
  `pondImage` varchar(50) NOT NULL,
  `pondAria` varchar(50) NOT NULL,
  `farmBedAria` varchar(50) NOT NULL,
  `pondPlace` varchar(50) NOT NULL,
  `pondAddress` varchar(200) NOT NULL,
  `stateID` int(11) NOT NULL,
  `districtID` int(11) NOT NULL,
  `startDate` varchar(50) NOT NULL,
  `finishDate` varchar(50) NOT NULL,
  `currentDate` varchar(50) NOT NULL,
  `finishedDate` varchar(50) NOT NULL DEFAULT '0',
  `status` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pondID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_pond_register`
--

INSERT INTO `tbl_pond_register` (`pondID`, `userID`, `pondCategoryID`, `pondImage`, `pondAria`, `farmBedAria`, `pondPlace`, `pondAddress`, `stateID`, `districtID`, `startDate`, `finishDate`, `currentDate`, `finishedDate`, `status`) VALUES
(4, 1, 3, 'IMG_1261.jpg', '450', '300', 'Udumbannoor', 'Perum H', 1, 1, '2022-11-27', '2022-11-17', '2020/11/18', '0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_secondary_layer_details`
--

CREATE TABLE IF NOT EXISTS `tbl_secondary_layer_details` (
  `secondaryLayerID` int(11) NOT NULL AUTO_INCREMENT,
  `secondaryLayerName` varchar(50) NOT NULL,
  `costOfMakingSecondaryLayer` float NOT NULL,
  `discription` varchar(200) NOT NULL,
  PRIMARY KEY (`secondaryLayerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_secondary_layer_details`
--

INSERT INTO `tbl_secondary_layer_details` (`secondaryLayerID`, `secondaryLayerName`, `costOfMakingSecondaryLayer`, `discription`) VALUES
(1, 'Tarpololin', 434, 'Nil'),
(4, '4', 45, 'Nil'),
(5, '4', 45, 'Nil');

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
-- Table structure for table `tbl_testkit_details`
--

CREATE TABLE IF NOT EXISTS `tbl_testkit_details` (
  `testkitID` int(11) NOT NULL AUTO_INCREMENT,
  `testkitName` varchar(50) NOT NULL,
  `actualRate` float NOT NULL,
  `sellingRate` float NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`testkitID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_testkit_details`
--

INSERT INTO `tbl_testkit_details` (`testkitID`, `testkitName`, `actualRate`, `sellingRate`, `quantity`, `discription`, `status`) VALUES
(1, 'Amonia', 34, 34, '43', 'NilNil', 0);

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
-- Table structure for table `tbl_verified_feed_details`
--

CREATE TABLE IF NOT EXISTS `tbl_verified_feed_details` (
  `verifiedFeedID` int(11) NOT NULL AUTO_INCREMENT,
  `pondID` int(11) NOT NULL,
  `feedID` int(11) NOT NULL,
  `quantityOfFeed` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`verifiedFeedID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_verified_feed_details`
--

INSERT INTO `tbl_verified_feed_details` (`verifiedFeedID`, `pondID`, `feedID`, `quantityOfFeed`, `status`) VALUES
(1, 4, 2, 50, 0),
(2, 4, 2, 50, 0),
(3, 4, 2, 58, 0),
(4, 4, 2, 45, 0),
(5, 4, 2, 45, 0),
(6, 4, 2, 65, 0),
(7, 4, 2, 65, 0),
(8, 4, 2, 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verified_filter_details`
--

CREATE TABLE IF NOT EXISTS `tbl_verified_filter_details` (
  `verifiedFilterID` int(11) NOT NULL AUTO_INCREMENT,
  `pondID` int(11) NOT NULL,
  `filterID` int(11) NOT NULL,
  `countOfFilters` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`verifiedFilterID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_verified_filter_details`
--

INSERT INTO `tbl_verified_filter_details` (`verifiedFilterID`, `pondID`, `filterID`, `countOfFilters`, `status`) VALUES
(2, 4, 1, 5, 0),
(3, 4, 1, 5, 0),
(4, 4, 1, 45, 0),
(5, 4, 1, 25, 0),
(6, 4, 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verified_fish_details`
--

CREATE TABLE IF NOT EXISTS `tbl_verified_fish_details` (
  `verifiedFishID` int(11) NOT NULL AUTO_INCREMENT,
  `pondID` int(11) NOT NULL,
  `fishID` int(11) NOT NULL,
  `countOfFishs` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`verifiedFishID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_verified_fish_details`
--

INSERT INTO `tbl_verified_fish_details` (`verifiedFishID`, `pondID`, `fishID`, `countOfFishs`, `status`) VALUES
(1, 4, 1, 1000, 0),
(2, 4, 1, 100, 0),
(3, 4, 1, 58, 0),
(4, 4, 1, 250, 0),
(5, 4, 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verified_otherrequiements_details`
--

CREATE TABLE IF NOT EXISTS `tbl_verified_otherrequiements_details` (
  `verifiedOtherRequirementsID` int(11) NOT NULL AUTO_INCREMENT,
  `pondID` int(11) NOT NULL,
  `otherRequirementsName` varchar(50) NOT NULL,
  `quantityOfOtherRequirements` varchar(50) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`verifiedOtherRequirementsID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_verified_otherrequiements_details`
--

INSERT INTO `tbl_verified_otherrequiements_details` (`verifiedOtherRequirementsID`, `pondID`, `otherRequirementsName`, `quantityOfOtherRequirements`, `discription`, `status`) VALUES
(1, 4, 'Bio', '2', 'nedded', 0),
(2, 4, '252', '52', '525', 0),
(3, 4, '8', '8', '8', 0),
(4, 4, 'r', '7', '7', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verified_pond_mechanism`
--

CREATE TABLE IF NOT EXISTS `tbl_verified_pond_mechanism` (
  `verifiedPondMechanismID` int(11) NOT NULL AUTO_INCREMENT,
  `pondID` int(11) NOT NULL,
  `pondShape` varchar(50) NOT NULL,
  `pondMechanismID` int(11) NOT NULL,
  `secondaryLayerID` int(11) NOT NULL,
  `farmbedMechanismID` int(11) NOT NULL,
  PRIMARY KEY (`verifiedPondMechanismID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_verified_pond_mechanism`
--

INSERT INTO `tbl_verified_pond_mechanism` (`verifiedPondMechanismID`, `pondID`, `pondShape`, `pondMechanismID`, `secondaryLayerID`, `farmbedMechanismID`) VALUES
(1, 4, 'Round', 2, 1, 1),
(2, 4, 'Round', 2, 4, 1),
(3, 4, 'Round', 2, 4, 1),
(4, 4, 'Round', 2, 4, 1),
(5, 4, 'Round', 2, 4, 1),
(6, 4, 'Round', 1, 1, 1),
(7, 4, 'Round', 1, 1, 1),
(8, 4, 'Round', 1, 1, 1),
(9, 4, 'Round', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verified_testkit_details`
--

CREATE TABLE IF NOT EXISTS `tbl_verified_testkit_details` (
  `verifiedTestkitID` int(11) NOT NULL AUTO_INCREMENT,
  `pondID` int(11) NOT NULL,
  `testkitID` int(11) NOT NULL,
  `countOfTestkits` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`verifiedTestkitID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_verified_testkit_details`
--

INSERT INTO `tbl_verified_testkit_details` (`verifiedTestkitID`, `pondID`, `testkitID`, `countOfTestkits`, `status`) VALUES
(1, 4, 1, 15, 0),
(2, 4, 1, 50, 0),
(3, 4, 1, 5, 0),
(4, 4, 1, 50, 0),
(5, 4, 1, 58, 0),
(6, 4, 1, 5, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 03:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veterinary_clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `animalID` int(20) NOT NULL,
  `animalName` varchar(50) NOT NULL,
  `animalDOB` date NOT NULL,
  `animalBread` varchar(50) NOT NULL,
  `animalGender` varchar(10) NOT NULL,
  `ownerID_fk` int(20) NOT NULL,
  `appoitmnentID_fk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`animalID`, `animalName`, `animalDOB`, `animalBread`, `animalGender`, `ownerID_fk`, `appoitmnentID_fk`) VALUES
(1, 'Jessie', '2010-05-01', 'Sphynx Cat', 'Female', 1174, 3285),
(2, 'Mitty', '2012-07-05', 'Persian Cat', 'Female', 1104, 3286),
(3, 'Lucky', '2009-09-01', 'Exotic Shorthair Cat', 'Male', 1010, 3287),
(4, 'Milo', '2015-08-13', 'Australian Silky Terrier Dog', 'Male', 1016, 3288),
(5, 'Scooby', '2020-01-01', 'Doberman Dog', 'Male', 1002, 3289),
(6, 'Kali', '2021-06-22', 'German Shepherd Dog', 'Female', 1188, 3290),
(7, 'Daisy', '2023-01-25', 'Hamster', 'Male', 1192, 3345),
(8, 'Rusty', '2008-12-29', 'Kerry Bog Pony', 'Male', 1210, 3291),
(9, 'Maya', '2009-06-10', 'Irish Cob', 'Female', 1216, 3312),
(10, 'Queenie', '2018-12-08', 'Irish Warmblood', 'Female', 1222, 3315),
(11, 'Dottie', '2013-04-07', 'Angus', 'Female', 1236, 3310),
(12, 'Guinness', '2008-09-27', 'Hereford', 'Male', 1240, 3363),
(13, 'Marble', '2017-10-12', 'Lionhead Rabbit', 'Female', 1249, 3366),
(14, 'Rocco', '2020-01-28', 'Dutch Rabbit', 'Male', 1275, 3371),
(15, 'Puffy', '2014-05-20', 'Lionhead Rabbit', 'Male', 1293, 3376);

-- --------------------------------------------------------

--
-- Table structure for table `animal_appoitment`
--

CREATE TABLE `animal_appoitment` (
  `appoitmnentID_fk` int(20) NOT NULL,
  `animalID_fk` int(10) NOT NULL,
  `veterinarianID_fk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animal_appoitment`
--

INSERT INTO `animal_appoitment` (`appoitmnentID_fk`, `animalID_fk`, `veterinarianID_fk`) VALUES
(3285, 1, 'H11_0923'),
(3286, 2, 'J10_0203'),
(3287, 3, 'H11_0923'),
(3288, 4, 'R18_1001'),
(3289, 5, 'J10_0203'),
(3290, 6, 'R18_1001'),
(3291, 8, 'R18_1001'),
(3299, 8, 'R18_1001'),
(3310, 11, 'H11_0923'),
(3312, 9, 'J10_0203'),
(3315, 10, 'H11_0923'),
(3320, 11, 'H11_0923'),
(3325, 10, 'R18_1001'),
(3345, 7, 'R18_1001'),
(3355, 10, 'H11_0923'),
(3363, 12, 'J10_0203'),
(3366, 13, 'J10_0203'),
(3371, 14, 'H11_0923'),
(3376, 15, 'J10_0203'),
(3385, 9, 'H11_0923');

-- --------------------------------------------------------

--
-- Table structure for table `appoitment`
--

CREATE TABLE `appoitment` (
  `appointmentID` int(20) NOT NULL,
  `dateOfAppoitment` date NOT NULL,
  `timeOfAppoitmnet` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appoitment`
--

INSERT INTO `appoitment` (`appointmentID`, `dateOfAppoitment`, `timeOfAppoitmnet`) VALUES
(3285, '2011-02-01', '10:00'),
(3286, '2013-07-20', '12:30'),
(3287, '2016-10-19', '14:30'),
(3288, '2018-11-09', '09:00'),
(3289, '2021-08-08', '10:45'),
(3290, '2022-03-09', '16:15'),
(3291, '2011-07-02', '13:00'),
(3299, '2015-12-13', '11:45'),
(3310, '2015-10-09', '17:45'),
(3312, '2012-08-02', '11:45'),
(3315, '2019-03-28', '12:30'),
(3320, '2020-05-09', '18:00'),
(3325, '2014-06-06', '09:45'),
(3345, '2021-04-24', '08:15'),
(3355, '2016-11-04', '10:00'),
(3363, '2018-11-29', '13:10'),
(3366, '2018-02-28', '09:00'),
(3371, '2022-04-14', '15:20'),
(3376, '2019-09-22', '15:00'),
(3385, '2019-09-18', '17:00');

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `examinationNo` int(20) NOT NULL,
  `examResults` text NOT NULL,
  `animalID_fk` int(11) NOT NULL,
  `veterinarianID_fk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`examinationNo`, `examResults`, `animalID_fk`, `veterinarianID_fk`) VALUES
(100, 'Lethargy and fever for a few days after vaccination.', 1, 'H11_0923'),
(105, 'Inflammation at the site of injection.', 2, 'J10_0203'),
(110, 'Atopic dermatitis allergy.', 3, 'H11_0923'),
(115, 'Epilepsy Seizures', 4, 'R18_1001'),
(120, 'Food allergy(dairy).', 5, 'J10_0203'),
(125, 'Diarrhea.', 6, 'R18_1001'),
(130, 'Dehydration due to diarrhea.', 7, 'R18_1001'),
(135, 'Given Equine Influenza.', 8, 'R18_1001'),
(140, 'Mud fever.', 9, 'H11_0923'),
(145, 'Mud fever.', 10, 'H11_0923'),
(155, 'Ketosis.', 12, 'J10_0203'),
(160, 'VHD-1 and VHD-2 vaccination given.', 13, 'J10_0203'),
(165, 'Dust allergy.', 14, 'H11_0923'),
(170, 'VHD-1 and VHD-2 vaccination given.', 15, 'J10_0203'),
(175, 'itchiness due to allergie summer itch.\r\n', 8, 'R18_1001'),
(180, 'Given Tetanus and Equine Influenza.', 9, 'J10_0203'),
(185, 'Tetanus vaccine given.', 10, 'H11_0923'),
(190, 'Pneumonia vaccine given.', 11, 'H11_0923'),
(195, 'Ringworm.', 11, 'H11_0923'),
(200, 'Regular check.', 10, 'R18_1001');

-- --------------------------------------------------------

--
-- Table structure for table `medical_information`
--

CREATE TABLE `medical_information` (
  `animalID` int(20) NOT NULL,
  `vaccine` varchar(50) NOT NULL,
  `allergies` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_information`
--

INSERT INTO `medical_information` (`animalID`, `vaccine`, `allergies`) VALUES
(1, 'FVRCPP', ''),
(2, 'FVRCPP', 'flea'),
(3, 'FVRCPP', 'atopic dermatitis'),
(4, 'DA2PPL', ''),
(5, 'DA2PPL', 'Food allergy(dairy)'),
(6, 'DA2PPL', ''),
(7, '', ''),
(8, 'Tetanus and Equine Influenza', ''),
(9, 'Tetanus, Equine Influenza', 'allergie summer itch'),
(10, 'Tetanus', ''),
(11, 'Pneumonia vaccine, IBR', ''),
(12, 'IBR,BVD', ''),
(13, 'VHD -1,VHD -2', ''),
(14, 'VHD -1,VHD -2', 'Dust Allergy'),
(15, 'VHD -1,VHD -2', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicines_prescribed`
--

CREATE TABLE `medicines_prescribed` (
  `medicationCode` varchar(50) NOT NULL,
  `appoitmentID` int(20) NOT NULL,
  `medicationRegime` varchar(100) NOT NULL,
  `medicationCost` decimal(10,2) NOT NULL,
  `examinationNo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines_prescribed`
--

INSERT INTO `medicines_prescribed` (`medicationCode`, `appoitmentID`, `medicationRegime`, `medicationCost`, `examinationNo`) VALUES
('FVRCPP', 3285, 'one injection given', 17.00, 100),
('dichlorophene', 3286, '2.5 mL twice a day', 9.60, 105),
('hydroxyzine', 3287, 'given 2.5 mL for sleep', 11.50, 110),
('', 3288, 'no medication required', 0.00, 115),
('hydroxyzine', 3289, 'given 2.5 mL for sleep', 11.50, 120),
('oxymorphone', 3290, 'one tablet three times a day', 20.00, 125),
('tetanus', 3291, 'one injection given', 15.90, 130),
('EquineInfluenza', 3299, 'one injection given', 21.00, 135),
('selamectin', 3312, '3 drops per eye, twicw a day', 14.80, 140),
('IBR', 3320, 'one injection given', 9.00, 145),
('hydroxyzine, metacam', 3366, 'hydroxyzine given 1.5 mL for sleep and metacam 1 tablet per day', 42.09, 155),
('VHD -1,VHD -2', 3371, 'two injections given', 25.00, 160),
('VHD -1', 3376, 'one injection given', 15.00, 165),
('dichlorophene', 3385, '1,5 mL twice a day', 12.80, 170),
('oxymorphone', 3310, 'one tablet 2 times a day', 20.00, 175),
('metacam', 3315, '1 tablet per day', 18.80, 180),
('tetanus', 3325, 'one injection given', 15.90, 185),
('metacam', 3355, '2 tablets per day', 22.00, 190),
('oxytetracycline', 3363, 'every 8 hours for 2 weeks', 30.08, 195),
('', 3345, 'no medication required', 0.00, 200);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `ownerID` int(20) NOT NULL,
  `ownerName` varchar(50) NOT NULL,
  `ownerSurname` varchar(50) NOT NULL,
  `ownerPhone` varchar(50) NOT NULL,
  `animalID_fk` int(20) NOT NULL,
  `ownerAddressLine1` varchar(50) DEFAULT NULL,
  `ownerAddressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL DEFAULT 'Galway',
  `postalCode` varchar(15) DEFAULT NULL,
  `country` varchar(50) NOT NULL DEFAULT 'Ireland'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`ownerID`, `ownerName`, `ownerSurname`, `ownerPhone`, `animalID_fk`, `ownerAddressLine1`, `ownerAddressLine2`, `city`, `postalCode`, `country`) VALUES
(1002, 'William', 'Bow', '083-456852', 5, '7 Fuschia Ln, Roundstone', NULL, 'Galway', 'H91 A59Y', 'Ireland'),
(1010, 'George', 'Thompson', '085-5380112', 3, '20 Maree Rd, Oran More, Oranmore', NULL, 'Galway', 'H91 ECD9', 'Ireland'),
(1016, 'Katie', 'Murphy', '083-6789125', 4, '3 Dún Mor, Roundstone', NULL, 'Galway', 'H91 R3PH', 'Ireland'),
(1104, 'Gerard', 'King', '085-985673', 2, '12 Bluebell Woods, Maree Rd', 'Moneyduff, Oranmore', 'Galway', 'H91 H5X4', 'Ireland'),
(1174, 'Nooren', 'Karoly', '083-1075926', 1, '39 Glenina Heights', 'Dublin Road', 'Galway', 'H91 A86U', 'Ireland'),
(1188, 'Pamela', 'Curran', '087-3564322', 6, '53 Glenina Heights, Renmore', NULL, 'Galway', 'H91 A89Z', 'Ireland'),
(1192, 'Tom', 'Lyndon', '083-9633127', 7, '260 Gleann Na Ri,Murrough', NULL, 'Galway', 'H91 XY67', 'Ireland'),
(1210, 'Mary', 'Higgins', '087-7863321', 8, '87 Gleann Rua, Renmore', NULL, 'Galway', 'H91 U62Z', 'Ireland'),
(1216, 'Sophie', 'Healy', '087-6724451', 9, '14 Lakeshore Drive, Renmore', NULL, 'Galway', 'H91 PX45', 'Ireland'),
(1222, 'Diane', 'Boot', '083-7790012', 10, '8 Mellows Park, Renmore', NULL, 'Galway', 'H91 X4KA', 'Ireland'),
(1236, 'Martin', 'Jones', '087-00965231', 11, 'Rockwood, Claregalway', NULL, 'Galway', 'H91 RA651', 'Ireland'),
(1240, 'Molly', 'Gohery', '086-76546612', 12, 'Palmerstown, Oranmore', NULL, 'Galway', 'H91 PX43W', 'Ireland'),
(1249, 'John', 'ONeill', '083-9056012', 13, 'Doorus East, Claregalway', NULL, 'Galway', 'H91 ZA91P', 'Ireland'),
(1275, 'Sebastian', 'Fernandez', '087-76879021', 14, 'Corbally South, Claregalway', NULL, 'Galway', 'H91 56UXQ', 'Ireland'),
(1293, 'Anabelle', 'Hanks', '083-8906578', 15, '51 Dublin Road, Renmore', NULL, 'Galway', 'H91 67TAW', 'Ireland');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_invoice`
--

CREATE TABLE `treatment_invoice` (
  `invoiceNo` int(20) NOT NULL,
  `paymentAmount` decimal(10,2) NOT NULL,
  `paymentMethod` varchar(50) NOT NULL,
  `invoiceDate` date NOT NULL,
  `ownerID_fk` int(11) NOT NULL,
  `examinationNo_fk` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment_invoice`
--

INSERT INTO `treatment_invoice` (`invoiceNo`, `paymentAmount`, `paymentMethod`, `invoiceDate`, `ownerID_fk`, `examinationNo_fk`) VALUES
(10005319, 359.80, 'Credit Card', '2016-11-04', 1222, 200),
(10015297, 75.30, 'Cheque', '2011-02-10', 1174, 100),
(10017891, 110.00, 'Credit Card', '2013-07-20', 1104, 105),
(15996782, 75.88, 'Cash', '2022-04-14', 1275, 165),
(16008371, 50.00, 'Credit Card', '2021-08-08', 1002, 120),
(18005021, 178.95, 'Revoult Card', '2018-02-28', 1240, 155),
(19968001, 104.55, 'Cheque', '2015-12-19', 1210, 175),
(20091678, 120.90, 'Revoult Card', '2019-09-18', 1216, 140),
(20097891, 55.50, 'Cash', '2019-09-22', 1293, 170),
(20508412, 20.00, 'Cash', '2018-11-09', 1016, 115),
(23077145, 65.39, 'Credit Card', '2011-07-02', 1210, 135),
(23098815, 315.80, 'Credit Card', '2015-10-09', 1236, 190),
(23318265, 150.00, 'Revoult Card', '2012-08-02', 1216, 180),
(23380041, 100.00, 'Cheque', '2021-05-02', 1192, 130),
(23784712, 95.00, 'Cash', '2016-10-19', 1010, 110),
(24472153, 45.90, 'Cash', '2014-06-06', 1222, 185),
(25766120, 400.00, 'Installment payments', '2019-06-01', 1222, 145),
(27855432, 65.00, 'Revoult Card', '2020-05-09', 1236, 195),
(29188314, 250.49, 'Installment payments', '2022-05-09', 1188, 125);

-- --------------------------------------------------------

--
-- Table structure for table `veterinarian`
--

CREATE TABLE `veterinarian` (
  `veterinarianID` varchar(20) NOT NULL,
  `veterinarianName` varchar(50) NOT NULL,
  `veterinarianSurname` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `veterinarian`
--

INSERT INTO `veterinarian` (`veterinarianID`, `veterinarianName`, `veterinarianSurname`, `position`) VALUES
('C15_0915', 'Cillian', 'Duffy', 'Vetrinary Nurse'),
('H11_0923', 'Howard', 'Fahy', 'Veterinary Suregon'),
('J10_0203', 'Joe', 'ODonnell', 'Senior Veterinary Suregon and Owner'),
('M10_0603', 'Molly', 'Healy', 'Veterinary Nurse'),
('M12_1006', 'Michelle', 'McNally', 'Veterinary Nurse'),
('R10_0207', 'Roisin', 'Cleary', 'Veterinary Receptionist'),
('R18_1001', 'Rachel', 'Carr', 'Senior Veterinary Surgeon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`animalID`),
  ADD KEY `appoitmnentID_fk` (`appoitmnentID_fk`),
  ADD KEY `ownerID_fk` (`ownerID_fk`);

--
-- Indexes for table `animal_appoitment`
--
ALTER TABLE `animal_appoitment`
  ADD KEY `animalID` (`animalID_fk`),
  ADD KEY `appoitmnentID_fk` (`appoitmnentID_fk`),
  ADD KEY `veterinarianID` (`veterinarianID_fk`);

--
-- Indexes for table `appoitment`
--
ALTER TABLE `appoitment`
  ADD PRIMARY KEY (`appointmentID`);

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`examinationNo`),
  ADD KEY `animalID` (`animalID_fk`),
  ADD KEY `veterinarianID_fk` (`veterinarianID_fk`);

--
-- Indexes for table `medical_information`
--
ALTER TABLE `medical_information`
  ADD PRIMARY KEY (`animalID`);

--
-- Indexes for table `medicines_prescribed`
--
ALTER TABLE `medicines_prescribed`
  ADD PRIMARY KEY (`examinationNo`),
  ADD UNIQUE KEY `examinationNo` (`examinationNo`) USING BTREE;

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`ownerID`),
  ADD KEY `animalID_fk` (`animalID_fk`);

--
-- Indexes for table `treatment_invoice`
--
ALTER TABLE `treatment_invoice`
  ADD PRIMARY KEY (`invoiceNo`),
  ADD KEY `ownerID_fk` (`ownerID_fk`),
  ADD KEY `examinationNo_fk` (`examinationNo_fk`);

--
-- Indexes for table `veterinarian`
--
ALTER TABLE `veterinarian`
  ADD PRIMARY KEY (`veterinarianID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`appoitmnentID_fk`) REFERENCES `appoitment` (`appointmentID`) ON UPDATE CASCADE;

--
-- Constraints for table `animal_appoitment`
--
ALTER TABLE `animal_appoitment`
  ADD CONSTRAINT `animal_appoitment_ibfk_1` FOREIGN KEY (`animalID_fk`) REFERENCES `animal` (`animalID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_appoitment_ibfk_2` FOREIGN KEY (`appoitmnentID_fk`) REFERENCES `appoitment` (`appointmentID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_appoitment_ibfk_3` FOREIGN KEY (`veterinarianID_fk`) REFERENCES `veterinarian` (`veterinarianID`) ON UPDATE CASCADE;

--
-- Constraints for table `medical_information`
--
ALTER TABLE `medical_information`
  ADD CONSTRAINT `medical_information_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `animal` (`animalID`) ON UPDATE CASCADE;

--
-- Constraints for table `medicines_prescribed`
--
ALTER TABLE `medicines_prescribed`
  ADD CONSTRAINT `medicines_prescribed_ibfk_1` FOREIGN KEY (`examinationNo`) REFERENCES `examination` (`examinationNo`) ON UPDATE CASCADE;

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`animalID_fk`) REFERENCES `animal` (`animalID`) ON UPDATE CASCADE;

--
-- Constraints for table `treatment_invoice`
--
ALTER TABLE `treatment_invoice`
  ADD CONSTRAINT `treatment_invoice_ibfk_1` FOREIGN KEY (`examinationNo_fk`) REFERENCES `examination` (`examinationNo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `treatment_invoice_ibfk_2` FOREIGN KEY (`ownerID_fk`) REFERENCES `owner` (`ownerID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

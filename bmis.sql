-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 08:36 PM
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
-- Database: `bmis`
--

-- --------------------------------------------------------

--
-- Table structure for table `approval`
--

CREATE TABLE `approval` (
  `id_approval` int(11) NOT NULL,
  `id_resident` int(11) NOT NULL,
  `apstatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approval`
--

INSERT INTO `approval` (`id_approval`, `id_resident`, `apstatus`) VALUES
(1, 56, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `brgy_info`
--

CREATE TABLE `brgy_info` (
  `id_brgy_info` int(11) NOT NULL,
  `brgy` varchar(50) NOT NULL,
  `municipal` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `openhours` text NOT NULL,
  `background` text NOT NULL,
  `vision` text NOT NULL,
  `mission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brgy_info`
--

INSERT INTO `brgy_info` (`id_brgy_info`, `brgy`, `municipal`, `province`, `email`, `contact`, `openhours`, `background`, `vision`, `mission`) VALUES
(1, 'Biclatan', 'General Trias', 'General Trias', 'brgybiclatan@gmail.com', '046-509-1664', 'Open Hours of Barangay: Monday to Friday (8:00 to 5:00)', 'Biclatan is a barangay in the city of General Trias, in the province of Cavite. Its population as determined by the 2020 census was 23,102. This represented 5.13% of the total population of General Trias.', 'To foster a united, sustainable, and inclusive community. Barangay Biclatan is committed to providing essential services, ensuring transparent governance, and preserving our cultural heritage and environment. We strive to empower residents through education, promote economic development, and enhance the overall well-being of our community while celebrating our unique identity and contributing to greater prosperity of Oriental Mindoro.', 'We aspire to be a model barangay that prioritizes the well-being of our people, foster unity, and embracing the progress while preserving our cultural heritage and natural resources. Through collective effort and participatory governance, we aim to create a safe, resilient and empowered community that values equity, environmental stewardship, and continuous learning.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `masked_admin`
-- (See below for the actual view)
--
CREATE TABLE `masked_admin` (
`id_admin` int(11)
,`masked_email` varchar(7)
,`masked_password` varchar(7)
,`masked_lname` varchar(7)
,`masked_fname` varchar(7)
,`masked_mi` varchar(7)
,`masked_role` varchar(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `masked_users`
-- (See below for the actual view)
--
CREATE TABLE `masked_users` (
`id_user` int(11)
,`masked_email` longtext
,`masked_password` longtext
,`masked_lname` longtext
,`masked_fname` longtext
,`masked_address` longtext
,`masked_position` longtext
);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id_position` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `pos_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id_position`, `position`, `pos_order`) VALUES
(1, 'Barangay Chairman', 1),
(2, 'Sk Chairperson', 2),
(3, 'Barangay Secretary', 3),
(4, 'Barangay Treasurer', 4),
(5, 'Councilor 1', 5),
(6, 'Councilor 2', 6),
(7, 'Councilor 3', 7),
(8, 'Councilor 4', 8),
(9, 'Councilor 5', 9),
(10, 'Councilor 6', 10);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id_system` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `acronym` varchar(50) NOT NULL,
  `poweredBy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id_system`, `name`, `acronym`, `poweredBy`) VALUES
(1, 'Barangay Biclatan Information System', 'BBIS', 'Ive Generalao');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activities`
--

CREATE TABLE `tbl_activities` (
  `id_activity` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_activities`
--

INSERT INTO `tbl_activities` (`id_activity`, `name`, `date`, `image`) VALUES
(5, '(CECOOP) Donate SINGNAGES', '2024-02-13', 'uploads/p5.jpg'),
(6, 'BARANGAY ASSEMBLY DAY', '2024-02-16', 'uploads/p2.jpg'),
(7, 'FREE Anti-Rabies Vaccination', '2024-04-16', 'uploads/p4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mi` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `user_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `email`, `password`, `lname`, `fname`, `mi`, `role`, `user_status`) VALUES
(1, 'admin1@gmail.com', '6964f527f011df8756f87c3e8a76884f', 'Tosper', 'Rafael Jr.', 'M', 'administrator', ''),
(2, 'admin2@gmail.com', '6964f527f011df8756f87c3e8a76884f', 'Simon', 'Marian', '', 'administrator', ''),
(3, 'admin3@gmail.com', '6964f527f011df8756f87c3e8a76884f', 'Obena', 'Katrina', 'T', 'administrator', ''),
(4, 'admin4@gmail.com', '6964f527f011df8756f87c3e8a76884f', 'Villano', 'Kristine Joy', 'G', 'administrator', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announcement`
--

CREATE TABLE `tbl_announcement` (
  `id_announcement` int(11) NOT NULL,
  `event` varchar(1000) NOT NULL,
  `target` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `addedby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_announcement`
--

INSERT INTO `tbl_announcement` (`id_announcement`, `event`, `target`, `start_date`, `addedby`) VALUES
(6, 'Free Consultations available from June 13, 2021 until June 25, 2021', NULL, '2021-06-12', 'vilfamat, vincent');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blotter`
--

CREATE TABLE `tbl_blotter` (
  `id_blotter` int(11) NOT NULL,
  `id_resident` int(11) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mi` varchar(255) NOT NULL,
  `houseno` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `brgy` varchar(255) NOT NULL,
  `municipal` varchar(255) NOT NULL,
  `blot_photo` mediumblob NOT NULL,
  `contact` varchar(20) NOT NULL,
  `narrative` mediumtext NOT NULL,
  `timeapplied` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_blotter`
--

INSERT INTO `tbl_blotter` (`id_blotter`, `id_resident`, `lname`, `fname`, `mi`, `houseno`, `street`, `brgy`, `municipal`, `blot_photo`, `contact`, `narrative`, `timeapplied`) VALUES
(1, 23, 'Coloma', 'Charmaine', 'Briongos', 'Blk. 2 Lot 5', 'Kamatisan', 'Dalig', 'Antipolo City', '', '09602033667', 'ADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information SystemADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Pending of Approvals\r\n Barangay Officials\r\n Barangay Residents\r\nBARANGAY SERVICES\r\n Announcements\r\n List of Services\r\n Certificate of Residency\r\n Business Clearance\r\n Barangay Clearance\r\n Certificate of Indigency\r\n Blotter Report\r\nSETTINGS\r\n Barangay Activities\r\n Barangay Info\r\n Position\r\n System Info\r\nUpdate Peace and Order Data\r\nLast Name:\r\nColoma\r\nFirst Name:\r\nCharmaine\r\nMiddle Name:\r\nBriongos\r\nContact Number:\r\n09602033667\r\nHouse No:\r\nBlk. 2 Lot 5\r\nStreet:\r\nKamatisan\r\nBarangay:\r\nDalig\r\nMunicipality:\r\nAntipolo City\r\nNarrative Report:\r\nADMINISTRATOR DASHBOARD\r\n Dashboard\r\nUSER MANAGEMENT\r\n Requested\r\n Barangay Officials\r\n Barangay Res...\r\n2023 - 2024 | Barangay Biclatan Information System', '2024-04-16 03:10:09'),
(2, 23, 'Reyes', 'Hannah Joy', 'Briongos', 'Blk. 2 Lot 5', 'Kamatisan', 'Dalig', 'Antipolo City', '', '09123456789', 'Pinalo yung aso', '2024-04-16 03:10:47'),
(3, 23, 'Vilfamat', 'Vincent', 'Briongos', 'Blk. 2 Lot 5', 'Kamatisan', 'Dalig', 'Antipolo City', 0x4172726179, '2147483647', 'hinataw yung aso namin', '2021-06-30 09:54:15'),
(5, 0, 'Reyes', 'Hannah Joy', '', '123', 'Macamias', 'Biclatan', 'General Trias', '', '2147483647', 'Pinukpok yung aso', '2024-04-14 02:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brgyid`
--

CREATE TABLE `tbl_brgyid` (
  `id_brgyid` int(11) DEFAULT NULL,
  `id_resident` int(11) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mi` varchar(255) NOT NULL,
  `houseno` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `brgy` varchar(255) NOT NULL,
  `municipal` varchar(255) NOT NULL,
  `bplace` varchar(255) NOT NULL,
  `bdate` varchar(255) NOT NULL,
  `res_photo` varchar(255) DEFAULT NULL,
  `inc_lname` varchar(255) NOT NULL,
  `inc_fname` varchar(255) NOT NULL,
  `inc_mi` varchar(255) NOT NULL,
  `inc_contact` varchar(255) NOT NULL,
  `inc_houseno` varchar(255) NOT NULL,
  `inc_street` varchar(255) NOT NULL,
  `inc_brgy` varchar(255) NOT NULL,
  `inc_municipal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_brgyid`
--

INSERT INTO `tbl_brgyid` (`id_brgyid`, `id_resident`, `lname`, `fname`, `mi`, `houseno`, `street`, `brgy`, `municipal`, `bplace`, `bdate`, `res_photo`, `inc_lname`, `inc_fname`, `inc_mi`, `inc_contact`, `inc_houseno`, `inc_street`, `inc_brgy`, `inc_municipal`) VALUES
(NULL, 23, 'Vilfamat', 'Vincent', 'Briongos', 'Blk. 2 Lot 5', 'Kamatisan', 'Dalig', 'Antipolo City', '2011-06-15', '1999-07-30', NULL, 'Vilfamat', 'Teresita', 'Briongos', '09515496436', 'Antipolo City', '2011-06-15', '1999-07-30', NULL),
(NULL, 23, 'Vilfamat', 'Vincent', 'Briongos', 'Blk. 2 Lot 5', 'Kamatisan', 'Dalig', 'Antipolo City', '2011-06-15', '1999-11-29', NULL, 'Vilfamat', 'Teresita', 'Briongos', '09654165465', 'Antipolo City', '2011-06-15', '1999-11-29', 'Array'),
(NULL, 23, 'Vilfamat', 'Vincent', 'Briongos', 'Blk. 2 Lot 5', 'Kamatisan', 'Dalig', 'Antipolo City', 'Antipolo, Rizal', '1999-11-30', NULL, 'Vilfamat', 'Teresita', 'Briongos', '09564815496', 'Antipolo City', 'Antipolo, Rizal', '1999-11-30', 'Array');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bspermit`
--

CREATE TABLE `tbl_bspermit` (
  `id_bspermit` int(11) NOT NULL,
  `id_resident` int(11) NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `mi` varchar(255) DEFAULT NULL,
  `age` tinyint(4) NOT NULL,
  `bsname` varchar(255) DEFAULT NULL,
  `houseno` varchar(255) DEFAULT NULL,
  `street` varchar(252) DEFAULT NULL,
  `brgy` varchar(255) DEFAULT NULL,
  `municipal` varchar(255) DEFAULT NULL,
  `bsindustry` varchar(255) DEFAULT NULL,
  `aoe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_bspermit`
--

INSERT INTO `tbl_bspermit` (`id_bspermit`, `id_resident`, `lname`, `fname`, `mi`, `age`, `bsname`, `houseno`, `street`, `brgy`, `municipal`, `bsindustry`, `aoe`) VALUES
(3, 45, 'Coloma', 'Charmaine', 'Baldo', 24, 'Coloma\'s Meat Stand', '123', 'Purok 2', 'Biclatan', 'General Trias Cavite', 'Food', 4),
(6, 0, 'Coloma', 'Charmaine Joyce', '', 0, 'Meat Stand', '123', 'Macamis', 'Biclatan', 'General Trias', 'Food', 4),
(7, 0, 'testing', 'testing', '', 0, 'Meat Stand', '9754', 'Macamias', 'Biclatan', 'General Trias', 'HealthCare', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clearance`
--

CREATE TABLE `tbl_clearance` (
  `id_clearance` int(11) NOT NULL,
  `id_resident` int(11) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mi` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `houseno` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `brgy` varchar(255) NOT NULL,
  `municipal` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_clearance`
--

INSERT INTO `tbl_clearance` (`id_clearance`, `id_resident`, `lname`, `fname`, `mi`, `purpose`, `houseno`, `street`, `brgy`, `municipal`, `status`, `age`) VALUES
(4, 44, 'Coloma', 'Charmaine', 'Baldo', 'NBI/Police Clearance', '123', 'Purok 1', 'Yuson', 'Guimba', 'Single', '24'),
(6, 0, 'testing', 'testing', '', 'Job Requirement', '424', 'Macamias', 'Biclatan', 'General Trias', 'Single', '56'),
(8, 0, 'Reyes', 'Hannah', '', 'Others', '424', 'Sampaguita', 'Biclatan', 'General Trias', 'In a relationship', '25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_indigency`
--

CREATE TABLE `tbl_indigency` (
  `id_indigency` int(11) NOT NULL,
  `id_resident` int(11) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mi` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `houseno` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `brgy` varchar(255) NOT NULL,
  `municipal` varchar(255) NOT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_indigency`
--

INSERT INTO `tbl_indigency` (`id_indigency`, `id_resident`, `lname`, `fname`, `mi`, `nationality`, `houseno`, `street`, `brgy`, `municipal`, `purpose`, `date`) VALUES
(3, 45, 'Coloma', 'Charmaine', 'Baldo', 'Filipino', '123', 'Purok 2', 'Yuson', 'Guimba', 'Financial Transaction', '2024-03-25'),
(4, 0, 'Reyes', 'Hannah Joy', '', 'Filipino', '123', 'Macamias', 'Biclatan', 'General Trias', 'Job/Employment', '2024-04-14'),
(5, 0, 'Coloma', 'Charmaine Joyce', '', 'Filipino', '9754', 'Macamias', 'Biclatan', 'General Trias', 'Job/Employment', '2024-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_officials`
--

CREATE TABLE `tbl_officials` (
  `id_official` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `termstart` date NOT NULL,
  `termend` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `avatar` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_officials`
--

INSERT INTO `tbl_officials` (`id_official`, `name`, `position`, `termstart`, `termend`, `status`, `avatar`) VALUES
(1, '              Hon. Dionido U. Quitain', 'Presiding Officer', '2018-06-08', '2026-06-28', 'Active', ''),
(2, '  Hon. Criswin P. Roxas', 'Sk Chairperson', '2021-05-01', '2025-05-15', 'Not Active', ''),
(3, 'Josue G. Ortega', 'Barangay Secretary', '2017-06-06', '2027-09-30', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rescert`
--

CREATE TABLE `tbl_rescert` (
  `id_rescert` int(11) NOT NULL,
  `id_resident` int(11) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mi` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `houseno` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `brgy` varchar(255) NOT NULL,
  `municipal` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `purpose` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rescert`
--

INSERT INTO `tbl_rescert` (`id_rescert`, `id_resident`, `lname`, `fname`, `mi`, `age`, `nationality`, `houseno`, `street`, `brgy`, `municipal`, `date`, `purpose`) VALUES
(111112, 44, 'Reyes', 'Hannah Joy', 'Dizon', '24', 'Filipino', '123', 'Purok 1', 'Yuson', 'Guimba', '2024-03-24', 'Certify that you are living in a certain barangay'),
(111121, 0, 'Coloma', 'Charmaine Joyce', '', '23', 'Filipino', '123', 'Macamis', 'Biclatan', 'General Trais', '2024-04-16', 'Financial Transaction'),
(111122, 0, 'testing', 'testing', '', '56', 'Filipino', '424', 'Macamias', 'Biclatan', 'General Trais', '2024-04-16', 'Financial Transaction');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resident`
--

CREATE TABLE `tbl_resident` (
  `id_resident` int(11) NOT NULL,
  `request_status` varchar(50) NOT NULL,
  `res_photo` mediumblob DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mi` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `houseno` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `brgy` varchar(255) DEFAULT NULL,
  `municipal` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) NOT NULL,
  `bdate` date NOT NULL,
  `bplace` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `family_role` varchar(255) NOT NULL,
  `voter` varchar(255) DEFAULT NULL,
  `pwd` varchar(10) NOT NULL,
  `indigent` varchar(255) NOT NULL,
  `single_parent` varchar(255) NOT NULL,
  `malnourished` varchar(255) NOT NULL,
  `four_ps` varchar(255) NOT NULL,
  `vaccinated` varchar(255) NOT NULL,
  `pregnancy` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `addedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_resident`
--

INSERT INTO `tbl_resident` (`id_resident`, `request_status`, `res_photo`, `email`, `password`, `lname`, `fname`, `mi`, `age`, `sex`, `status`, `houseno`, `street`, `brgy`, `municipal`, `address`, `contact`, `bdate`, `bplace`, `nationality`, `family_role`, `voter`, `pwd`, `indigent`, `single_parent`, `malnourished`, `four_ps`, `vaccinated`, `pregnancy`, `role`, `addedby`) VALUES
(45, 'approved', NULL, 'coloma@gmail.com', '6964f527f011df8756f87c3e8a76884f', 'Coloma', 'Charmaine', 'Baldo', 24, 'Female', 'Single', '123', 'Purok 2', 'Biclatan', 'Nueva Ecija', NULL, '09952650331', '1999-11-20', 'Veronica', 'Filipino', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'resident', NULL),
(56, 'approved', NULL, 'balmores@gmail.com', '6964f527f011df8756f87c3e8a76884f', 'Balmores', 'Santy', 'Palma', 20, 'Male', 'pending', '1234', 'Santiago', 'Biclatan', 'General Trias', NULL, '09672518471', '2003-08-29', 'Veronica', 'Filipino', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'resident', ''),
(59, 'pending', NULL, 'almira@gmail.com', '6964f527f011df8756f87c3e8a76884f', 'Coloma', 'Almira Jane', 'Baldo', 21, 'Female', 'Single', '2342', 'Macamias', 'Biclatan', 'General Trias', NULL, '09789876564', '2003-03-06', 'Maturanoc', 'Filipino', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'resident', NULL),
(60, 'pending', NULL, 'johannah@gmail.com', '6964f527f011df8756f87c3e8a76884f', 'Reyes', 'Johannah', 'Dizon', 23, 'Female', 'Single', '6547', 'Macamias', 'Biclatan', 'General Trias', NULL, '09786543578', '2000-11-20', 'Veronica', 'Filipino', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'resident', NULL),
(69, 'approved', NULL, 'norlyn@gmail.com', '6964f527f011df8756f87c3e8a76884f', 'Reyes', 'Norlyn', '', 31, 'Female', 'Married', '12', 'Macamias', 'Biclatan', 'General Trias', NULL, '09553194514', '1992-11-15', 'Maturanoc', 'Filipino', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'No', '', '', 'resident', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id_services` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `fees` decimal(10,2) NOT NULL,
  `requires` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `image_service` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id_services`, `title`, `description`, `fees`, `requires`, `status`, `image_service`) VALUES
(1, 'BARANGAY CLEARANCE', '', 35.00, 'CEDULA', 'Active', 'uploads/clearance.png'),
(4, 'CERTIFICATE OF RESIDENCY', '', 35.00, 'CEDULA & BRGY CLEARANCE', 'Active', 'uploads/residency.png'),
(5, 'CERTIFICATE OF INDIGENCY', '', 35.00, 'CEDULA', 'Active', 'uploads/indigency.png'),
(6, 'BUSINESS CLEARANCE', '', 35.00, 'CEDULA', 'Active', 'uploads/busper.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_travelpermit`
--

CREATE TABLE `tbl_travelpermit` (
  `id_travel` int(11) NOT NULL,
  `id_resident` int(11) NOT NULL,
  `prev_owner` varchar(255) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `brgy` varchar(50) NOT NULL,
  `municipal` varchar(50) NOT NULL,
  `buyers_name` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_travelpermit`
--

INSERT INTO `tbl_travelpermit` (`id_travel`, `id_resident`, `prev_owner`, `breed`, `gender`, `color`, `destination`, `date`, `brgy`, `municipal`, `buyers_name`, `purpose`) VALUES
(2, 44, 'Reyes Hannah Joy', 'Sheep', 'Female', 'Spotted', 'Farm', '2024-03-25', 'Yuson', 'Guimba', 'Charmaine Joyce Coloma', 'Breeding');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mi` varchar(255) NOT NULL,
  `age` int(20) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `addedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `email`, `password`, `lname`, `fname`, `mi`, `age`, `sex`, `address`, `contact`, `position`, `role`, `addedby`) VALUES
(11, 'obena@gmail.com', 'melinda12345', 'Obena', 'Katrina', 'T', 24, 'Female', 'San Miguel, Guimba', '09564123321', 'Barangay Secretary', 'user', 'Rafael Tosper'),
(12, 'mangalino@gmail.com', 'earl12345', 'Mangalino', 'Jayvee', 'Tayong', 28, 'Male', 'Pasong Inchik, Guimba', '09785631125', 'Barangay Treasurer', 'user', 'Rafael Tosper'),
(13, 'marian@gmail.com', 'adminMarian@', 'Simon', 'Marian', 'Cabiso', 24, 'Female', '1234, Purok 5, Cavite, Guimba', '09876543211', 'Kagawad', 'user', 'Tosper, Rafael Jr.');

-- --------------------------------------------------------

--
-- Structure for view `masked_admin`
--
DROP TABLE IF EXISTS `masked_admin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `masked_admin`  AS SELECT `tbl_admin`.`id_admin` AS `id_admin`, concat(substr(`tbl_admin`.`email`,1,3),rpad(conv(floor(rand() * 9999),10,16),4,'X')) AS `masked_email`, concat(substr(`tbl_admin`.`password`,1,3),rpad(conv(floor(rand() * 9999),10,16),4,'X')) AS `masked_password`, concat(substr(`tbl_admin`.`lname`,1,3),rpad(conv(floor(rand() * 9999),10,16),4,'X')) AS `masked_lname`, concat(substr(`tbl_admin`.`fname`,1,3),rpad(conv(floor(rand() * 9999),10,16),4,'X')) AS `masked_fname`, concat(substr(`tbl_admin`.`mi`,1,3),rpad(conv(floor(rand() * 9999),10,16),4,'X')) AS `masked_mi`, concat(substr(`tbl_admin`.`role`,1,3),rpad(conv(floor(rand() * 9999),10,16),4,'X')) AS `masked_role` FROM `tbl_admin` ;

-- --------------------------------------------------------

--
-- Structure for view `masked_users`
--
DROP TABLE IF EXISTS `masked_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `masked_users`  AS SELECT `tbl_user`.`id_user` AS `id_user`, concat(repeat('x',octet_length(substring_index(`tbl_user`.`email`,'@',1))),'@',substring_index(`tbl_user`.`email`,'@',-1)) AS `masked_email`, concat(repeat('x',octet_length(`tbl_user`.`password`))) AS `masked_password`, concat(repeat('x',octet_length(`tbl_user`.`lname`))) AS `masked_lname`, concat(repeat('x',octet_length(`tbl_user`.`fname`))) AS `masked_fname`, concat(repeat('x',octet_length(`tbl_user`.`address`))) AS `masked_address`, concat(repeat('x',octet_length(`tbl_user`.`position`))) AS `masked_position` FROM `tbl_user` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`id_approval`);

--
-- Indexes for table `brgy_info`
--
ALTER TABLE `brgy_info`
  ADD PRIMARY KEY (`id_brgy_info`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id_position`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id_system`);

--
-- Indexes for table `tbl_activities`
--
ALTER TABLE `tbl_activities`
  ADD PRIMARY KEY (`id_activity`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  ADD PRIMARY KEY (`id_announcement`);

--
-- Indexes for table `tbl_blotter`
--
ALTER TABLE `tbl_blotter`
  ADD PRIMARY KEY (`id_blotter`);

--
-- Indexes for table `tbl_bspermit`
--
ALTER TABLE `tbl_bspermit`
  ADD PRIMARY KEY (`id_bspermit`);

--
-- Indexes for table `tbl_clearance`
--
ALTER TABLE `tbl_clearance`
  ADD PRIMARY KEY (`id_clearance`);

--
-- Indexes for table `tbl_indigency`
--
ALTER TABLE `tbl_indigency`
  ADD PRIMARY KEY (`id_indigency`);

--
-- Indexes for table `tbl_officials`
--
ALTER TABLE `tbl_officials`
  ADD PRIMARY KEY (`id_official`);

--
-- Indexes for table `tbl_rescert`
--
ALTER TABLE `tbl_rescert`
  ADD PRIMARY KEY (`id_rescert`);

--
-- Indexes for table `tbl_resident`
--
ALTER TABLE `tbl_resident`
  ADD PRIMARY KEY (`id_resident`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id_services`);

--
-- Indexes for table `tbl_travelpermit`
--
ALTER TABLE `tbl_travelpermit`
  ADD PRIMARY KEY (`id_travel`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval`
--
ALTER TABLE `approval`
  MODIFY `id_approval` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brgy_info`
--
ALTER TABLE `brgy_info`
  MODIFY `id_brgy_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id_position` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id_system` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_activities`
--
ALTER TABLE `tbl_activities`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  MODIFY `id_announcement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_blotter`
--
ALTER TABLE `tbl_blotter`
  MODIFY `id_blotter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_bspermit`
--
ALTER TABLE `tbl_bspermit`
  MODIFY `id_bspermit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_clearance`
--
ALTER TABLE `tbl_clearance`
  MODIFY `id_clearance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_indigency`
--
ALTER TABLE `tbl_indigency`
  MODIFY `id_indigency` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_officials`
--
ALTER TABLE `tbl_officials`
  MODIFY `id_official` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_rescert`
--
ALTER TABLE `tbl_rescert`
  MODIFY `id_rescert` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111123;

--
-- AUTO_INCREMENT for table `tbl_resident`
--
ALTER TABLE `tbl_resident`
  MODIFY `id_resident` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id_services` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_travelpermit`
--
ALTER TABLE `tbl_travelpermit`
  MODIFY `id_travel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 02:59 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_tutore`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_job_posts`
--

CREATE TABLE `add_job_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_job_posts`
--

INSERT INTO `add_job_posts` (`id`, `job_id`, `student_name`, `categories_id`, `job_heading`, `location`, `salary`, `subject`, `in_details`, `status`, `created_at`, `updated_at`) VALUES
(1, '159830', '8', '13', 'Male Tutor wanted for inter-1st-year at khilgaon.', 'Basundhara d block', '5000', 'all-subject', 'ghgfh', 'Active', '2022-02-20 10:03:52', '2022-03-12 10:40:09'),
(2, '154896', '9', '11', 'Female Tutor wanted for standard-3 at Basundhara d block.', 'Basundhara d block', '10000', 'all-subject', '423hj', 'Active', '2022-02-20 20:33:30', '2022-03-12 10:41:27'),
(3, '380246', '10', '11', 'dfsdf', 'Rajshahi', '10000', 'biology', 'thrthg', 'Active', '2022-02-20 21:12:26', '2022-03-12 10:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categories_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topics_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories_name`, `topics_id`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Looking for male tutor?', 10, '164708774062451.png', 'Active', '2022-02-12 23:00:11', '2022-03-12 12:22:20'),
(13, 'Looking for BUETian ?', 10, '164709338730684.jpg', 'Active', '2022-02-28 16:41:23', '2022-03-12 13:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories_topics`
--

CREATE TABLE `categories_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topics` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_topics`
--

INSERT INTO `categories_topics` (`id`, `topics`, `status`, `created_at`, `updated_at`) VALUES
(9, 'University Catagories', 'Active', '2022-02-12 22:59:00', NULL),
(10, 'Basic Catagories', 'Active', '2022-02-12 22:59:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `teacher_id`, `problem`, `created_at`, `updated_at`) VALUES
(1, '7', 'gfgdsgg', '2022-03-10 15:54:41', NULL),
(2, '7', 'sadfjsadjsdiau9', '2022-03-11 16:48:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `tutor_name`, `gender`, `categories_id`, `designation`, `education`, `background`, `salary`, `address`, `subject`, `experience`, `in_details`, `photo`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(2, '7', 'male', '13', 'Engineer in profession and Teaching in passion', 'EEE from CUET', 'science', '10000', 'Dhaka', 'math, math-b, higher-math, additional-math, general-science, computer-science, science, physics, molecular-physics, quantum-physics, chemistry, ict, computer, computer, computer-science, statistics, ielts, gre.', 'More than four years', 'I have completed my BSc in Electrical and Electronics Engineering from Chittagong University of Engineering and Technology holding a CGPA of 3.47. I worked as a software quality assurance engineer and content writer. But, I would like to pursue a research career and be in an academic environment. Therefore, I quit my job and did the GRE exam holding a score of 313 (Quant-163, Verbal-150, AWA- 3.5) to get some funding (as TA/RA/GA) from a university in the USA. Now-a-day I am working on some thesis and conference papers and preparing for IELTS. In the meantime, I did some tuitions especially the classes of 9,10,11,12, O level, A level, and Honors level.', '164610913021132.png', '01755555559555', 'active', '2022-03-01 04:32:10', '2022-03-02 13:15:38'),
(4, '11', 'male', '11', 'Engineer in profession and Teaching in passion', 'EEE from CUET', 'science', '7000', 'Rajshahi', 'I have completed my BSc in Electrical and Electronics Engineering from Chittagong University of Engineering and Technology holding a CGPA of 3.47. I worked as a software quality assurance engineer and content writer.', 'More than ten years', 'math, math-b, higher-math, additional-math, general-science, computer-science, science, physics, molecular-physics, quantum-physics, chemistry, ict, computer, computer, computer-science, statistics, ielts, gre.', '164623276866817.png', '01754548586', 'active', '2022-03-02 14:52:48', '2022-03-05 04:15:29'),
(5, '12', 'female', '13', 'Engineer in profession and Teaching in passion', 'EEE from CUET', 'science', '5000', 'Dhaka', 'dfgdfg', 'More than ten years', 'gdfgf', '164709282148591.png', '01754548586', 'active', '2022-03-12 13:47:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `geocode`
--

CREATE TABLE `geocode` (
  `division` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `subordinate` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `post_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `geocode`
--

INSERT INTO `geocode` (`division`, `district`, `subordinate`, `branch`, `post_code`) VALUES
('Dhaka', 'Dhaka', 'Demra', 'Demra', '1360'),
('Dhaka', 'Dhaka', 'Demra', 'Sarulia', '1361'),
('Dhaka', 'Dhaka', 'Demra', 'Matuail', '1362'),
('Dhaka', 'Dhaka', 'Dhaka GPO', 'Dhaka GPO', '1000'),
('Dhaka', 'Dhaka', 'Dhaka Main PO', 'Dhaka Main PO', '1100'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Wari TSO', '1203'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Gendaria TSO', '1204'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'New Market TSO', '1205'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Dhaka CantonmentTSO', '1206'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Mohammadpur Housing', '1207'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Dhaka Politechnic', '1208'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Jigatala TSO', '1209'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Posta TSO', '1211'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Gulshan Model Town', '1212'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Banani TSO', '1213'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Basabo TSO', '1214'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Tejgaon TSO', '1215'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Shantinagr TSO', '1217'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Mirpur TSO', '1218'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'KhilgaonTSO', '1219'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'BangabhabanTSO', '1222'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'DilkushaTSO', '1223'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Sangsad BhabanTSO', '1225'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'KhilkhetTSO', '1229'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Uttara Model TwonTSO', '1231'),
('Dhaka', 'Dhaka', 'Dhaka Sadar', 'Dhania TSO', '1232'),
('Dhaka', 'Dhaka', 'Dhamrai', 'Dhamrai', '1350'),
('Dhaka', 'Dhaka', 'Dhamrai', 'Kamalpur', '1351'),
('Dhaka', 'Dhaka', 'Joypara', 'Joypara', '1330'),
('Dhaka', 'Dhaka', 'Joypara', 'Palamganj', '1331'),
('Dhaka', 'Dhaka', 'Joypara', 'Narisha', '1332'),
('Dhaka', 'Dhaka', 'Keraniganj', 'Keraniganj', '1310'),
('Dhaka', 'Dhaka', 'Keraniganj', 'Dhaka Jute Mills', '1311'),
('Dhaka', 'Dhaka', 'Keraniganj', 'Ati', '1312'),
('Dhaka', 'Dhaka', 'Keraniganj', 'Kalatia', '1313'),
('Dhaka', 'Dhaka', 'Nawabganj', 'Nawabganj', '1320'),
('Dhaka', 'Dhaka', 'Nawabganj', 'Hasnabad', '1321'),
('Dhaka', 'Dhaka', 'Nawabganj', 'Daudpur', '1322'),
('Dhaka', 'Dhaka', 'Nawabganj', 'Agla', '1323'),
('Dhaka', 'Dhaka', 'Nawabganj', 'Khalpar', '1324'),
('Dhaka', 'Dhaka', 'Nawabganj', 'Churain', '1325'),
('Dhaka', 'Dhaka', 'Savar', 'Savar', '1340'),
('Dhaka', 'Dhaka', 'Savar', 'Dairy Farm', '1341'),
('Dhaka', 'Dhaka', 'Savar', 'Jahangirnagar Univer', '1342'),
('Dhaka', 'Dhaka', 'Savar', 'Saver P.A.T.C', '1343'),
('Dhaka', 'Dhaka', 'Savar', 'Savar Canttonment', '1344'),
('Dhaka', 'Dhaka', 'Savar', 'Shimulia', '1345'),
('Dhaka', 'Dhaka', 'Savar', 'Kashem Cotton Mills', '1346'),
('Dhaka', 'Dhaka', 'Savar', 'Rajphulbaria', '1347'),
('Dhaka', 'Dhaka', 'Savar', 'Amin Bazar', '1348'),
('Dhaka', 'Dhaka', 'Savar', 'EPZ', '1349'),
('Mymensingh', 'Mymensingh', 'Bhaluka', 'Bhaluka', '2240'),
('Mymensingh', 'Mymensingh', 'Fulbaria', 'Fulbaria', '2216'),
('Mymensingh', 'Mymensingh', 'Gaforgaon', 'Gaforgaon', '2230'),
('Mymensingh', 'Mymensingh', 'Gaforgaon', 'Shibganj', '2231'),
('Mymensingh', 'Mymensingh', 'Gaforgaon', 'Usti', '2232'),
('Mymensingh', 'Mymensingh', 'Gaforgaon', 'Kandipara', '2233'),
('Mymensingh', 'Mymensingh', 'Gaforgaon', 'Duttarbazar', '2234'),
('Mymensingh', 'Mymensingh', 'Gouripur', 'Gouripur', '2270'),
('Mymensingh', 'Mymensingh', 'Gouripur', 'Ramgopalpur', '2271'),
('Mymensingh', 'Mymensingh', 'Haluaghat', 'Haluaghat', '2260'),
('Mymensingh', 'Mymensingh', 'Haluaghat', 'Dhara', '2261'),
('Mymensingh', 'Mymensingh', 'Haluaghat', 'Munshirhat', '2262'),
('Mymensingh', 'Mymensingh', 'Isshwargonj', 'Isshwargonj', '2280'),
('Mymensingh', 'Mymensingh', 'Isshwargonj', 'Sohagi', '2281'),
('Mymensingh', 'Mymensingh', 'Isshwargonj', 'Atharabari', '2282'),
('Mymensingh', 'Mymensingh', 'Muktagachha', 'Muktagachha', '2210'),
('Mymensingh', 'Mymensingh', 'Mymensingh Sadar', 'Mymensingh Sadar', '2200'),
('Mymensingh', 'Mymensingh', 'Mymensingh Sadar', 'Kawatkhali', '2201'),
('Mymensingh', 'Mymensingh', 'Mymensingh Sadar', 'Agriculture Universi', '2202'),
('Mymensingh', 'Mymensingh', 'Mymensingh Sadar', 'Shombhuganj', '2203'),
('Mymensingh', 'Mymensingh', 'Mymensingh Sadar', 'Biddyaganj', '2204'),
('Mymensingh', 'Mymensingh', 'Mymensingh Sadar', 'Pearpur', '2205'),
('Mymensingh', 'Mymensingh', 'Nandail', 'Nandail', '2290'),
('Mymensingh', 'Mymensingh', 'Nandail', 'Gangail', '2291'),
('Mymensingh', 'Mymensingh', 'Phulpur', 'Phulpur', '2250'),
('Mymensingh', 'Mymensingh', 'Phulpur', 'Beltia', '2251'),
('Mymensingh', 'Mymensingh', 'Phulpur', 'Tarakanda', '2252'),
('Mymensingh', 'Mymensingh', 'Trishal', 'Trishal', '2220'),
('Mymensingh', 'Mymensingh', 'Trishal', 'Ahmadbad', '2221'),
('Mymensingh', 'Mymensingh', 'Trishal', 'Ram Amritaganj', '2222'),
('Mymensingh', 'Mymensingh', 'Trishal', 'Dhala', '2223'),
('Dhaka', 'Kishoreganj', 'Bajitpur', 'Bajitpur', '2336'),
('Dhaka', 'Kishoreganj', 'Bajitpur', 'Sararchar', '2337'),
('Dhaka', 'Kishoreganj', 'Bajitpur', 'Laksmipur', '2338'),
('Dhaka', 'Kishoreganj', 'Bhairob', 'Bhairab', '2350'),
('Dhaka', 'Kishoreganj', 'Hossenpur', 'Hossenpur', '2320'),
('Dhaka', 'Kishoreganj', 'Itna', 'Itna', '2390'),
('Dhaka', 'Kishoreganj', 'Karimganj', 'Karimganj', '2310'),
('Dhaka', 'Kishoreganj', 'Katiadi', 'Katiadi', '2330'),
('Dhaka', 'Kishoreganj', 'Katiadi', 'Gochhihata', '2331'),
('Dhaka', 'Kishoreganj', 'Kishoreganj Sadar', 'Kishoreganj Sadar', '2300'),
('Dhaka', 'Kishoreganj', 'Kishoreganj Sadar', 'Kishoreganj S.Mills', '2301'),
('Dhaka', 'Kishoreganj', 'Kishoreganj Sadar', 'Maizhati', '2302'),
('Dhaka', 'Kishoreganj', 'Kishoreganj Sadar', 'Nilganj', '2303'),
('Dhaka', 'Kishoreganj', 'Kuliarchar', 'Kuliarchar', '2340'),
('Dhaka', 'Kishoreganj', 'Kuliarchar', 'Chhoysuti', '2341'),
('Dhaka', 'Kishoreganj', 'Mithamoin', 'MIthamoin', '2370'),
('Dhaka', 'Kishoreganj', 'Mithamoin', 'Abdullahpur', '2371'),
('Dhaka', 'Kishoreganj', 'Nikli', 'Nikli', '2360'),
('Dhaka', 'Kishoreganj', 'Ostagram', 'Ostagram', '2380'),
('Dhaka', 'Kishoreganj', 'Pakundia', 'Pakundia', '2326'),
('Dhaka', 'Kishoreganj', 'Tarial', 'Tarial', '2316'),
('Dhaka', 'Netrakona', 'Susung Durgapur', 'IBH WAs Here', '$mart'),
('Dhaka', 'Netrakona', 'Susung Durgapur', 'Susnng Durgapur', '2420'),
('Dhaka', 'Netrakona', 'Atpara', 'Atpara', '2470'),
('Dhaka', 'Netrakona', 'Barhatta', 'Barhatta', '2440'),
('Dhaka', 'Netrakona', 'Dharmapasha', 'Dharampasha', '2450'),
('Dhaka', 'Netrakona', 'Dhobaura', 'Dhobaura', '2416'),
('Dhaka', 'Netrakona', 'Dhobaura', 'Sakoai', '2417'),
('Dhaka', 'Netrakona', 'Kalmakanda', 'Kalmakanda', '2430'),
('Dhaka', 'Netrakona', 'Kendua', 'Kendua', '2480'),
('Dhaka', 'Netrakona', 'Khaliajuri', 'Khaliajhri', '2460'),
('Dhaka', 'Netrakona', 'Khaliajuri', 'Shaldigha', '2462'),
('Dhaka', 'Netrakona', 'Madan', 'Madan', '2490'),
('Dhaka', 'Netrakona', 'Moddhynagar', 'Moddoynagar', '2456'),
('Dhaka', 'Netrakona', 'Mohanganj', 'Mohanganj', '2446'),
('Dhaka', 'Netrakona', 'Netrakona Sadar', 'Netrakona Sadar', '2400'),
('Dhaka', 'Netrakona', 'Netrakona Sadar', 'Baikherhati', '2401'),
('Dhaka', 'Netrakona', 'Purbadhola', 'Purbadhola', '2410'),
('Dhaka', 'Netrakona', 'Purbadhola', 'Shamgonj', '2411'),
('Dhaka', 'Netrakona', 'Purbadhola', 'Jaria Jhanjhail', '2412'),
('Dhaka', 'Narayanganj', 'Araihazar', 'Araihazar', '1450'),
('Dhaka', 'Narayanganj', 'Araihazar', 'Gopaldi', '1451'),
('Dhaka', 'Narayanganj', 'Baidder Bazar', 'Baidder Bazar', '1440'),
('Dhaka', 'Narayanganj', 'Baidder Bazar', 'Bara Nagar', '1441'),
('Dhaka', 'Narayanganj', 'Baidder Bazar', 'Barodi', '1442'),
('Dhaka', 'Narayanganj', 'Bandar', 'Bandar', '1410'),
('Dhaka', 'Narayanganj', 'Bandar', 'D.C Mills', '1411'),
('Dhaka', 'Narayanganj', 'Bandar', 'Nabiganj', '1412'),
('Dhaka', 'Narayanganj', 'Bandar', 'BIDS', '1413'),
('Dhaka', 'Narayanganj', 'Bandar', 'Madanganj', '1414'),
('Dhaka', 'Narayanganj', 'Fatullah', 'Fatullah', '1420'),
('Dhaka', 'Narayanganj', 'Fatullah', 'Fatulla Bazar', '1421'),
('Dhaka', 'Narayanganj', 'Narayanganj Sadar', 'Narayanganj Sadar', '1400'),
('Dhaka', 'Narayanganj', 'Rupganj', 'Rupganj', '1460'),
('Dhaka', 'Narayanganj', 'Rupganj', 'Kanchan', '1461'),
('Dhaka', 'Narayanganj', 'Rupganj', 'Bhulta', '1462'),
('Dhaka', 'Narayanganj', 'Rupganj', 'Nagri', '1463'),
('Dhaka', 'Narayanganj', 'Rupganj', 'Murapara', '1464'),
('Dhaka', 'Narayanganj', 'Siddirganj', 'Siddirganj', '1430'),
('Dhaka', 'Narayanganj', 'Siddirganj', 'Adamjeenagar', '1431'),
('Dhaka', 'Narayanganj', 'Siddirganj', 'LN Mills', '1432'),
('Dhaka', 'Munshiganj', 'Gajaria', 'Gajaria', '1510'),
('Dhaka', 'Munshiganj', 'Gajaria', 'Hossendi', '1511'),
('Dhaka', 'Munshiganj', 'Gajaria', 'Rasulpur', '1512'),
('Dhaka', 'Munshiganj', 'Lohajong', 'Haridia', '1333'),
('Dhaka', 'Munshiganj', 'Lohajong', 'Gouragonj', '1334'),
('Dhaka', 'Munshiganj', 'Lohajong', 'Madini Mandal', '1335'),
('Dhaka', 'Munshiganj', 'Lohajong', 'Lohajang', '1530'),
('Dhaka', 'Munshiganj', 'Lohajong', 'Korhati', '1531'),
('Dhaka', 'Munshiganj', 'Lohajong', 'Haldia SO', '1532'),
('Dhaka', 'Munshiganj', 'Lohajong', 'Haridia DESO', '1533'),
('Dhaka', 'Munshiganj', 'Lohajong', 'Gouragonj', '1534'),
('Dhaka', 'Munshiganj', 'Lohajong', 'Medini Mandal EDSO', '1535'),
('Dhaka', 'Munshiganj', 'Munshiganj Sadar', 'Munshiganj Sadar', '1500'),
('Dhaka', 'Munshiganj', 'Munshiganj Sadar', 'Rikabibazar', '1501'),
('Dhaka', 'Munshiganj', 'Munshiganj Sadar', 'Mirkadim', '1502'),
('Dhaka', 'Munshiganj', 'Munshiganj Sadar', 'Kathakhali', '1503'),
('Dhaka', 'Munshiganj', 'Sirajdikhan', 'Sirajdikhan', '1540'),
('Dhaka', 'Munshiganj', 'Sirajdikhan', 'Kola', '1541'),
('Dhaka', 'Munshiganj', 'Sirajdikhan', 'Ichapur', '1542'),
('Dhaka', 'Munshiganj', 'Sirajdikhan', 'Malkha Nagar', '1543'),
('Dhaka', 'Munshiganj', 'Sirajdikhan', 'Shekher Nagar', '1544'),
('Dhaka', 'Munshiganj', 'Srinagar', 'Srinagar', '1550'),
('Dhaka', 'Munshiganj', 'Srinagar', 'Barikhal', '1551'),
('Dhaka', 'Munshiganj', 'Srinagar', 'Mazpara', '1552'),
('Dhaka', 'Munshiganj', 'Srinagar', 'Hashara', '1553'),
('Dhaka', 'Munshiganj', 'Srinagar', 'Kolapara', '1554'),
('Dhaka', 'Munshiganj', 'Srinagar', 'Kumarbhog', '1555'),
('Dhaka', 'Munshiganj', 'Srinagar', 'Vaggyakul SO', '1556'),
('Dhaka', 'Munshiganj', 'Srinagar', 'Baghra', '1557'),
('Dhaka', 'Munshiganj', 'Srinagar', 'Bhaggyakul', '1558'),
('Dhaka', 'Munshiganj', 'Tangibari', 'Tangibari', '1520'),
('Dhaka', 'Munshiganj', 'Tangibari', 'Betkahat', '1521'),
('Dhaka', 'Munshiganj', 'Tangibari', 'Baligao', '1522'),
('Dhaka', 'Munshiganj', 'Tangibari', 'Bajrajugini', '1523'),
('Dhaka', 'Munshiganj', 'Tangibari', 'Hasail', '1524'),
('Dhaka', 'Munshiganj', 'Tangibari', 'Dighirpar', '1525'),
('Dhaka', 'Munshiganj', 'Tangibari', 'Pura EDSO', '1526'),
('Dhaka', 'Munshiganj', 'Tangibari', 'Pura', '1527'),
('Dhaka', 'Narshingdi', 'Belabo', 'Belabo', '1640'),
('Dhaka', 'Narshingdi', 'Monohordi', 'Monohordi', '1650'),
('Dhaka', 'Narshingdi', 'Monohordi', 'Hatirdia', '1651'),
('Dhaka', 'Narshingdi', 'Monohordi', 'Katabaria', '1652'),
('Dhaka', 'Narshingdi', 'Narshingdi Sadar', 'Narshingdi Sadar', '1600'),
('Dhaka', 'Narshingdi', 'Narshingdi Sadar', 'UMC Jute Mills', '1601'),
('Dhaka', 'Narshingdi', 'Narshingdi Sadar', 'Narshingdi College', '1602'),
('Dhaka', 'Narshingdi', 'Narshingdi Sadar', 'Panchdona', '1603'),
('Dhaka', 'Narshingdi', 'Narshingdi Sadar', 'Madhabdi', '1604'),
('Dhaka', 'Narshingdi', 'Narshingdi Sadar', 'Karimpur', '1605'),
('Dhaka', 'Narshingdi', 'Palash', 'Palash', '1610'),
('Dhaka', 'Narshingdi', 'Palash', 'Ghorashal Urea Facto', '1611'),
('Dhaka', 'Narshingdi', 'Palash', 'Char Sindhur', '1612'),
('Dhaka', 'Narshingdi', 'Palash', 'Ghorashal', '1613'),
('Dhaka', 'Narshingdi', 'Raypura', 'Raypura', '1630'),
('Dhaka', 'Narshingdi', 'Raypura', 'Bazar Hasnabad', '1631'),
('Dhaka', 'Narshingdi', 'Raypura', 'Radhaganj bazar', '1632'),
('Dhaka', 'Narshingdi', 'Shibpur', 'Shibpur', '1620'),
('Dhaka', 'Gazipur', 'Gazipur Sadar', 'Gazipur Sadar', '1700'),
('Dhaka', 'Gazipur', 'Gazipur Sadar', 'B.R.R', '1701'),
('Dhaka', 'Gazipur', 'Gazipur Sadar', 'Chandna', '1702'),
('Dhaka', 'Gazipur', 'Gazipur Sadar', 'B.O.F', '1703'),
('Dhaka', 'Gazipur', 'Gazipur Sadar', 'National University', '1704'),
('Dhaka', 'Gazipur', 'Kaliakaar', 'Kaliakaar', '1750'),
('Dhaka', 'Gazipur', 'Kaliakaar', 'Safipur', '1751'),
('Dhaka', 'Gazipur', 'Kaliganj', 'Kaliganj', '1720'),
('Dhaka', 'Gazipur', 'Kaliganj', 'Pubail', '1721'),
('Dhaka', 'Gazipur', 'Kaliganj', 'Santanpara', '1722'),
('Dhaka', 'Gazipur', 'Kaliganj', 'Vaoal Jamalpur', '1723'),
('Dhaka', 'Gazipur', 'Kapashia', 'kapashia', '1730'),
('Dhaka', 'Gazipur', 'Monnunagar', 'Monnunagar', '1710'),
('Dhaka', 'Gazipur', 'Monnunagar', 'Nishat Nagar', '1711'),
('Dhaka', 'Gazipur', 'Monnunagar', 'Ershad Nagar', '1712'),
('Dhaka', 'Gazipur', 'Sreepur', 'Sreepur', '1740'),
('Dhaka', 'Gazipur', 'Sreepur', 'Barmi', '1743'),
('Dhaka', 'Gazipur', 'Sreepur', 'Satkhamair', '1744'),
('Dhaka', 'Gazipur', 'Sreepur', 'Kawraid', '1745'),
('Dhaka', 'Gazipur', 'Sreepur', 'Bashamur', '1747'),
('Dhaka', 'Gazipur', 'Sreepur', 'Boubi', '1748'),
('Dhaka', 'Gazipur', 'Sripur', 'Rajendrapur', '1741'),
('Dhaka', 'Gazipur', 'Sripur', 'Rajendrapur Canttome', '1742'),
('Dhaka', 'Rajbari', 'Baliakandi', 'Baliakandi', '7730'),
('Dhaka', 'Rajbari', 'Baliakandi', 'Nalia', '7731'),
('Dhaka', 'Rajbari', 'Pangsha', 'Pangsha', '7720'),
('Dhaka', 'Rajbari', 'Pangsha', 'Ramkol', '7721'),
('Dhaka', 'Rajbari', 'Pangsha', 'Ratandia', '7722'),
('Dhaka', 'Rajbari', 'Pangsha', 'Mrigibazar', '7723'),
('Dhaka', 'Rajbari', 'Rajbari Sadar', 'Rajbari Sadar', '7700'),
('Dhaka', 'Rajbari', 'Rajbari Sadar', 'Goalanda', '7710'),
('Dhaka', 'Rajbari', 'Rajbari Sadar', 'Khankhanapur', '7711'),
('Dhaka', 'Faridpur', 'Alfadanga', 'Alfadanga', '7870'),
('Dhaka', 'Faridpur', 'Bhanga', 'Bhanga', '7830'),
('Dhaka', 'Faridpur', 'Boalmari', 'Boalmari', '7860'),
('Dhaka', 'Faridpur', 'Boalmari', 'Rupatpat', '7861'),
('Dhaka', 'Faridpur', 'Charbhadrasan', 'Charbadrashan', '7810'),
('Dhaka', 'Faridpur', 'Faridpur Sadar', 'Faridpursadar', '7800'),
('Dhaka', 'Faridpur', 'Faridpur Sadar', 'Kanaipur', '7801'),
('Dhaka', 'Faridpur', 'Faridpur Sadar', 'Ambikapur', '7802'),
('Dhaka', 'Faridpur', 'Faridpur Sadar', 'Baitulaman Politecni', '7803'),
('Dhaka', 'Faridpur', 'Madukhali', 'Madukhali', '7850'),
('Dhaka', 'Faridpur', 'Madukhali', 'Kamarkali', '7851'),
('Dhaka', 'Faridpur', 'Nagarkanda', 'Nagarkanda', '7840'),
('Dhaka', 'Faridpur', 'Nagarkanda', 'Talma', '7841'),
('Dhaka', 'Faridpur', 'Sadarpur', 'Sadarpur', '7820'),
('Dhaka', 'Faridpur', 'Sadarpur', 'Hat Krishapur', '7821'),
('Dhaka', 'Faridpur', 'Sadarpur', 'Bishwa jaker Manjil', '7822'),
('Dhaka', 'Faridpur', 'Shriangan', 'Shriangan', '7804'),
('Dhaka', 'Madaripur', 'Barhamganj', 'Barhamganj', '7930'),
('Dhaka', 'Madaripur', 'Barhamganj', 'Nilaksmibandar', '7931'),
('Dhaka', 'Madaripur', 'Barhamganj', 'Bahadurpur', '7932'),
('Dhaka', 'Madaripur', 'Barhamganj', 'Umedpur', '7933'),
('Dhaka', 'Madaripur', 'kalkini', 'Kalkini', '7920'),
('Dhaka', 'Madaripur', 'kalkini', 'Sahabrampur', '7921'),
('Dhaka', 'Madaripur', 'Madaripur Sadar', 'Madaripur Sadar', '7900'),
('Dhaka', 'Madaripur', 'Madaripur Sadar', 'Charmugria', '7901'),
('Dhaka', 'Madaripur', 'Madaripur Sadar', 'Kulpaddi', '7902'),
('Dhaka', 'Madaripur', 'Madaripur Sadar', 'Habiganj', '7903'),
('Dhaka', 'Madaripur', 'Madaripur Sadar', 'Mustafapur', '7904'),
('Dhaka', 'Madaripur', 'Rajoir', 'Rajoir', '7910'),
('Dhaka', 'Madaripur', 'Rajoir', 'Khalia', '7911'),
('Dhaka', 'Shariatpur', 'Bhedorganj', 'Bhedorganj', '8030'),
('Dhaka', 'Shariatpur', 'Damudhya', 'Damudhya', '8040'),
('Dhaka', 'Shariatpur', 'Gosairhat', 'Gosairhat', '8050'),
('Dhaka', 'Shariatpur', 'Jajira', 'Jajira', '8010'),
('Dhaka', 'Shariatpur', 'Naria', 'Naria', '8020'),
('Dhaka', 'Shariatpur', 'Naria', 'Bhozeshwar', '8021'),
('Dhaka', 'Shariatpur', 'Naria', 'Gharisar', '8022'),
('Dhaka', 'Shariatpur', 'Naria', 'Upshi', '8023'),
('Dhaka', 'Shariatpur', 'Naria', 'Kartikpur', '8024'),
('Dhaka', 'Shariatpur', 'Shariatpur Sadar', 'Shariatpur Sadar', '8000'),
('Dhaka', 'Shariatpur', 'Shariatpur Sadar', 'Angaria', '8001'),
('Dhaka', 'Shariatpur', 'Shariatpur Sadar', 'Chikandi', '8002'),
('Dhaka', 'Gopalganj', 'Gopalganj Sadar', 'Chandradighalia', '8013'),
('Dhaka', 'Gopalganj', 'Gopalganj Sadar', 'Gopalganj Sadar', '8100'),
('Dhaka', 'Gopalganj', 'Gopalganj Sadar', 'Ulpur', '8101'),
('Dhaka', 'Gopalganj', 'Gopalganj Sadar', 'Barfa', '8102'),
('Dhaka', 'Gopalganj', 'Kashiani', 'Kashiani', '8130'),
('Dhaka', 'Gopalganj', 'Kashiani', 'Ramdia College', '8131'),
('Dhaka', 'Gopalganj', 'Kashiani', 'Ratoil', '8132'),
('Dhaka', 'Gopalganj', 'Kashiani', 'Jonapur', '8133'),
('Dhaka', 'Gopalganj', 'Kotalipara', 'Kotalipara', '8110'),
('Dhaka', 'Gopalganj', 'Maksudpur', 'Maksudpur', '8140'),
('Dhaka', 'Gopalganj', 'Maksudpur', 'Batkiamari', '8141'),
('Dhaka', 'Gopalganj', 'Maksudpur', 'Khandarpara', '8142'),
('Dhaka', 'Gopalganj', 'Tungipara', 'Tungipara', '8120'),
('Dhaka', 'Gopalganj', 'Tungipara', 'Patgati', '8121'),
('Dhaka', 'Manikganj', 'Doulatpur', 'Doulatpur', '1860'),
('Dhaka', 'Manikganj', 'Gheor', 'Gheor', '1840'),
('Dhaka', 'Manikganj', 'Lechhraganj', 'Lechhraganj', '1830'),
('Dhaka', 'Manikganj', 'Lechhraganj', 'Jhitka', '1831'),
('Dhaka', 'Manikganj', 'Manikganj Sadar', 'Manikganj Sadar', '1800'),
('Dhaka', 'Manikganj', 'Manikganj Sadar', 'Manikganj Bazar', '1801'),
('Dhaka', 'Manikganj', 'Manikganj Sadar', 'Gorpara', '1802'),
('Dhaka', 'Manikganj', 'Manikganj Sadar', 'Mahadebpur', '1803'),
('Dhaka', 'Manikganj', 'Manikganj Sadar', 'Barangail', '1804'),
('Dhaka', 'Manikganj', 'Saturia', 'Saturia', '1810'),
('Dhaka', 'Manikganj', 'Saturia', 'Baliati', '1811'),
('Dhaka', 'Manikganj', 'Shibloya', 'Shibaloy', '1850'),
('Dhaka', 'Manikganj', 'Shibloya', 'Aricha', '1851'),
('Dhaka', 'Manikganj', 'Shibloya', 'Tewta', '1852'),
('Dhaka', 'Manikganj', 'Shibloya', 'Uthli', '1853'),
('Dhaka', 'Manikganj', 'Singari', 'Singair', '1820'),
('Dhaka', 'Manikganj', 'Singari', 'Baira', '1821'),
('Dhaka', 'Manikganj', 'Singari', 'joymantop', '1822'),
('Dhaka', 'Tangail', 'Basail', 'Basail', '1920'),
('Dhaka', 'Tangail', 'Bhuapur', 'Bhuapur', '1960'),
('Dhaka', 'Tangail', 'Delduar', 'Delduar', '1910'),
('Dhaka', 'Tangail', 'Delduar', 'Jangalia', '1911'),
('Dhaka', 'Tangail', 'Delduar', 'Patharail', '1912'),
('Dhaka', 'Tangail', 'Delduar', 'Elasin', '1913'),
('Dhaka', 'Tangail', 'Delduar', 'Hinga Nagar', '1914'),
('Dhaka', 'Tangail', 'Delduar', 'Lowhati', '1915'),
('Dhaka', 'Tangail', 'Ghatail', 'Ghatial', '1980'),
('Dhaka', 'Tangail', 'Ghatail', 'Zahidganj', '1981'),
('Dhaka', 'Tangail', 'Ghatail', 'D. Pakutia', '1982'),
('Dhaka', 'Tangail', 'Ghatail', 'Dhalapara', '1983'),
('Dhaka', 'Tangail', 'Ghatail', 'Lohani', '1984'),
('Dhaka', 'Tangail', 'Gopalpur', 'Gopalpur', '1990'),
('Dhaka', 'Tangail', 'Gopalpur', 'Jhowail', '1991'),
('Dhaka', 'Tangail', 'Gopalpur', 'Hemnagar', '1992'),
('Dhaka', 'Tangail', 'Kalihati', 'Kalihati', '1970'),
('Dhaka', 'Tangail', 'Kalihati', 'Rajafair', '1971'),
('Dhaka', 'Tangail', 'Kalihati', 'Nagbari', '1972'),
('Dhaka', 'Tangail', 'Kalihati', 'Ballabazar', '1973'),
('Dhaka', 'Tangail', 'Kalihati', 'Elinga', '1974'),
('Dhaka', 'Tangail', 'Kalihati', 'Palisha', '1975'),
('Dhaka', 'Tangail', 'Kalihati', 'Nagarbari SO', '1976'),
('Dhaka', 'Tangail', 'Kalihati', 'Nagarbari', '1977'),
('Dhaka', 'Tangail', 'Kashkaolia', 'Kashkawlia', '1930'),
('Dhaka', 'Tangail', 'Madhupur', 'Madhupur', '1996'),
('Dhaka', 'Tangail', 'Madhupur', 'Dhobari', '1997'),
('Dhaka', 'Tangail', 'Mirzapur', 'Mirzapur', '1940'),
('Dhaka', 'Tangail', 'Mirzapur', 'Gorai', '1941'),
('Dhaka', 'Tangail', 'Mirzapur', 'M.C. College', '1942'),
('Dhaka', 'Tangail', 'Mirzapur', 'Warri paikpara', '1943'),
('Dhaka', 'Tangail', 'Mirzapur', 'Jarmuki', '1944'),
('Dhaka', 'Tangail', 'Mirzapur', 'Mohera', '1945'),
('Dhaka', 'Tangail', 'Nagarpur', 'Nagarpur', '1936'),
('Dhaka', 'Tangail', 'Nagarpur', 'Dhuburia', '1937'),
('Dhaka', 'Tangail', 'Nagarpur', 'Salimabad', '1938'),
('Dhaka', 'Tangail', 'Sakhipur', 'Sakhipur', '1950'),
('Dhaka', 'Tangail', 'Sakhipur', 'Kochua', '1951'),
('Dhaka', 'Tangail', 'Tangail Sadar', 'Tangail Sadar', '1900'),
('Dhaka', 'Tangail', 'Tangail Sadar', 'Kagmari', '1901'),
('Dhaka', 'Tangail', 'Tangail Sadar', 'Santosh', '1902'),
('Dhaka', 'Tangail', 'Tangail Sadar', 'Korotia', '1903'),
('Dhaka', 'Tangail', 'Tangail Sadar', 'Purabari', '1904'),
('Dhaka', 'Jamalpur', 'Dewangonj', 'Dewangonj', '2030'),
('Dhaka', 'Jamalpur', 'Dewangonj', 'Dewangonj S. Mills', '2031'),
('Dhaka', 'Jamalpur', 'Islampur', 'Islampur', '2020'),
('Dhaka', 'Jamalpur', 'Islampur', 'Durmoot', '2021'),
('Dhaka', 'Jamalpur', 'Islampur', 'Gilabari', '2022'),
('Dhaka', 'Jamalpur', 'Jamalpur', 'Jamalpur', '2000'),
('Dhaka', 'Jamalpur', 'Jamalpur', 'Nandina', '2001'),
('Dhaka', 'Jamalpur', 'Jamalpur', 'Narundi', '2002'),
('Dhaka', 'Jamalpur', 'Malandah', 'Malandah', '2010'),
('Dhaka', 'Jamalpur', 'Malandah', 'Jamalpur', '2011'),
('Dhaka', 'Jamalpur', 'Malandah', 'Malancha', '2012'),
('Dhaka', 'Jamalpur', 'Malandah', 'Mahmoodpur', '2013'),
('Dhaka', 'Jamalpur', 'Mathargonj', 'Mathargonj', '2040'),
('Dhaka', 'Jamalpur', 'Mathargonj', 'Balijhuri', '2041'),
('Dhaka', 'Jamalpur', 'Shorishabari', 'Shorishabari', '2050'),
('Dhaka', 'Jamalpur', 'Shorishabari', 'Gunerbari', '2051'),
('Dhaka', 'Jamalpur', 'Shorishabari', 'Bausee', '2052'),
('Dhaka', 'Jamalpur', 'Shorishabari', 'Jagannath Ghat', '2053'),
('Dhaka', 'Jamalpur', 'Shorishabari', 'Pingna', '2054'),
('Dhaka', 'Jamalpur', 'Shorishabari', 'Jamuna Sar Karkhana', '2055'),
('Dhaka', 'Sherpur', 'Bakshigonj', 'Bakshigonj', '2140'),
('Dhaka', 'Sherpur', 'Jhinaigati', 'Jhinaigati', '2120'),
('Dhaka', 'Sherpur', 'Nakla', 'Nakla', '2150'),
('Dhaka', 'Sherpur', 'Nakla', 'Gonopaddi', '2151'),
('Dhaka', 'Sherpur', 'Nalitabari', 'Nalitabari', '2110'),
('Dhaka', 'Sherpur', 'Nalitabari', 'Hatibandha', '2111'),
('Dhaka', 'Sherpur', 'Sherpur Shadar', 'Sherpur Shadar', '2100'),
('Dhaka', 'Sherpur', 'Shribardi', 'Shribardi', '2130'),
('Chattagram', 'Brahmanbaria', 'Akhaura', 'Akhaura', '3450'),
('Chattagram', 'Brahmanbaria', 'Akhaura', 'Azampur', '3451'),
('Chattagram', 'Brahmanbaria', 'Akhaura', 'Gangasagar', '3452'),
('Chattagram', 'Brahmanbaria', 'Banchharampur', 'Banchharampur', '3420'),
('Chattagram', 'Brahmanbaria', 'Brahamanbaria Sadar', 'Brahamanbaria Sadar', '3400'),
('Chattagram', 'Brahmanbaria', 'Brahamanbaria Sadar', 'Talshahar', '3401'),
('Chattagram', 'Brahmanbaria', 'Brahamanbaria Sadar', 'Ashuganj', '3402'),
('Chattagram', 'Brahmanbaria', 'Brahamanbaria Sadar', 'Ashuganj Share', '3403'),
('Chattagram', 'Brahmanbaria', 'Brahamanbaria Sadar', 'Poun', '3404'),
('Chattagram', 'Brahmanbaria', 'Kasba', 'Kasba', '3460'),
('Chattagram', 'Brahmanbaria', 'Kasba', 'Kuti', '3461'),
('Chattagram', 'Brahmanbaria', 'Kasba', 'Chandidar', '3462'),
('Chattagram', 'Brahmanbaria', 'Kasba', 'Chargachh', '3463'),
('Chattagram', 'Brahmanbaria', 'Kasba', 'Gopinathpur', '3464'),
('Chattagram', 'Brahmanbaria', 'Nabinagar', 'Nabinagar', '3410'),
('Chattagram', 'Brahmanbaria', 'Nabinagar', 'Laubfatehpur', '3411'),
('Chattagram', 'Brahmanbaria', 'Nabinagar', 'Rasullabad', '3412'),
('Chattagram', 'Brahmanbaria', 'Nabinagar', 'Shamgram', '3413'),
('Chattagram', 'Brahmanbaria', 'Nabinagar', 'Ratanpur', '3414'),
('Chattagram', 'Brahmanbaria', 'Nabinagar', 'Shahapur', '3415'),
('Chattagram', 'Brahmanbaria', 'Nabinagar', 'Kaitala', '3417'),
('Chattagram', 'Brahmanbaria', 'Nabinagar', 'Salimganj', '3418'),
('Chattagram', 'Brahmanbaria', 'Nabinagar', 'Jibanganj', '3419'),
('Chattagram', 'Brahmanbaria', 'Nasirnagar', 'Nasirnagar', '3440'),
('Chattagram', 'Brahmanbaria', 'Nasirnagar', 'Fandauk', '3441'),
('Chattagram', 'Brahmanbaria', 'Sarail', 'Sarial', '3430'),
('Chattagram', 'Brahmanbaria', 'Sarail', 'Shahbajpur', '3431'),
('Chattagram', 'Brahmanbaria', 'Sarail', 'Chandura', '3432'),
('Chattagram', 'Comilla', 'Barura', 'Barura', '3560'),
('Chattagram', 'Comilla', 'Barura', 'Poyalgachha', '3561'),
('Chattagram', 'Comilla', 'Barura', 'Murdafarganj', '3562'),
('Chattagram', 'Comilla', 'Brahmanpara', 'Brahmanpara', '3526'),
('Chattagram', 'Comilla', 'Burichang', 'Burichang', '3520'),
('Chattagram', 'Comilla', 'Burichang', 'Maynamoti bazar', '3521'),
('Chattagram', 'Comilla', 'Chandina', 'Chandia', '3510'),
('Chattagram', 'Comilla', 'Chandina', 'Madhaiabazar', '3511'),
('Chattagram', 'Comilla', 'Chouddagram', 'Chouddagram', '3550'),
('Chattagram', 'Comilla', 'Chouddagram', 'Batisa', '3551'),
('Chattagram', 'Comilla', 'Chouddagram', 'Chiora', '3552'),
('Chattagram', 'Comilla', 'Comilla Sadar', 'Comilla Sadar', '3500'),
('Chattagram', 'Comilla', 'Comilla Sadar', 'Comilla Contoment', '3501'),
('Chattagram', 'Comilla', 'Comilla Sadar', 'Halimanagar', '3502'),
('Chattagram', 'Comilla', 'Comilla Sadar', 'Courtbari', '3503'),
('Chattagram', 'Comilla', 'Comilla Sadar', 'Suaganj', '3504'),
('Chattagram', 'Comilla', 'Daudkandi', 'Daudkandi', '3516'),
('Chattagram', 'Comilla', 'Daudkandi', 'Gouripur', '3517'),
('Chattagram', 'Comilla', 'Daudkandi', 'Dashpara', '3518'),
('Chattagram', 'Comilla', 'Daudkandi', 'Eliotganj', '3519'),
('Chattagram', 'Comilla', 'Davidhar', 'Davidhar', '3530'),
('Chattagram', 'Comilla', 'Davidhar', 'Gangamandal', '3531'),
('Chattagram', 'Comilla', 'Davidhar', 'Barashalghar', '3532'),
('Chattagram', 'Comilla', 'Davidhar', 'Dhamtee', '3533'),
('Chattagram', 'Comilla', 'Homna', 'Homna', '3546'),
('Chattagram', 'Comilla', 'Laksam', 'Laksam', '3570'),
('Chattagram', 'Comilla', 'Laksam', 'Lakshamanpur', '3571'),
('Chattagram', 'Comilla', 'Laksam', 'Bipulasar', '3572'),
('Chattagram', 'Comilla', 'Langalkot', 'Langalkot', '3580'),
('Chattagram', 'Comilla', 'Langalkot', 'Dhalua', '3581'),
('Chattagram', 'Comilla', 'Langalkot', 'Chhariabazar', '3582'),
('Chattagram', 'Comilla', 'Langalkot', 'Gunabati', '3583'),
('Chattagram', 'Comilla', 'Muradnagar', 'Muradnagar', '3540'),
('Chattagram', 'Comilla', 'Muradnagar', 'Ramchandarpur', '3541'),
('Chattagram', 'Comilla', 'Muradnagar', 'Companyganj', '3542'),
('Chattagram', 'Comilla', 'Muradnagar', 'Bangra', '3543'),
('Chattagram', 'Comilla', 'Muradnagar', 'Sonakanda', '3544'),
('Chattagram', 'Comilla', 'Muradnagar', 'Pantibazar', '3545'),
('Chattagram', 'Lakshmipur', 'Char Alexgander', 'Char Alexgander', '3730'),
('Chattagram', 'Lakshmipur', 'Char Alexgander', 'Hajirghat', '3731'),
('Chattagram', 'Lakshmipur', 'Char Alexgander', 'Ramgatirhat', '3732'),
('Chattagram', 'Lakshmipur', 'Lakshimpur Sadar', 'Lakshimpur Sadar', '3700'),
('Chattagram', 'Lakshmipur', 'Lakshimpur Sadar', 'Dalal Bazar', '3701'),
('Chattagram', 'Lakshmipur', 'Lakshimpur Sadar', 'Bhabaniganj', '3702'),
('Chattagram', 'Lakshmipur', 'Lakshimpur Sadar', 'Mandari', '3703'),
('Chattagram', 'Lakshmipur', 'Lakshimpur Sadar', 'Keramatganj', '3704'),
('Chattagram', 'Lakshmipur', 'Lakshimpur Sadar', 'Rupchara', '3705'),
('Chattagram', 'Lakshmipur', 'Lakshimpur Sadar', 'Duttapara', '3706'),
('Chattagram', 'Lakshmipur', 'Lakshimpur Sadar', 'Choupalli', '3707'),
('Chattagram', 'Lakshmipur', 'Lakshimpur Sadar', 'Chandraganj', '3708'),
('Chattagram', 'Lakshmipur', 'Lakshimpur Sadar', 'Amani Lakshimpur', '3709'),
('Chattagram', 'Lakshmipur', 'Ramganj', 'Ramganj', '3720'),
('Chattagram', 'Lakshmipur', 'Ramganj', 'Alipur', '3721'),
('Chattagram', 'Lakshmipur', 'Ramganj', 'Panpara', '3722'),
('Chattagram', 'Lakshmipur', 'Ramganj', 'Kanchanpur', '3723'),
('Chattagram', 'Lakshmipur', 'Ramganj', 'Naagmud', '3724'),
('Chattagram', 'Lakshmipur', 'Ramganj', 'Dolta', '3725'),
('Chattagram', 'Lakshmipur', 'Raypur', 'Raypur', '3710'),
('Chattagram', 'Lakshmipur', 'Raypur', 'Rakhallia', '3711'),
('Chattagram', 'Lakshmipur', 'Raypur', 'Nagerdighirpar', '3712'),
('Chattagram', 'Lakshmipur', 'Raypur', 'Haydarganj', '3713'),
('Chattagram', 'Lakshmipur', 'Raypur', 'Bhuabari', '3714'),
('Chattagram', 'Noakhali', 'Basurhat', 'Basur Hat', '3850'),
('Chattagram', 'Noakhali', 'Basurhat', 'Charhajari', '3851'),
('Chattagram', 'Noakhali', 'Begumganj', 'Begumganj', '3820'),
('Chattagram', 'Noakhali', 'Begumganj', 'Choumohani', '3821'),
('Chattagram', 'Noakhali', 'Begumganj', 'Banglabazar', '3822'),
('Chattagram', 'Noakhali', 'Begumganj', 'Mir Owarishpur', '3823'),
('Chattagram', 'Noakhali', 'Begumganj', 'Bazra', '3824'),
('Chattagram', 'Noakhali', 'Begumganj', 'Jamidar Hat', '3825'),
('Chattagram', 'Noakhali', 'Begumganj', 'Sonaimuri', '3827'),
('Chattagram', 'Noakhali', 'Begumganj', 'Gopalpur', '3828'),
('Chattagram', 'Noakhali', 'Begumganj', 'Joynarayanpur', '3829'),
('Chattagram', 'Noakhali', 'Begumganj', 'Alaiarpur', '3831'),
('Chattagram', 'Noakhali', 'Begumganj', 'Tangirpar', '3832'),
('Chattagram', 'Noakhali', 'Begumganj', 'Khalafat Bazar', '3833'),
('Chattagram', 'Noakhali', 'Begumganj', 'Rajganj', '3834'),
('Chattagram', 'Noakhali', 'Begumganj', 'Oachhekpur', '3835'),
('Chattagram', 'Noakhali', 'Begumganj', 'Bhabani Jibanpur', '3837'),
('Chattagram', 'Noakhali', 'Begumganj', 'Maheshganj', '3838'),
('Chattagram', 'Noakhali', 'Begumganj', 'Nadona', '3839'),
('Chattagram', 'Noakhali', 'Begumganj', 'Nandiapara', '3841'),
('Chattagram', 'Noakhali', 'Begumganj', 'Khalishpur', '3842'),
('Chattagram', 'Noakhali', 'Begumganj', 'Dauti', '3843'),
('Chattagram', 'Noakhali', 'Begumganj', 'Joyag', '3844'),
('Chattagram', 'Noakhali', 'Begumganj', 'Thanar Hat', '3845'),
('Chattagram', 'Noakhali', 'Begumganj', 'Amisha Para', '3847'),
('Chattagram', 'Noakhali', 'Begumganj', 'Durgapur', '3848'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Chatkhil', '3870'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Palla', '3871'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Khilpara', '3872'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Bodalcourt', '3873'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Rezzakpur', '3874'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Solla', '3875'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Karihati', '3877'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Dosh Gharia', '3878'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Bansa Bazar', '3879'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Sahapur', '3881'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Sampara', '3882'),
('Chattagram', 'Noakhali', 'Chatkhil', 'Shingbahura', '3883'),
('Chattagram', 'Noakhali', 'Hatiya', 'Hatiya', '3890'),
('Chattagram', 'Noakhali', 'Hatiya', 'Afazia', '3891'),
('Chattagram', 'Noakhali', 'Hatiya', 'Tamoraddi', '3892'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Noakhali Sadar', '3800'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Noakhali College', '3801'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Sonapur', '3802'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Din Monir Hat', '3803'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Pak Kishoreganj', '3804'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Mriddarhat', '3806'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Kabirhat', '3807'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Khalifar Hat', '3808'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Charam Tua', '3809'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Chaprashir Hat', '3811'),
('Chattagram', 'Noakhali', 'Noakhali Sadar', 'Char Jabbar', '3812'),
('Chattagram', 'Noakhali', 'Senbag', 'Senbag', '3860'),
('Chattagram', 'Noakhali', 'Senbag', 'Kallyandi', '3861'),
('Chattagram', 'Noakhali', 'Senbag', 'Beezbag', '3862'),
('Chattagram', 'Noakhali', 'Senbag', 'Kankirhat', '3863'),
('Chattagram', 'Noakhali', 'Senbag', 'Chatarpaia', '3864'),
('Chattagram', 'Noakhali', 'Senbag', 'T.P. Lamua', '3865'),
('Chattagram', 'Feni', 'Chhagalnaia', 'Chhagalnaia', '3910'),
('Chattagram', 'Feni', 'Chhagalnaia', 'Maharajganj', '3911'),
('Chattagram', 'Feni', 'Chhagalnaia', 'Daraga Hat', '3912'),
('Chattagram', 'Feni', 'Chhagalnaia', 'Puabashimulia', '3913'),
('Chattagram', 'Feni', 'Dagonbhuia', 'Dagondhuia', '3920'),
('Chattagram', 'Feni', 'Dagonbhuia', 'Dudmukha', '3921'),
('Chattagram', 'Feni', 'Dagonbhuia', 'Chhilonia', '3922'),
('Chattagram', 'Feni', 'Dagonbhuia', 'Rajapur', '3923'),
('Chattagram', 'Feni', 'Feni Sadar', 'Feni Sadar', '3900'),
('Chattagram', 'Feni', 'Feni Sadar', 'Fazilpur', '3901'),
('Chattagram', 'Feni', 'Feni Sadar', 'Sharshadie', '3902'),
('Chattagram', 'Feni', 'Feni Sadar', 'Laskarhat', '3903'),
('Chattagram', 'Feni', 'Pashurampur', 'Pashurampur', '3940'),
('Chattagram', 'Feni', 'Pashurampur', 'Shuarbazar', '3941'),
('Chattagram', 'Feni', 'Pashurampur', 'Fulgazi', '3942'),
('Chattagram', 'Feni', 'Pashurampur', 'Munshirhat', '3943'),
('Chattagram', 'Feni', 'Sonagazi', 'Sonagazi', '3930'),
('Chattagram', 'Feni', 'Sonagazi', 'Motiganj', '3931'),
('Chattagram', 'Feni', 'Sonagazi', 'Ahmadpur', '3932'),
('Chattagram', 'Feni', 'Sonagazi', 'Kazirhat', '3933'),
('Chattagram', 'Chittagong', 'Anawara', 'Anowara', '4376'),
('Chattagram', 'Chittagong', 'Anawara', 'Paroikora', '4377'),
('Chattagram', 'Chittagong', 'Anawara', 'Battali', '4378'),
('Chattagram', 'Chittagong', 'Boalkhali', 'Kanungopara', '4363'),
('Chattagram', 'Chittagong', 'Boalkhali', 'Saroatoli', '4364'),
('Chattagram', 'Chittagong', 'Boalkhali', 'Iqbal Park', '4365'),
('Chattagram', 'Chittagong', 'Boalkhali', 'Boalkhali', '4366'),
('Chattagram', 'Chittagong', 'Boalkhali', 'Sakpura', '4367'),
('Chattagram', 'Chittagong', 'Boalkhali', 'Kadurkhal', '4368'),
('Chattagram', 'Chittagong', 'Boalkhali', 'Charandwip', '4369'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Chittagong GPO', '4000'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Chittagong Bandar', '4100'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Pahartoli', '4202'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Chawkbazar', '4203'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Patenga', '4204'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Chittagong Airport', '4205'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Jaldia Merine Accade', '4206'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Firozshah', '4207'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Mohard', '4208'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Chitt. Politechnic In', '4209'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Bayezid Bostami', '4210'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Amin Jute Mills', '4211'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Chandgaon', '4212'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Wazedia', '4213'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Jalalabad', '4214'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Anandabazar', '4215'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Halishahar', '4216'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'North Katuli', '4217'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Chitt. Sailers Colon', '4218'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Chitt. Customs Acca', '4219'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Chitt. Cantonment', '4220'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Middle Patenga', '4222'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Export Processing', '4223'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Rampura TSO', '4224'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'Halishshar', '4225'),
('Chattagram', 'Chittagong', 'Chittagong Sadar', 'North Halishahar', '4226'),
('Chattagram', 'Chittagong', 'East Joara', 'East Joara', '4380'),
('Chattagram', 'Chittagong', 'East Joara', 'Gachbaria', '4381'),
('Chattagram', 'Chittagong', 'East Joara', 'Dohazari', '4382'),
('Chattagram', 'Chittagong', 'East Joara', 'Barma', '4383'),
('Chattagram', 'Chittagong', 'Fatikchhari', 'Fatikchhari', '4350'),
('Chattagram', 'Chittagong', 'Fatikchhari', 'Nanupur', '4351'),
('Chattagram', 'Chittagong', 'Fatikchhari', 'Bhandar Sharif', '4352'),
('Chattagram', 'Chittagong', 'Fatikchhari', 'Najirhat', '4353'),
('Chattagram', 'Chittagong', 'Fatikchhari', 'Harualchhari', '4354'),
('Chattagram', 'Chittagong', 'Fatikchhari', 'Narayanhat', '4355'),
('Chattagram', 'Chittagong', 'Hathazari', 'Hathazari', '4330'),
('Chattagram', 'Chittagong', 'Hathazari', 'Chitt.University', '4331'),
('Chattagram', 'Chittagong', 'Hathazari', 'Gorduara', '4332'),
('Chattagram', 'Chittagong', 'Hathazari', 'Katirhat', '4333'),
('Chattagram', 'Chittagong', 'Hathazari', 'Mirzapur', '4334'),
('Chattagram', 'Chittagong', 'Hathazari', 'Fatahabad', '4335'),
('Chattagram', 'Chittagong', 'Hathazari', 'Nuralibari', '4337'),
('Chattagram', 'Chittagong', 'Hathazari', 'Yunus Nagar', '4338'),
('Chattagram', 'Chittagong', 'Hathazari', 'Madrasa', '4339'),
('Chattagram', 'Chittagong', 'Jaldi', 'Jaldi', '4390'),
('Chattagram', 'Chittagong', 'Jaldi', 'Khan Bahadur', '4391'),
('Chattagram', 'Chittagong', 'Jaldi', 'Gunagari', '4392'),
('Chattagram', 'Chittagong', 'Jaldi', 'Banigram', '4393'),
('Chattagram', 'Chittagong', 'Lohagara', 'Lohagara', '4396'),
('Chattagram', 'Chittagong', 'Lohagara', 'Padua', '4397'),
('Chattagram', 'Chittagong', 'Lohagara', 'Chunti', '4398'),
('Chattagram', 'Chittagong', 'Mirsharai', 'Mirsharai', '4320'),
('Chattagram', 'Chittagong', 'Mirsharai', 'Abutorab', '4321'),
('Chattagram', 'Chittagong', 'Mirsharai', 'Darrogahat', '4322'),
('Chattagram', 'Chittagong', 'Mirsharai', 'Bharawazhat', '4323'),
('Chattagram', 'Chittagong', 'Mirsharai', 'Joarganj', '4324'),
('Chattagram', 'Chittagong', 'Mirsharai', 'Azampur', '4325'),
('Chattagram', 'Chittagong', 'Mirsharai', 'Korerhat', '4327'),
('Chattagram', 'Chittagong', 'Mirsharai', 'Mohazanhat', '4328'),
('Chattagram', 'Chittagong', 'Patia Head Office', 'Patia Head Office', '4370'),
('Chattagram', 'Chittagong', 'Patia Head Office', 'Budhpara', '4371'),
('Chattagram', 'Chittagong', 'Rangunia', 'Rangunia', '4360'),
('Chattagram', 'Chittagong', 'Rangunia', 'Dhamair', '4361'),
('Chattagram', 'Chittagong', 'Rouzan', 'Rouzan', '4340'),
('Chattagram', 'Chittagong', 'Rouzan', 'Beenajuri', '4341'),
('Chattagram', 'Chittagong', 'Rouzan', 'Kundeshwari', '4342'),
('Chattagram', 'Chittagong', 'Rouzan', 'Gahira', '4343'),
('Chattagram', 'Chittagong', 'Rouzan', 'jagannath Hat', '4344'),
('Chattagram', 'Chittagong', 'Rouzan', 'Fatepur', '4345'),
('Chattagram', 'Chittagong', 'Rouzan', 'Guzra Noapara', '4346'),
('Chattagram', 'Chittagong', 'Rouzan', 'Dewanpur', '4347'),
('Chattagram', 'Chittagong', 'Rouzan', 'Mohamuni', '4348'),
('Chattagram', 'Chittagong', 'Rouzan', 'B.I.T Post Office', '4349'),
('Chattagram', 'Chittagong', 'Sandwip', 'Sandwip', '4300'),
('Chattagram', 'Chittagong', 'Sandwip', 'Shiberhat', '4301'),
('Chattagram', 'Chittagong', 'Sandwip', 'Urirchar', '4302'),
('Chattagram', 'Chittagong', 'Satkania', 'Satkania', '4386'),
('Chattagram', 'Chittagong', 'Satkania', 'Baitul Ijjat', '4387'),
('Chattagram', 'Chittagong', 'Satkania', 'Bazalia', '4388'),
('Chattagram', 'Chittagong', 'Sitakunda', 'Sitakunda', '4310'),
('Chattagram', 'Chittagong', 'Sitakunda', 'Baroidhala', '4311'),
('Chattagram', 'Chittagong', 'Sitakunda', 'Barabkunda', '4312'),
('Chattagram', 'Chittagong', 'Sitakunda', 'Bawashbaria', '4313'),
('Chattagram', 'Chittagong', 'Sitakunda', 'Kumira', '4314'),
('Chattagram', 'Chittagong', 'Sitakunda', 'Bhatiari', '4315'),
('Chattagram', 'Chittagong', 'Sitakunda', 'Fouzdarhat', '4316'),
('Chattagram', 'Chittagong', 'Sitakunda', 'Jafrabad', '4317'),
('Chattagram', 'Khagrachari', 'Diginala', 'Diginala', '4420'),
('Chattagram', 'Khagrachari', 'Khagrachari Sadar', 'Khagrachari Sadar', '4400'),
('Chattagram', 'Khagrachari', 'Laxmichhari', 'Laxmichhari', '4470'),
('Chattagram', 'Khagrachari', 'Mahalchhari', 'Mahalchhari', '4430'),
('Chattagram', 'Khagrachari', 'Manikchhari', 'Manikchhari', '4460'),
('Chattagram', 'Khagrachari', 'Matiranga', 'Matiranga', '4450'),
('Chattagram', 'Khagrachari', 'Panchhari', 'Panchhari', '4410'),
('Chattagram', 'Khagrachari', 'Ramghar Head Office', 'Ramghar Head Office', '4440'),
('Chattagram', 'Rangamati', 'Barakal', 'Barakal', '4570'),
('Chattagram', 'Rangamati', 'Bilaichhari', 'Bilaichhari', '4550'),
('Chattagram', 'Rangamati', 'Jarachhari', 'Jarachhari', '4560'),
('Chattagram', 'Rangamati', 'Kalampati', 'Kalampati', '4510'),
('Chattagram', 'Rangamati', 'Kalampati', 'Betbunia', '4511'),
('Chattagram', 'Rangamati', 'kaptai', 'Kaptai', '4530'),
('Chattagram', 'Rangamati', 'kaptai', 'Chandraghona', '4531'),
('Chattagram', 'Rangamati', 'kaptai', 'Kaptai Project', '4532'),
('Chattagram', 'Rangamati', 'kaptai', 'Kaptai Nuton Bazar', '4533'),
('Chattagram', 'Rangamati', 'Longachh', 'Longachh', '4580'),
('Chattagram', 'Rangamati', 'Marishya', 'Marishya', '4590'),
('Chattagram', 'Rangamati', 'Naniachhar', 'Nanichhar', '4520'),
('Chattagram', 'Rangamati', 'Rajsthali', 'Rajsthali', '4540'),
('Chattagram', 'Rangamati', 'Rangamati Sadar', 'Rangamati Sadar', '4500'),
('Chattagram', 'Bandarban', 'Alikadam', 'Alikadam', '4650'),
('Chattagram', 'Bandarban', 'Bandarban Sadar', 'Bandarban Sadar', '4600'),
('Chattagram', 'Bandarban', 'Naikhong', 'Naikhong', '4660'),
('Chattagram', 'Bandarban', 'Roanchhari', 'Roanchhari', '4610'),
('Chattagram', 'Bandarban', 'Ruma', 'Ruma', '4620'),
('Chattagram', 'Bandarban', 'Thanchi', 'Thanchi', '4630'),
('Chattagram', 'Bandarban', 'Thanchi', 'Lama', '4641'),
('Chattagram', 'Coxs Bazar', 'Chiringga', 'Chiringga', '4740'),
('Chattagram', 'Coxs Bazar', 'Chiringga', 'Chiringga S.O', '4741'),
('Chattagram', 'Coxs Bazar', 'Chiringga', 'Badarkali', '4742'),
('Chattagram', 'Coxs Bazar', 'Chiringga', 'Malumghat', '4743'),
('Chattagram', 'Coxs Bazar', 'Coxs Bazar Sadar', 'Coxs Bazar Sadar', '4700'),
('Chattagram', 'Coxs Bazar', 'Coxs Bazar Sadar', 'Zhilanja', '4701'),
('Chattagram', 'Coxs Bazar', 'Coxs Bazar Sadar', 'Eidga', '4702'),
('Chattagram', 'Coxs Bazar', 'Gorakghat', 'Gorakghat', '4710'),
('Chattagram', 'Coxs Bazar', 'Kutubdia', 'Kutubdia', '4720'),
('Chattagram', 'Coxs Bazar', 'Ramu', 'Ramu', '4730'),
('Chattagram', 'Coxs Bazar', 'Teknaf', 'Teknaf', '4760'),
('Chattagram', 'Coxs Bazar', 'Teknaf', 'Hnila', '4761'),
('Chattagram', 'Coxs Bazar', 'Teknaf', 'St.Martin', '4762'),
('Chattagram', 'Coxs Bazar', 'Ukhia', 'Ukhia', '4750'),
('Khulna', 'Kustia', 'Bheramara', 'Bheramara', '7040'),
('Khulna', 'Kustia', 'Bheramara', 'Ganges Bheramara', '7041'),
('Khulna', 'Kustia', 'Bheramara', 'Allardarga', '7042'),
('Khulna', 'Kustia', 'Janipur', 'Janipur', '7020'),
('Khulna', 'Kustia', 'Janipur', 'Khoksa', '7021'),
('Khulna', 'Kustia', 'Kumarkhali', 'Kumarkhali', '7010'),
('Khulna', 'Kustia', 'Kumarkhali', 'Panti', '7011'),
('Khulna', 'Kustia', 'Kustia Sadar', 'Kustia Sadar', '7000'),
('Khulna', 'Kustia', 'Kustia Sadar', 'Kushtia Mohini', '7001'),
('Khulna', 'Kustia', 'Kustia Sadar', 'Jagati', '7002'),
('Khulna', 'Kustia', 'Kustia Sadar', 'Islami University', '7003'),
('Khulna', 'Kustia', 'Mirpur', 'Mirpur', '7030'),
('Khulna', 'Kustia', 'Mirpur', 'Poradaha', '7031'),
('Khulna', 'Kustia', 'Mirpur', 'Amla Sadarpur', '7032'),
('Khulna', 'Kustia', 'Rafayetpur', 'Rafayetpur', '7050'),
('Khulna', 'Kustia', 'Rafayetpur', 'Taragunia', '7051'),
('Khulna', 'Kustia', 'Rafayetpur', 'Khasmathurapur', '7052'),
('Khulna', 'Meherpur', 'Gangni', 'Gangni', '7110'),
('Khulna', 'Meherpur', 'Meherpur Sadar', 'Meherpur Sadar', '7100'),
('Khulna', 'Meherpur', 'Meherpur Sadar', 'Amjhupi', '7101'),
('Khulna', 'Meherpur', 'Meherpur Sadar', 'Mujib Nagar Complex', '7102'),
('Khulna', 'Meherpur', 'Meherpur Sadar', 'Amjhupi', '7152'),
('Khulna', 'Chuadanga', 'Alamdanga', 'Alamdanga', '7210'),
('Khulna', 'Chuadanga', 'Alamdanga', 'Hardi', '7211'),
('Khulna', 'Chuadanga', 'Chuadanga Sadar', 'Chuadanga Sadar', '7200'),
('Khulna', 'Chuadanga', 'Chuadanga Sadar', 'Munshiganj', '7201'),
('Khulna', 'Chuadanga', 'Damurhuda', 'Damurhuda', '7220'),
('Khulna', 'Chuadanga', 'Damurhuda', 'Darshana', '7221'),
('Khulna', 'Chuadanga', 'Damurhuda', 'Andulbaria', '7222'),
('Khulna', 'Chuadanga', 'Doulatganj', 'Doulatganj', '7230'),
('Khulna', 'Jinaidaha', 'Harinakundu', 'Harinakundu', '7310'),
('Khulna', 'Jinaidaha', 'Jinaidaha Sadar', 'Jinaidaha Sadar', '7300'),
('Khulna', 'Jinaidaha', 'Jinaidaha Sadar', 'Jinaidaha Cadet College', '7301'),
('Khulna', 'Jinaidaha', 'Kotchandpur', 'Kotchandpur', '7330'),
('Khulna', 'Jinaidaha', 'Maheshpur', 'Maheshpur', '7340'),
('Khulna', 'Jinaidaha', 'Naldanga', 'Naldanga', '7350'),
('Khulna', 'Jinaidaha', 'Naldanga', 'Hatbar Bazar', '7351'),
('Khulna', 'Jinaidaha', 'Shailakupa', 'Shailakupa', '7320'),
('Khulna', 'Jinaidaha', 'Shailakupa', 'Kumiradaha', '7321'),
('Khulna', 'Jessore', 'Bagharpara', 'Bagharpara', '7470'),
('Khulna', 'Jessore', 'Bagharpara', 'Gouranagar', '7471'),
('Khulna', 'Jessore', 'Chaugachha', 'Chougachha', '7410'),
('Khulna', 'Jessore', 'Jessore Sadar', 'Jessore Sadar', '7400'),
('Khulna', 'Jessore', 'Jessore Sadar', 'Jessore Upa', 'Shahar'),
('Khulna', 'Jessore', 'Jessore Sadar', 'Chanchra', '7402'),
('Khulna', 'Jessore', 'Jessore Sadar', 'Jessore canttonment', '7403'),
('Khulna', 'Jessore', 'Jessore Sadar', 'Jessore Airbach', '7404'),
('Khulna', 'Jessore', 'Jessore Sadar', 'Rupdia', '7405'),
('Khulna', 'Jessore', 'Jessore Sadar', 'Basundia', '7406'),
('Khulna', 'Jessore', 'Jessore Sadar', 'Churamankathi', '7407'),
('Khulna', 'Jessore', 'Jhikargachha', 'Jhikargachha', '7420'),
('Khulna', 'Jessore', 'Keshabpur', 'Keshobpur', '7450'),
('Khulna', 'Jessore', 'Monirampur', 'Monirampur', '7440'),
('Khulna', 'Jessore', 'Noapara', 'Noapara', '7460'),
('Khulna', 'Jessore', 'Noapara', 'Rajghat', '7461'),
('Khulna', 'Jessore', 'Noapara', 'Bhugilhat', '7462'),
('Khulna', 'Jessore', 'Sarsa', 'Sarsa', '7430'),
('Khulna', 'Jessore', 'Sarsa', 'Benapole', '7431'),
('Khulna', 'Jessore', 'Sarsa', 'Jadabpur', '7432'),
('Khulna', 'Jessore', 'Sarsa', 'Bag Achra', '7433'),
('Khulna', 'Narail', 'Kalia', 'Kalia', '7520'),
('Khulna', 'Narail', 'Laxmipasha', 'Laxmipasha', '7510'),
('Khulna', 'Narail', 'Laxmipasha', 'Lohagora', '7511'),
('Khulna', 'Narail', 'Laxmipasha', 'Itna', '7512'),
('Khulna', 'Narail', 'Laxmipasha', 'Naldi', '7513'),
('Khulna', 'Narail', 'Laxmipasha', 'Baradia', '7514'),
('Khulna', 'Narail', 'Mohajan', 'Mohajan', '7521'),
('Khulna', 'Narail', 'Narail Sadar', 'Narail Sadar', '7500'),
('Khulna', 'Narail', 'Narail Sadar', 'Ratanganj', '7501'),
('Khulna', 'Magura', 'Arpara', 'Arpara', '7620'),
('Khulna', 'Magura', 'Magura Sadar', 'Magura Sadar', '7600'),
('Khulna', 'Magura', 'Mohammadpur', 'Mohammadpur', '7630'),
('Khulna', 'Magura', 'Mohammadpur', 'Binodpur', '7631'),
('Khulna', 'Magura', 'Mohammadpur', 'Nahata', '7632'),
('Khulna', 'Magura', 'Shripur', 'Shripur', '7610'),
('Khulna', 'Magura', 'Shripur', 'Langalbadh', '7611'),
('Khulna', 'Magura', 'Shripur', 'Nachol', '7612'),
('Khulna', 'Khulna', 'Alaipur', 'Alaipur', '9240'),
('Khulna', 'Khulna', 'Alaipur', 'Rupsha', '9241'),
('Khulna', 'Khulna', 'Alaipur', 'Belphulia', '9242'),
('Khulna', 'Khulna', 'Batiaghat', 'Batiaghat', '9260'),
('Khulna', 'Khulna', 'Batiaghat', 'Surkalee', '9261'),
('Khulna', 'Khulna', 'Chalna Bazar', 'Chalna Bazar', '9270'),
('Khulna', 'Khulna', 'Chalna Bazar', 'Dakup', '9271'),
('Khulna', 'Khulna', 'Chalna Bazar', 'Bajua', '9272'),
('Khulna', 'Khulna', 'Chalna Bazar', 'Nalian', '9273'),
('Khulna', 'Khulna', 'Digalia', 'Digalia', '9220'),
('Khulna', 'Khulna', 'Digalia', 'Chandni Mahal', '9221'),
('Khulna', 'Khulna', 'Digalia', 'Senhati', '9222'),
('Khulna', 'Khulna', 'Digalia', 'Ghoshghati', '9223'),
('Khulna', 'Khulna', 'Digalia', 'Gazirhat', '9224'),
('Khulna', 'Khulna', 'Khulna Sadar', 'Khulna G.P.O', '9000'),
('Khulna', 'Khulna', 'Khulna Sadar', 'Khula Sadar', '9100'),
('Khulna', 'Khulna', 'Khulna Sadar', 'Khulna Shipyard', '9201'),
('Khulna', 'Khulna', 'Khulna Sadar', 'Doulatpur', '9202'),
('Khulna', 'Khulna', 'Khulna Sadar', 'BIT Khulna', '9203'),
('Khulna', 'Khulna', 'Khulna Sadar', 'Siramani', '9204'),
('Khulna', 'Khulna', 'Khulna Sadar', 'Jahanabad Canttonmen', '9205'),
('Khulna', 'Khulna', 'Khulna Sadar', 'Sonali Jute Mills', '9206'),
('Khulna', 'Khulna', 'Khulna Sadar', 'Atra Shilpa Area', '9207'),
('Khulna', 'Khulna', 'Khulna Sadar', 'Khulna University', '9208'),
('Khulna', 'Khulna', 'Madinabad', 'Madinabad', '9290'),
('Khulna', 'Khulna', 'Madinabad', 'Amadee', '9291'),
('Khulna', 'Khulna', 'Paikgachha', 'Paikgachha', '9280'),
('Khulna', 'Khulna', 'Paikgachha', 'Godaipur', '9281'),
('Khulna', 'Khulna', 'Paikgachha', 'Kapilmoni', '9282'),
('Khulna', 'Khulna', 'Paikgachha', 'Katipara', '9283'),
('Khulna', 'Khulna', 'Paikgachha', 'Chandkhali', '9284'),
('Khulna', 'Khulna', 'Paikgachha', 'Garaikhali', '9285'),
('Khulna', 'Khulna', 'Phultala', 'Phultala', '9210'),
('Khulna', 'Khulna', 'Sajiara', 'Sajiara', '9250'),
('Khulna', 'Khulna', 'Sajiara', 'Ghonabanda', '9251'),
('Khulna', 'Khulna', 'Sajiara', 'Chuknagar', '9252'),
('Khulna', 'Khulna', 'Sajiara', 'Shahapur', '9253'),
('Khulna', 'Khulna', 'Terakhada', 'Terakhada', '9230'),
('Khulna', 'Khulna', 'Terakhada', 'Pak Barasat', '9231'),
('Khulna', 'IBH WAs Here', 'Bagerhat Sadar', 'Bagerhat Sadar', '9300'),
('Khulna', 'IBH WAs Here', 'Bagerhat Sadar', 'P.C College', '9301'),
('Khulna', 'IBH WAs Here', 'Bagerhat Sadar', 'Rangdia', '9302'),
('Khulna', 'IBH WAs Here', 'Chalna Ankorage', 'Chalna Ankorage', '9350'),
('Khulna', 'IBH WAs Here', 'Chalna Ankorage', 'Mongla Port', '9351'),
('Khulna', 'IBH WAs Here', 'Chitalmari', 'Chitalmari', '9360'),
('Khulna', 'IBH WAs Here', 'Chitalmari', 'Barabaria', '9361'),
('Khulna', 'IBH WAs Here', 'Fakirhat', 'Fakirhat', '9370'),
('Khulna', 'IBH WAs Here', 'Fakirhat', 'Mansa', '9371'),
('Khulna', 'IBH WAs Here', 'Fakirhat', 'Bhanganpar Bazar', '9372'),
('Khulna', 'IBH WAs Here', 'Kachua UPO', 'Kachua', '9310'),
('Khulna', 'IBH WAs Here', 'Kachua UPO', 'Sonarkola', '9311'),
('Khulna', 'IBH WAs Here', 'Mollahat', 'Mollahat', '9380'),
('Khulna', 'IBH WAs Here', 'Mollahat', 'Kahalpur', '9381'),
('Khulna', 'IBH WAs Here', 'Mollahat', 'Dariala', '9382'),
('Khulna', 'IBH WAs Here', 'Mollahat', 'Charkulia', '9383'),
('Khulna', 'IBH WAs Here', 'Mollahat', 'Nagarkandi', '9384'),
('Khulna', 'IBH WAs Here', 'Mollahat', 'Pak Gangni', '9385'),
('Khulna', 'IBH WAs Here', 'Morelganj', 'Morelganj', '9320'),
('Khulna', 'IBH WAs Here', 'Morelganj', 'Sannasi Bazar', '9321'),
('Khulna', 'IBH WAs Here', 'Morelganj', 'Telisatee', '9322'),
('Khulna', 'IBH WAs Here', 'Rampal', 'Rampal', '9340'),
('Khulna', 'IBH WAs Here', 'Rampal', 'Foylahat', '9341'),
('Khulna', 'IBH WAs Here', 'Rampal', 'Sonatunia', '9342'),
('Khulna', 'IBH WAs Here', 'Rampal', 'Gourambha', '9343'),
('Khulna', 'IBH WAs Here', 'Rayenda', 'Rayenda', '9330'),
('Khulna', 'Satkhira', 'Ashashuni', 'Ashashuni', '9460'),
('Khulna', 'Satkhira', 'Ashashuni', 'Baradal', '9461'),
('Khulna', 'Satkhira', 'Debbhata', 'Debbhata', '9430'),
('Khulna', 'Satkhira', 'Debbhata', 'Gurugram', '9431'),
('Khulna', 'Satkhira', 'kalaroa', 'kalaroa', '9410'),
('Khulna', 'Satkhira', 'kalaroa', 'Murarikati', '9411'),
('Khulna', 'Satkhira', 'kalaroa', 'Jhaudanga', '9412'),
('Khulna', 'Satkhira', 'kalaroa', 'Hamidpur', '9413'),
('Khulna', 'Satkhira', 'kalaroa', 'Khordo', '9414'),
('Khulna', 'Satkhira', 'kalaroa', 'Chandanpur', '9415'),
('Khulna', 'Satkhira', 'Kaliganj UPO', 'Kaliganj UPO', '9440'),
('Khulna', 'Satkhira', 'Kaliganj UPO', 'Nalta Mubaroknagar', '9441'),
('Khulna', 'Satkhira', 'Kaliganj UPO', 'Ratanpur', '9442'),
('Khulna', 'Satkhira', 'Nakipur', 'Nakipur', '9450'),
('Khulna', 'Satkhira', 'Nakipur', 'Noornagar', '9451'),
('Khulna', 'Satkhira', 'Nakipur', 'Naobeki', '9452'),
('Khulna', 'Satkhira', 'Nakipur', 'Buri Goalini', '9453'),
('Khulna', 'Satkhira', 'Nakipur', 'Gabura', '9454'),
('Khulna', 'Satkhira', 'Nakipur', 'Habinagar', '9455'),
('Khulna', 'Satkhira', 'Satkhira Sadar', 'Satkhira Sadar', '9400'),
('Khulna', 'Satkhira', 'Satkhira Sadar', 'Satkhira Islamia Acc', '9401');
INSERT INTO `geocode` (`division`, `district`, `subordinate`, `branch`, `post_code`) VALUES
('Khulna', 'Satkhira', 'Satkhira Sadar', 'Gunakar kati', '9402'),
('Khulna', 'Satkhira', 'Satkhira Sadar', 'Budhhat', '9403'),
('Khulna', 'Satkhira', 'Taala', 'Taala', '9420'),
('Khulna', 'Satkhira', 'Taala', 'Patkelghata', '9421'),
('Sylhet', 'Sunamganj', 'Bishamsarpur', 'Bishamsapur', '3010'),
('Sylhet', 'Sunamganj', 'Chhatak', 'Chhatak', '3080'),
('Sylhet', 'Sunamganj', 'Chhatak', 'Chhatak Cement Facto', '3081'),
('Sylhet', 'Sunamganj', 'Chhatak', 'Chhatak Paper Mills', '3082'),
('Sylhet', 'Sunamganj', 'Chhatak', 'Gabindaganj', '3083'),
('Sylhet', 'Sunamganj', 'Chhatak', 'Gabindaganj Natun Ba', '3084'),
('Sylhet', 'Sunamganj', 'Chhatak', 'Khurma', '3085'),
('Sylhet', 'Sunamganj', 'Chhatak', 'Moinpur', '3086'),
('Sylhet', 'Sunamganj', 'Chhatak', 'jahidpur', '3087'),
('Sylhet', 'Sunamganj', 'Chhatak', 'Islamabad', '3088'),
('Sylhet', 'Sunamganj', 'Chhatak', 'Chourangi Bazar', '3893'),
('Sylhet', 'Sunamganj', 'Dhirai Chandpur', 'Dhirai Chandpur', '3040'),
('Sylhet', 'Sunamganj', 'Dhirai Chandpur', 'Jagdal', '3041'),
('Sylhet', 'Sunamganj', 'Duara bazar', 'Duara bazar', '3070'),
('Sylhet', 'Sunamganj', 'Ghungiar', 'Ghungiar', '3050'),
('Sylhet', 'Sunamganj', 'Jagnnathpur', 'Jagnnathpur', '3060'),
('Sylhet', 'Sunamganj', 'Jagnnathpur', 'Syedpur', '3061'),
('Sylhet', 'Sunamganj', 'Jagnnathpur', 'Atuajan', '3062'),
('Sylhet', 'Sunamganj', 'Jagnnathpur', 'Hasan Fatemapur', '3063'),
('Sylhet', 'Sunamganj', 'Jagnnathpur', 'Rasulganj', '3064'),
('Sylhet', 'Sunamganj', 'Jagnnathpur', 'Shiramsi', '3065'),
('Sylhet', 'Sunamganj', 'Sachna', 'Sachna', '3020'),
('Sylhet', 'Sunamganj', 'Sunamganj Sadar', 'Sunamganj Sadar', '3000'),
('Sylhet', 'Sunamganj', 'Sunamganj Sadar', 'Pagla', '3001'),
('Sylhet', 'Sunamganj', 'Sunamganj Sadar', 'Patharia', '3002'),
('Sylhet', 'Sunamganj', 'Tahirpur', 'Tahirpur', '3030'),
('Sylhet', 'Sylhet', 'Balaganj', 'Balaganj', '3120'),
('Sylhet', 'Sylhet', 'Balaganj', 'Karua', '3121'),
('Sylhet', 'Sylhet', 'Balaganj', 'Brahman Shashon', '3122'),
('Sylhet', 'Sylhet', 'Balaganj', 'Tajpur', '3123'),
('Sylhet', 'Sylhet', 'Balaganj', 'Goala Bazar', '3124'),
('Sylhet', 'Sylhet', 'Balaganj', 'Begumpur', '3125'),
('Sylhet', 'Sylhet', 'Balaganj', 'Omarpur', '3126'),
('Sylhet', 'Sylhet', 'Balaganj', 'Kathal Khair', '3127'),
('Sylhet', 'Sylhet', 'Balaganj', 'Gaharpur', '3128'),
('Sylhet', 'Sylhet', 'Balaganj', 'Natun Bazar', '3129'),
('Sylhet', 'Sylhet', 'Bianibazar', 'Bianibazar', '3170'),
('Sylhet', 'Sylhet', 'Bianibazar', 'jaldup', '3171'),
('Sylhet', 'Sylhet', 'Bianibazar', 'Mathiura', '3172'),
('Sylhet', 'Sylhet', 'Bianibazar', 'Kurar bazar', '3173'),
('Sylhet', 'Sylhet', 'Bianibazar', 'Salia bazar', '3174'),
('Sylhet', 'Sylhet', 'Bianibazar', 'Churkai', '3175'),
('Sylhet', 'Sylhet', 'Bishwanath', 'Bishwanath', '3130'),
('Sylhet', 'Sylhet', 'Bishwanath', 'Dashghar', '3131'),
('Sylhet', 'Sylhet', 'Bishwanath', 'Doulathpur', '3132'),
('Sylhet', 'Sylhet', 'Bishwanath', 'Deokalas', '3133'),
('Sylhet', 'Sylhet', 'Bishwanath', 'Singer kanch', '3134'),
('Sylhet', 'Sylhet', 'Fenchuganj', 'Fenchuganj', '3116'),
('Sylhet', 'Sylhet', 'Fenchuganj', 'Fenchuganj SareKarkh', '3117'),
('Sylhet', 'Sylhet', 'Goainhat', 'Goainhat', '3150'),
('Sylhet', 'Sylhet', 'Goainhat', 'Jaflong', '3151'),
('Sylhet', 'Sylhet', 'Goainhat', 'Chiknagul', '3152'),
('Sylhet', 'Sylhet', 'Gopalganj', 'Gopalgannj', '3160'),
('Sylhet', 'Sylhet', 'Gopalganj', 'Dhaka Dakkhin', '3161'),
('Sylhet', 'Sylhet', 'Gopalganj', 'Dakkhin Bhadashore', '3162'),
('Sylhet', 'Sylhet', 'Gopalganj', 'Ranaping', '3163'),
('Sylhet', 'Sylhet', 'Gopalganj', 'banigram', '3164'),
('Sylhet', 'Sylhet', 'Gopalganj', 'Chandanpur', '3165'),
('Sylhet', 'Sylhet', 'Jaintapur', 'Jainthapur', '3156'),
('Sylhet', 'Sylhet', 'Jakiganj', 'Jakiganj', '3190'),
('Sylhet', 'Sylhet', 'Jakiganj', 'Ichhamati', '3191'),
('Sylhet', 'Sylhet', 'Kanaighat', 'Kanaighat', '3180'),
('Sylhet', 'Sylhet', 'Kanaighat', 'Chatulbazar', '3181'),
('Sylhet', 'Sylhet', 'Kanaighat', 'Manikganj', '3182'),
('Sylhet', 'Sylhet', 'Kanaighat', 'Gachbari', '3183'),
('Sylhet', 'Sylhet', 'Kompanyganj', 'Kompanyganj', '3140'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Sylhe Sadar', '3100'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Sylhet Cadet Col', '3101'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Sylhet Biman Bondar', '3102'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Khadimnagar', '3103'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Jalalabad Cantoment', '3104'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Silam', '3105'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Birahimpur', '3106'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Jalalabad', '3107'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Mogla', '3108'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Ranga Hajiganj', '3109'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Kadamtali', '3111'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Kamalbazer', '3112'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Lalbazar', '3113'),
('Sylhet', 'Sylhet', 'Sylhet Sadar', 'Shahajalal Science &', '3114'),
('Sylhet', 'Moulvibazar', 'Baralekha', 'Baralekha', '3250'),
('Sylhet', 'Moulvibazar', 'Baralekha', 'Juri', '3251'),
('Sylhet', 'Moulvibazar', 'Baralekha', 'Dhakkhinbag', '3252'),
('Sylhet', 'Moulvibazar', 'Baralekha', 'Purbashahabajpur', '3253'),
('Sylhet', 'Moulvibazar', 'Kamalganj', 'Kamalganj', '3220'),
('Sylhet', 'Moulvibazar', 'Kamalganj', 'Keramatnaga', '3221'),
('Sylhet', 'Moulvibazar', 'Kamalganj', 'Patrakhola', '3222'),
('Sylhet', 'Moulvibazar', 'Kamalganj', 'Shamsher Nagar', '3223'),
('Sylhet', 'Moulvibazar', 'Kamalganj', 'Munshibazar', '3224'),
('Sylhet', 'Moulvibazar', 'Kulaura', 'Kulaura', '3230'),
('Sylhet', 'Moulvibazar', 'Kulaura', 'Tillagaon', '3231'),
('Sylhet', 'Moulvibazar', 'Kulaura', 'Langla', '3232'),
('Sylhet', 'Moulvibazar', 'Kulaura', 'Prithimpasha', '3233'),
('Sylhet', 'Moulvibazar', 'Kulaura', 'Kajaldhara', '3234'),
('Sylhet', 'Moulvibazar', 'Kulaura', 'Karimpur', '3235'),
('Sylhet', 'Moulvibazar', 'Kulaura', 'Baramchal', '3237'),
('Sylhet', 'Moulvibazar', 'Moulvibazar Sadar', 'Moulvibazar Sadar', '3200'),
('Sylhet', 'Moulvibazar', 'Moulvibazar Sadar', 'Barakapan', '3201'),
('Sylhet', 'Moulvibazar', 'Moulvibazar Sadar', 'Monumukh', '3202'),
('Sylhet', 'Moulvibazar', 'Moulvibazar Sadar', 'Afrozganj', '3203'),
('Sylhet', 'Moulvibazar', 'Rajnagar', 'Rajnagar', '3240'),
('Sylhet', 'Moulvibazar', 'Srimangal', 'Srimangal', '3210'),
('Sylhet', 'Moulvibazar', 'Srimangal', 'Narain Chora', '3211'),
('Sylhet', 'Moulvibazar', 'Srimangal', 'Kalighat', '3212'),
('Sylhet', 'Moulvibazar', 'Srimangal', 'Khejurichhara', '3213'),
('Sylhet', 'Moulvibazar', 'Srimangal', 'Satgaon', '3214'),
('Sylhet', 'Hobiganj', 'Azmireeganj', 'Azmireeganj', '3360'),
('Sylhet', 'Hobiganj', 'Bahubal', 'Bahubal', '3310'),
('Sylhet', 'Hobiganj', 'Baniachang', 'Baniachang', '3350'),
('Sylhet', 'Hobiganj', 'Baniachang', 'Jatrapasha', '3351'),
('Sylhet', 'Hobiganj', 'Baniachang', 'Kadirganj', '3352'),
('Sylhet', 'Hobiganj', 'Chunarughat', 'Chunarughat', '3320'),
('Sylhet', 'Hobiganj', 'Chunarughat', 'Chandpurbagan', '3321'),
('Sylhet', 'Hobiganj', 'Chunarughat', 'Narapati', '3322'),
('Sylhet', 'Hobiganj', 'Hobiganj Sadar', 'Hobiganj Sadar', '3300'),
('Sylhet', 'Hobiganj', 'Hobiganj Sadar', 'Shaestaganj', '3301'),
('Sylhet', 'Hobiganj', 'Hobiganj Sadar', 'Gopaya', '3302'),
('Sylhet', 'Hobiganj', 'Kalauk', 'Kalauk', '3340'),
('Sylhet', 'Hobiganj', 'Kalauk', 'Lakhai', '3341'),
('Sylhet', 'Hobiganj', 'Madhabpur', 'Madhabpur', '3330'),
('Sylhet', 'Hobiganj', 'Madhabpur', 'Itakhola', '3331'),
('Sylhet', 'Hobiganj', 'Madhabpur', 'Shahajibazar', '3332'),
('Sylhet', 'Hobiganj', 'Madhabpur', 'Saihamnagar', '3333'),
('Sylhet', 'Hobiganj', 'Nabiganj', 'Nabiganj', '3370'),
('Sylhet', 'Hobiganj', 'Nabiganj', 'Goplarbazar', '3371'),
('Sylhet', 'Hobiganj', 'Nabiganj', 'Golduba', '3372'),
('Sylhet', 'Hobiganj', 'Nabiganj', 'Digalbak', '3373'),
('Sylhet', 'Hobiganj', 'Nabiganj', 'Inathganj', '3374'),
('Barishal', 'Barishal', 'Agailzhara', 'Agailzhara', '8240'),
('Barishal', 'Barishal', 'Agailzhara', 'Gaila', '8241'),
('Barishal', 'Barishal', 'Agailzhara', 'Paisarhat', '8242'),
('Barishal', 'Barishal', 'Babuganj', 'Babuganj', '8210'),
('Barishal', 'Barishal', 'Babuganj', 'Rahamatpur', '8211'),
('Barishal', 'Barishal', 'Babuganj', 'Chandpasha', '8212'),
('Barishal', 'Barishal', 'Babuganj', 'Madhabpasha', '8213'),
('Barishal', 'Barishal', 'Babuganj', 'Thakur Mallik', '8214'),
('Barishal', 'Barishal', 'Babuganj', 'Nizamuddin College', '8215'),
('Barishal', 'Barishal', 'Babuganj', 'Barishal Cadet', '8216'),
('Barishal', 'Barishal', 'Barajalia', 'Barajalia', '8260'),
('Barishal', 'Barishal', 'Barajalia', 'Osman Manjil', '8261'),
('Barishal', 'Barishal', 'Barishal Sadar', 'Barishal Sadar', '8200'),
('Barishal', 'Barishal', 'Barishal Sadar', 'Bukhainagar', '8201'),
('Barishal', 'Barishal', 'Barishal Sadar', 'Saheberhat', '8202'),
('Barishal', 'Barishal', 'Barishal Sadar', 'Sugandia', '8203'),
('Barishal', 'Barishal', 'Barishal Sadar', 'Patang', '8204'),
('Barishal', 'Barishal', 'Barishal Sadar', 'Kashipur', '8205'),
('Barishal', 'Barishal', 'Barishal Sadar', 'Jaguarhat', '8206'),
('Barishal', 'Barishal', 'Gouranadi', 'Gouranadi', '8230'),
('Barishal', 'Barishal', 'Gouranadi', 'Tarki Bandar', '8231'),
('Barishal', 'Barishal', 'Gouranadi', 'Kashemabad', '8232'),
('Barishal', 'Barishal', 'Gouranadi', 'Batajor', '8233'),
('Barishal', 'Barishal', 'Mahendiganj', 'Mahendiganj', '8270'),
('Barishal', 'Barishal', 'Mahendiganj', 'Laskarpur', '8271'),
('Barishal', 'Barishal', 'Mahendiganj', 'Ulania', '8272'),
('Barishal', 'Barishal', 'Mahendiganj', 'Nalgora', '8273'),
('Barishal', 'Barishal', 'Mahendiganj', 'Langutia', '8274'),
('Barishal', 'Barishal', 'Muladi', 'Muladi', '8250'),
('Barishal', 'Barishal', 'Muladi', 'Kazirchar', '8251'),
('Barishal', 'Barishal', 'Muladi', 'Charkalekhan', '8252'),
('Barishal', 'Barishal', 'Sahebganj', 'Sahebganj', '8280'),
('Barishal', 'Barishal', 'Sahebganj', 'Charamandi', '8281'),
('Barishal', 'Barishal', 'Sahebganj', 'Padri Shibpur', '8282'),
('Barishal', 'Barishal', 'Sahebganj', 'Shialguni', '8283'),
('Barishal', 'Barishal', 'Sahebganj', 'kalaskati', '8284'),
('Barishal', 'Barishal', 'Uzirpur', 'Uzirpur', '8220'),
('Barishal', 'Barishal', 'Uzirpur', 'Dhamura', '8221'),
('Barishal', 'Barishal', 'Uzirpur', 'Jugirkanda', '8222'),
('Barishal', 'Barishal', 'Uzirpur', 'Dakuarhat', '8223'),
('Barishal', 'Barishal', 'Uzirpur', 'Shikarpur', '8224'),
('Barishal', 'Bhola', 'Bhola Sadar', 'Bhola Sadar', '8300'),
('Barishal', 'Bhola', 'Bhola Sadar', 'Joynagar', '8301'),
('Barishal', 'Bhola', 'Borhanuddin UPO', 'Borhanuddin UPO', '8320'),
('Barishal', 'Bhola', 'Borhanuddin UPO', 'Mirzakalu', '8321'),
('Barishal', 'Bhola', 'Charfashion', 'Charfashion', '8340'),
('Barishal', 'Bhola', 'Charfashion', 'Dularhat', '8341'),
('Barishal', 'Bhola', 'Charfashion', 'Keramatganj', '8342'),
('Barishal', 'Bhola', 'Doulatkhan', 'Doulatkhan', '8310'),
('Barishal', 'Bhola', 'Doulatkhan', 'Hajipur', '8311'),
('Barishal', 'Bhola', 'Hajirhat', 'Hajirhat', '8360'),
('Barishal', 'Bhola', 'Hatshoshiganj', 'Hatshoshiganj', '8350'),
('Barishal', 'Bhola', 'Lalmohan UPO', 'Lalmohan UPO', '8330'),
('Barishal', 'Bhola', 'Lalmohan UPO', 'Daurihat', '8331'),
('Barishal', 'Bhola', 'Lalmohan UPO', 'Gazaria', '8332'),
('Barishal', 'Jhalokathi', 'Jhalokathi Sadar', 'Jhalokathi Sadar', '8400'),
('Barishal', 'Jhalokathi', 'Jhalokathi Sadar', 'Nabagram', '8401'),
('Barishal', 'Jhalokathi', 'Jhalokathi Sadar', 'Baukathi', '8402'),
('Barishal', 'Jhalokathi', 'Jhalokathi Sadar', 'Gabha', '8403'),
('Barishal', 'Jhalokathi', 'Jhalokathi Sadar', 'Shekherhat', '8404'),
('Barishal', 'Jhalokathi', 'Kathalia', 'Kathalia', '8430'),
('Barishal', 'Jhalokathi', 'Kathalia', 'Amua', '8431'),
('Barishal', 'Jhalokathi', 'Kathalia', 'Niamatee', '8432'),
('Barishal', 'Jhalokathi', 'Kathalia', 'Shoulajalia', '8433'),
('Barishal', 'Jhalokathi', 'Nalchhiti', 'Nalchhiti', '8420'),
('Barishal', 'Jhalokathi', 'Nalchhiti', 'Beerkathi', '8421'),
('Barishal', 'Jhalokathi', 'Rajapur', 'Rajapur', '8410'),
('Barishal', 'Pirojpur', 'Banaripara', 'Banaripara', '8530'),
('Barishal', 'Pirojpur', 'Banaripara', 'Chakhar', '8531'),
('Barishal', 'Pirojpur', 'Bhandaria', 'Bhandaria', '8550'),
('Barishal', 'Pirojpur', 'Bhandaria', 'Kanudashkathi', '8551'),
('Barishal', 'Pirojpur', 'Bhandaria', 'Dhaoa', '8552'),
('Barishal', 'Pirojpur', 'kaukhali', 'Kaukhali', '8510'),
('Barishal', 'Pirojpur', 'kaukhali', 'Keundia', '8511'),
('Barishal', 'Pirojpur', 'kaukhali', 'Joykul', '8512'),
('Barishal', 'Pirojpur', 'kaukhali', 'Jolagati', '8513'),
('Barishal', 'Pirojpur', 'Mathbaria', 'Mathbaria', '8560'),
('Barishal', 'Pirojpur', 'Mathbaria', 'Tushkhali', '8561'),
('Barishal', 'Pirojpur', 'Mathbaria', 'Halta', '8562'),
('Barishal', 'Pirojpur', 'Mathbaria', 'Gulishakhali', '8563'),
('Barishal', 'Pirojpur', 'Mathbaria', 'Tiarkhali', '8564'),
('Barishal', 'Pirojpur', 'Mathbaria', 'Betmor Natun Hat', '8565'),
('Barishal', 'Pirojpur', 'Mathbaria', 'Shilarganj', '8566'),
('Barishal', 'Pirojpur', 'Nazirpur', 'Nazirpur', '8540'),
('Barishal', 'Pirojpur', 'Nazirpur', 'Sriramkathi', '8541'),
('Barishal', 'Pirojpur', 'Pirojpur Sadar', 'Pirojpur Sadar', '8500'),
('Barishal', 'Pirojpur', 'Pirojpur Sadar', 'Hularhat', '8501'),
('Barishal', 'Pirojpur', 'Pirojpur Sadar', 'Parerhat', '8502'),
('Barishal', 'Pirojpur', 'Swarupkathi', 'Swarupkathi', '8520'),
('Barishal', 'Pirojpur', 'Swarupkathi', 'Darus Sunnat', '8521'),
('Barishal', 'Pirojpur', 'Swarupkathi', 'Kaurikhara', '8522'),
('Barishal', 'Pirojpur', 'Swarupkathi', 'Jalabari', '8523'),
('Barishal', 'Patuakhali', 'Bauphal', 'Bauphal', '8620'),
('Barishal', 'Patuakhali', 'Bauphal', 'Bagabandar', '8621'),
('Barishal', 'Patuakhali', 'Bauphal', 'Birpasha', '8622'),
('Barishal', 'Patuakhali', 'Bauphal', 'Kalishari', '8623'),
('Barishal', 'Patuakhali', 'Bauphal', 'Kalaia', '8624'),
('Barishal', 'Patuakhali', 'Dashmina', 'Dashmina', '8630'),
('Barishal', 'Patuakhali', 'Galachipa', 'Galachipa', '8640'),
('Barishal', 'Patuakhali', 'Galachipa', 'Gazipur Bandar', '8641'),
('Barishal', 'Patuakhali', 'Khepupara', 'Khepupara', '8650'),
('Barishal', 'Patuakhali', 'Khepupara', 'Mahipur', '8651'),
('Barishal', 'Patuakhali', 'Patuakhali Sadar', 'Patuakhali Sadar', '8600'),
('Barishal', 'Patuakhali', 'Patuakhali Sadar', 'Moukaran', '8601'),
('Barishal', 'Patuakhali', 'Patuakhali Sadar', 'Dumkee', '8602'),
('Barishal', 'Patuakhali', 'Patuakhali Sadar', 'Rahimabad', '8603'),
('Barishal', 'Patuakhali', 'Subidkhali', 'Subidkhali', '8610'),
('Barishal', 'Barguna', 'Amtali', 'Amtali', '8710'),
('Barishal', 'Barguna', 'Bamna', 'Bamna', '8730'),
('Barishal', 'Barguna', 'Barguna Sadar', 'Barguna Sadar', '8700'),
('Barishal', 'Barguna', 'Barguna Sadar', 'Nali Bandar', '8701'),
('Barishal', 'Barguna', 'Betagi', 'Betagi', '8740'),
('Barishal', 'Barguna', 'Betagi', 'Darul Ulam', '8741'),
('Barishal', 'Barguna', 'Patharghata', 'Patharghata', '8720'),
('Barishal', 'Barguna', 'Patharghata', 'Kakchira', '8721'),
('Rajshahi', 'Panchagarh', 'Boda', 'Boda', '5010'),
('Rajshahi', 'Panchagarh', 'Chotto Dab', 'Chotto Dab', '5040'),
('Rajshahi', 'Panchagarh', 'Chotto Dab', 'Mirjapur', '5041'),
('Rajshahi', 'Panchagarh', 'Dabiganj', 'Dabiganj', '5020'),
('Rajshahi', 'Panchagarh', 'Panchagra Sadar', 'Panchagar Sadar', '5000'),
('Rajshahi', 'Panchagarh', 'Tetulia', 'Tetulia', '5030'),
('Rajshahi', 'Thakurgaon', 'Baliadangi', 'Baliadangi', '5140'),
('Rajshahi', 'Thakurgaon', 'Baliadangi', 'Lahiri', '5141'),
('Rajshahi', 'Thakurgaon', 'Jibanpur', 'Jibanpur', '5130'),
('Rajshahi', 'Thakurgaon', 'Pirganj', 'Pirganj', '5110'),
('Rajshahi', 'Thakurgaon', 'Pirganj', 'Pirganj', '5470'),
('Rajshahi', 'Thakurgaon', 'Rani Sankail', 'Rani Sankail', '5120'),
('Rajshahi', 'Thakurgaon', 'Rani Sankail', 'Nekmarad', '5121'),
('Rajshahi', 'Thakurgaon', 'Thakurgaon Sadar', 'Thakurgaon Sadar', '5100'),
('Rajshahi', 'Thakurgaon', 'Thakurgaon Sadar', 'Thakurgaon Road', '5101'),
('Rajshahi', 'Thakurgaon', 'Thakurgaon Sadar', 'Shibganj', '5102'),
('Rajshahi', 'Thakurgaon', 'Thakurgaon Sadar', 'Ruhia', '5103'),
('Rajshahi', 'Dinajpur', 'Bangla Hili', 'Bangla Hili', '5270'),
('Rajshahi', 'Dinajpur', 'Biral', 'Biral', '5210'),
('Rajshahi', 'Dinajpur', 'Birampur', 'Birampur', '5266'),
('Rajshahi', 'Dinajpur', 'Birganj', 'Birganj', '5220'),
('Rajshahi', 'Dinajpur', 'Chrirbandar', 'Chrirbandar', '5240'),
('Rajshahi', 'Dinajpur', 'Chrirbandar', 'Ranirbandar', '5241'),
('Rajshahi', 'Dinajpur', 'Dinajpur Sadar', 'Dinajpur Sadar', '5200'),
('Rajshahi', 'Dinajpur', 'Dinajpur Sadar', 'Dinajpur Rajbari', '5201'),
('Rajshahi', 'Dinajpur', 'Khansama', 'Khansama', '5230'),
('Rajshahi', 'Dinajpur', 'Khansama', 'Pakarhat', '5231'),
('Rajshahi', 'Dinajpur', 'Maharajganj', 'Maharajganj', '5226'),
('Rajshahi', 'Dinajpur', 'Nababganj', 'Nababganj', '5280'),
('Rajshahi', 'Dinajpur', 'Nababganj', 'Daudpur', '5281'),
('Rajshahi', 'Dinajpur', 'Nababganj', 'Gopalpur', '5282'),
('Rajshahi', 'Dinajpur', 'Osmanpur', 'Osmanpur', '5290'),
('Rajshahi', 'Dinajpur', 'Osmanpur', 'Ghoraghat', '5291'),
('Rajshahi', 'Dinajpur', 'Parbatipur', 'Parbatipur', '5250'),
('Rajshahi', 'Dinajpur', 'Phulbari', 'Phulbari', '5260'),
('Rajshahi', 'Dinajpur', 'Setabganj', 'Setabganj', '5216'),
('Rajshahi', 'Nilphamari', 'Dimla', 'Dimla', '5350'),
('Rajshahi', 'Nilphamari', 'Dimla', 'Ghaga Kharibari', '5351'),
('Rajshahi', 'Nilphamari', 'Domar', 'Domar', '5340'),
('Rajshahi', 'Nilphamari', 'Domar', 'Chilahati', '5341'),
('Rajshahi', 'Nilphamari', 'Jaldhaka', 'Jaldhaka', '5330'),
('Rajshahi', 'Nilphamari', 'Kishoriganj', 'Kishoriganj', '5320'),
('Rajshahi', 'Nilphamari', 'Nilphamari Sadar', 'Nilphamari Sadar', '5300'),
('Rajshahi', 'Nilphamari', 'Nilphamari Sadar', 'Nilphamari Sugar Mil', '5301'),
('Rajshahi', 'Nilphamari', 'Syedpur', 'Syedpur', '5310'),
('Rajshahi', 'Nilphamari', 'Syedpur', 'Syedpur Upashahar', '5311'),
('Rajshahi', 'Rangpur', 'Badarganj', 'Badarganj', '5430'),
('Rajshahi', 'Rangpur', 'Badarganj', 'Shyampur', '5431'),
('Rajshahi', 'Rangpur', 'Gangachara', 'Gangachara', '5410'),
('Rajshahi', 'Rangpur', 'Kaunia', 'Kaunia', '5440'),
('Rajshahi', 'Rangpur', 'Kaunia', 'Haragachh', '5441'),
('Rajshahi', 'Rangpur', 'Mithapukur', 'Mithapukur', '5460'),
('Rajshahi', 'Rangpur', 'Pirgachha', 'Pirgachha', '5450'),
('Rajshahi', 'Rangpur', 'Rangpur Sadar', 'Rangpur Sadar', '5400'),
('Rajshahi', 'Rangpur', 'Rangpur Sadar', 'Rangpur Upa', 'Shahar'),
('Rajshahi', 'Rangpur', 'Rangpur Sadar', 'Alamnagar', '5402'),
('Rajshahi', 'Rangpur', 'Rangpur Sadar', 'Mahiganj', '5403'),
('Rajshahi', 'Rangpur', 'Rangpur Sadar', 'Rangpur Cadet Colleg', '5404'),
('Rajshahi', 'Rangpur', 'Rangpur Sadar', 'Rangpur Carmiecal Col', '5405'),
('Rajshahi', 'Rangpur', 'Taraganj', 'Taraganj', '5420'),
('Rajshahi', 'Lalmonirhat', 'Aditmari', 'Aditmari', '5510'),
('Rajshahi', 'Lalmonirhat', 'Hatibandha', 'Hatibandha', '5530'),
('Rajshahi', 'Lalmonirhat', 'Lalmonirhat Sadar', 'Lalmonirhat Sadar', '5500'),
('Rajshahi', 'Lalmonirhat', 'Lalmonirhat Sadar', 'Moghalhat', '5501'),
('Rajshahi', 'Lalmonirhat', 'Lalmonirhat Sadar', 'Kulaghat SO', '5502'),
('Rajshahi', 'Lalmonirhat', 'Patgram', 'Patgram', '5540'),
('Rajshahi', 'Lalmonirhat', 'Patgram', 'Baura', '5541'),
('Rajshahi', 'Lalmonirhat', 'Patgram', 'Burimari', '5542'),
('Rajshahi', 'Lalmonirhat', 'Tushbhandar', 'Tushbhandar', '5520'),
('Rajshahi', 'Kurigram', 'Bhurungamari', 'Bhurungamari', '5670'),
('Rajshahi', 'Kurigram', 'Chilmari', 'Chilmari', '5630'),
('Rajshahi', 'Kurigram', 'Chilmari', 'Jorgachh', '5631'),
('Rajshahi', 'Kurigram', 'Kurigram Sadar', 'Kurigram Sadar', '5600'),
('Rajshahi', 'Kurigram', 'Kurigram Sadar', 'Pandul', '5601'),
('Rajshahi', 'Kurigram', 'Kurigram Sadar', 'Phulbari', '5680'),
('Rajshahi', 'Kurigram', 'Nageshwar', 'Nageshwar', '5660'),
('Rajshahi', 'Kurigram', 'Rajarhat', 'Rajarhat', '5610'),
('Rajshahi', 'Kurigram', 'Rajarhat', 'Nazimkhan', '5611'),
('Rajshahi', 'Kurigram', 'Rajibpur', 'Rajibpur', '5650'),
('Rajshahi', 'Kurigram', 'Roumari', 'Roumari', '5640'),
('Rajshahi', 'Kurigram', 'Ulipur', 'Ulipur', '5620'),
('Rajshahi', 'Kurigram', 'Ulipur', 'Bazarhat', '5621'),
('Rajshahi', 'Gaibandha', 'Bonarpara', 'Bonarpara', '5750'),
('Rajshahi', 'Gaibandha', 'Bonarpara', 'saghata', '5751'),
('Rajshahi', 'Gaibandha', 'Gaibandha Sadar', 'Gaibandha Sadar', '5700'),
('Rajshahi', 'Gaibandha', 'Gobindaganj', 'Gobindhaganj', '5740'),
('Rajshahi', 'Gaibandha', 'Gobindaganj', 'Mahimaganj', '5741'),
('Rajshahi', 'Gaibandha', 'Palashbari', 'Palashbari', '5730'),
('Rajshahi', 'Gaibandha', 'Phulchhari', 'Phulchhari', '5760'),
('Rajshahi', 'Gaibandha', 'Phulchhari', 'Bharatkhali', '5761'),
('Rajshahi', 'Gaibandha', 'Saadullapur', 'Saadullapur', '5710'),
('Rajshahi', 'Gaibandha', 'Saadullapur', 'Naldanga', '5711'),
('Rajshahi', 'Gaibandha', 'Sundarganj', 'Sundarganj', '5720'),
('Rajshahi', 'Gaibandha', 'Sundarganj', 'Bamandanga', '5721'),
('Rajshahi', 'Bogra', 'Alamdighi', 'Adamdighi', '5890'),
('Rajshahi', 'Bogra', 'Alamdighi', 'Santahar', '5891'),
('Rajshahi', 'Bogra', 'Alamdighi', 'Nasharatpur', '5892'),
('Rajshahi', 'Bogra', 'Bogra Sadar', 'Bogra Sadar', '5800'),
('Rajshahi', 'Bogra', 'Bogra Sadar', 'Bogra Canttonment', '5801'),
('Rajshahi', 'Bogra', 'Dhunat', 'Dhunat', '5850'),
('Rajshahi', 'Bogra', 'Dhunat', 'Gosaibari', '5851'),
('Rajshahi', 'Bogra', 'Dupchachia', 'Dupchachia', '5880'),
('Rajshahi', 'Bogra', 'Dupchachia', 'Talora', '5881'),
('Rajshahi', 'Bogra', 'Gabtoli', 'Gabtoli', '5820'),
('Rajshahi', 'Bogra', 'Gabtoli', 'Sukhanpukur', '5821'),
('Rajshahi', 'Bogra', 'Kahalu', 'Kahalu', '5870'),
('Rajshahi', 'Bogra', 'Nandigram', 'Nandigram', '5860'),
('Rajshahi', 'Bogra', 'Sariakandi', 'Sariakandi', '5830'),
('Rajshahi', 'Bogra', 'Sariakandi', 'Chandan Baisha', '5831'),
('Rajshahi', 'Bogra', 'Sherpur', 'Sherpur', '5840'),
('Rajshahi', 'Bogra', 'Sherpur', 'Chandaikona', '5841'),
('Rajshahi', 'Bogra', 'Sherpur', 'Palli Unnyan Accadem', '5842'),
('Rajshahi', 'Bogra', 'Shibganj', 'Shibganj', '5810'),
('Rajshahi', 'Bogra', 'Sonatola', 'Sonatola', '5826'),
('Rajshahi', 'Joypurhat', 'Akkelpur', 'Akklepur', '5940'),
('Rajshahi', 'Joypurhat', 'Akkelpur', 'jamalganj', '5941'),
('Rajshahi', 'Joypurhat', 'Akkelpur', 'Tilakpur', '5942'),
('Rajshahi', 'Joypurhat', 'Joypurhat Sadar', 'Joypurhat Sadar', '5900'),
('Rajshahi', 'Joypurhat', 'kalai', 'kalai', '5930'),
('Rajshahi', 'Joypurhat', 'Khetlal', 'Khetlal', '5920'),
('Rajshahi', 'Joypurhat', 'panchbibi', 'Panchbibi', '5910'),
('Rangpur', 'Rajshahi', 'Bagha', 'Bagha', '6280'),
('Rangpur', 'Rajshahi', 'Bagha', 'Arani', '6281'),
('Rangpur', 'Rajshahi', 'Bhabaniganj', 'Bhabaniganj', '6250'),
('Rangpur', 'Rajshahi', 'Bhabaniganj', 'Taharpur', '6251'),
('Rangpur', 'Rajshahi', 'Charghat', 'Charghat', '6270'),
('Rangpur', 'Rajshahi', 'Charghat', 'Sarda', '6271'),
('Rangpur', 'Rajshahi', 'Durgapur', 'Durgapur', '6240'),
('Rangpur', 'Rajshahi', 'Godagari', 'Godagari', '6290'),
('Rangpur', 'Rajshahi', 'Godagari', 'Premtoli', '6291'),
('Rangpur', 'Rajshahi', 'Khod Mohanpur', 'Khodmohanpur', '6220'),
('Rangpur', 'Rajshahi', 'Lalitganj', 'Lalitganj', '6210'),
('Rangpur', 'Rajshahi', 'Lalitganj', 'Rajshahi Sugar Mills', '6211'),
('Rangpur', 'Rajshahi', 'Lalitganj', 'Shyampur', '6212'),
('Rangpur', 'Rajshahi', 'Putia', 'Putia', '6260'),
('Rangpur', 'Rajshahi', 'Rajshahi Sadar', 'Rajshahi Sadar', '6000'),
('Rangpur', 'Rajshahi', 'Rajshahi Sadar', 'Ghuramara', '6100'),
('Rangpur', 'Rajshahi', 'Rajshahi Sadar', 'Rajshahi Court', '6201'),
('Rangpur', 'Rajshahi', 'Rajshahi Sadar', 'Rajshahi Canttonment', '6202'),
('Rangpur', 'Rajshahi', 'Rajshahi Sadar', 'Sapura', '6203'),
('Rangpur', 'Rajshahi', 'Rajshahi Sadar', 'Kazla', '6204'),
('Rangpur', 'Rajshahi', 'Rajshahi Sadar', 'Rajshahi University', '6205'),
('Rangpur', 'Rajshahi', 'Rajshahi Sadar', 'Binodpur Bazar', '6206'),
('Rangpur', 'Rajshahi', 'Tanor', 'Tanor', '6230'),
('Rajshahi', 'Chapinawabganj', 'Bholahat', 'Bholahat', '6330'),
('Rajshahi', 'Chapinawabganj', 'Chapinawabganj Sadar', 'Chapinawbganj Sadar', '6300'),
('Rajshahi', 'Chapinawabganj', 'Chapinawabganj Sadar', 'Rajarampur', '6301'),
('Rajshahi', 'Chapinawabganj', 'Chapinawabganj Sadar', 'Ramchandrapur', '6302'),
('Rajshahi', 'Chapinawabganj', 'Chapinawabganj Sadar', 'Amnura', '6303'),
('Rajshahi', 'Chapinawabganj', 'Nachol', 'Nachol', '6310'),
('Rajshahi', 'Chapinawabganj', 'Nachol', 'Mandumala', '6311'),
('Rajshahi', 'Chapinawabganj', 'Rohanpur', 'Rohanpur', '6320'),
('Rajshahi', 'Chapinawabganj', 'Rohanpur', 'Gomashtapur', '6321'),
('Rajshahi', 'Chapinawabganj', 'Shibganj U.P.O', 'Shibganj U.P.O', '6340'),
('Rajshahi', 'Chapinawabganj', 'Shibganj U.P.O', 'Kansart', '6341'),
('Rajshahi', 'Chapinawabganj', 'Shibganj U.P.O', 'Manaksha', '6342'),
('Rajshahi', 'Natore', 'Gopalpur UPO', 'Gopalpur U.P.O', '6420'),
('Rajshahi', 'Natore', 'Gopalpur UPO', 'Lalpur S.O', '6421'),
('Rajshahi', 'Natore', 'Gopalpur UPO', 'Abdulpur', '6422'),
('Rajshahi', 'Natore', 'Harua', 'Harua', '6430'),
('Rajshahi', 'Natore', 'Harua', 'Dayarampur', '6431'),
('Rajshahi', 'Natore', 'Harua', 'Baraigram', '6432'),
('Rajshahi', 'Natore', 'Hatgurudaspur', 'Hatgurudaspur', '6440'),
('Rajshahi', 'Natore', 'Laxman', 'Laxman', '6410'),
('Rajshahi', 'Natore', 'Natore Sadar', 'Natore Sadar', '6400'),
('Rajshahi', 'Natore', 'Natore Sadar', 'Digapatia', '6401'),
('Rajshahi', 'Natore', 'Natore Sadar', 'Baiddyabal Gharia', '6402'),
('Rajshahi', 'Natore', 'Natore Sadar', 'Madhnagar', '6403'),
('Rajshahi', 'Natore', 'Singra', 'Singra', '6450'),
('Rajshahi', 'Naogaon', 'Ahsanganj', 'Ahsanganj', '6596'),
('Rajshahi', 'Naogaon', 'Ahsanganj', 'Bandai', '6597'),
('Rajshahi', 'Naogaon', 'Badalgachhi', 'Badalgachhi', '6570'),
('Rajshahi', 'Naogaon', 'Dhamuirhat', 'Dhamuirhat', '6580'),
('Rajshahi', 'Naogaon', 'Mahadebpur', 'Mahadebpur', '6530'),
('Rajshahi', 'Naogaon', 'Naogaon Sadar', 'Naogaon Sadar', '6500'),
('Rajshahi', 'Naogaon', 'Niamatpur', 'Niamatpur', '6520'),
('Rajshahi', 'Naogaon', 'Nitpur', 'Nitpur', '6550'),
('Rajshahi', 'Naogaon', 'Nitpur', 'Porsa', '6551'),
('Rajshahi', 'Naogaon', 'Nitpur', 'Panguria', '6552'),
('Rajshahi', 'Naogaon', 'Patnitala', 'Patnitala', '6540'),
('Rajshahi', 'Naogaon', 'Prasadpur', 'Prasadpur', '6510'),
('Rajshahi', 'Naogaon', 'Prasadpur', 'Manda', '6511'),
('Rajshahi', 'Naogaon', 'Prasadpur', 'Balihar', '6512'),
('Rajshahi', 'Naogaon', 'Raninagar', 'Raninagar', '6590'),
('Rajshahi', 'Naogaon', 'Raninagar', 'Kashimpur', '6591'),
('Rajshahi', 'Naogaon', 'Sapahar', 'Sapahar', '6560'),
('Rajshahi', 'Naogaon', 'Sapahar', 'Moduhil', '6561'),
('Rajshahi', 'Pabna', 'Banwarinagar', 'Banwarinagar', '6650'),
('Rajshahi', 'Pabna', 'Bera', 'Bera', '6680'),
('Rajshahi', 'Pabna', 'Bera', 'Nakalia', '6681'),
('Rajshahi', 'Pabna', 'Bera', 'Kashinathpur', '6682'),
('Rajshahi', 'Pabna', 'Bera', 'Puran Bharenga', '6683'),
('Rajshahi', 'Pabna', 'Bhangura', 'Bhangura', '6640'),
('Rajshahi', 'Pabna', 'Chatmohar', 'Chatmohar', '6630'),
('Rajshahi', 'Pabna', 'Debottar', 'Debottar', '6610'),
('Rajshahi', 'Pabna', 'Ishwardi', 'Ishwardi', '6620'),
('Rajshahi', 'Pabna', 'Ishwardi', 'Dhapari', '6621'),
('Rajshahi', 'Pabna', 'Ishwardi', 'Pakshi', '6622'),
('Rajshahi', 'Pabna', 'Ishwardi', 'Rajapur', '6623'),
('Rajshahi', 'Pabna', 'Pabna Sadar', 'Pabna Sadar', '6600'),
('Rajshahi', 'Pabna', 'Pabna Sadar', 'Kaliko Cotton Mills', '6601'),
('Rajshahi', 'Pabna', 'Pabna Sadar', 'Hamayetpur', '6602'),
('Rajshahi', 'Pabna', 'Sathia', 'Sathia', '6670'),
('Rajshahi', 'Pabna', 'Sujanagar', 'Sujanagar', '6660'),
('Rajshahi', 'Pabna', 'Sujanagar', 'Sagarkandi', '6661'),
('Rajshahi', 'Sirajganj', 'Baiddya Jam Toil', 'Baiddya Jam Toil', '6730'),
('Rajshahi', 'Sirajganj', 'Belkuchi', 'Belkuchi', '6740'),
('Rajshahi', 'Sirajganj', 'Belkuchi', 'Sohagpur', '6741'),
('Rajshahi', 'Sirajganj', 'Belkuchi', 'Rajapur', '6742'),
('Rajshahi', 'Sirajganj', 'Belkuchi', 'Enayetpur', '6751'),
('Rajshahi', 'Sirajganj', 'Belkuchi', 'Sthal', '6752'),
('Rajshahi', 'Sirajganj', 'Dhangora', 'Dhangora', '6720'),
('Rajshahi', 'Sirajganj', 'Dhangora', 'Malonga', '6721'),
('Rajshahi', 'Sirajganj', 'Kazipur', 'Kazipur', '6710'),
('Rajshahi', 'Sirajganj', 'Kazipur', 'Shuvgachha', '6711'),
('Rajshahi', 'Sirajganj', 'Kazipur', 'Gandail', '6712'),
('Rajshahi', 'Sirajganj', 'Shahjadpur', 'Shahjadpur', '6770'),
('Rajshahi', 'Sirajganj', 'Shahjadpur', 'Porjana', '6771'),
('Rajshahi', 'Sirajganj', 'Shahjadpur', 'Jamirta', '6772'),
('Rajshahi', 'Sirajganj', 'Shahjadpur', 'Kaijuri', '6773'),
('Rajshahi', 'Sirajganj', 'Sirajganj Sadar', 'Sirajganj Sadar', '6700'),
('Rajshahi', 'Sirajganj', 'Sirajganj Sadar', 'Raipur', '6701'),
('Rajshahi', 'Sirajganj', 'Sirajganj Sadar', 'Rashidabad', '6702'),
('Rajshahi', 'Sirajganj', 'Tarash', 'Tarash', '6780'),
('Rajshahi', 'Sirajganj', 'Ullapara', 'Ullapara', '6760'),
('Rajshahi', 'Sirajganj', 'Ullapara', 'Ullapara R.S', '6761'),
('Rajshahi', 'Sirajganj', 'Ullapara', 'Lahiri Mohanpur', '6762'),
('Rajshahi', 'Sirajganj', 'Ullapara', 'Salap', '6763');

-- --------------------------------------------------------

--
-- Table structure for table `geocodes`
--

CREATE TABLE `geocodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subordinate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hire_tusions`
--

CREATE TABLE `hire_tusions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hire_tusions`
--

INSERT INTO `hire_tusions` (`id`, `tutor_id`, `student_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 10, 'active', '2022-03-05 07:20:57', '2022-03-09 17:07:29'),
(6, 7, 9, 'active', '2022-03-09 13:16:37', '2022-03-09 17:07:35'),
(7, 11, 9, 'active', '2022-03-09 13:16:43', '2022-03-09 17:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `job_applies`
--

CREATE TABLE `job_applies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applies`
--

INSERT INTO `job_applies` (`id`, `job_post_id`, `user_id`, `student_name`, `status`, `created_at`, `updated_at`) VALUES
(17, '2', '12', '9', 'active', '2022-03-09 13:46:31', '2022-03-09 15:28:23'),
(18, '1', '12', '8', 'active', '2022-03-09 13:46:36', '2022-03-12 12:12:51'),
(19, '1', '13', '8', 'inactive', '2022-03-12 13:54:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Hasib', '01755555559555', 'fasdfsf', '2022-03-09 15:21:41', NULL),
(3, 'hasib', '01754548586', 'efsfdsfa', '2022-03-09 15:22:08', NULL),
(4, 'Md Arif Hossen', '01741553595', 'fgfsg', '2022-03-11 16:46:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_08_095440_create_categories_topics_table', 2),
(6, '2022_02_09_122750_create_categories_table', 3),
(7, '2022_02_11_151251_create_geocodes_table', 4),
(8, '2022_02_11_162314_create_add_job_posts_table', 5),
(9, '2022_02_18_044929_create_job_applies_table', 6),
(10, '2022_02_28_145346_create_details_table', 7),
(13, '2022_02_28_223834_create_details_table', 8),
(14, '2022_03_05_111234_create_hire_tusions_table', 9),
(15, '2022_03_09_211052_create_messages_table', 10),
(16, '2022_03_10_214950_create_complains_table', 11),
(17, '2022_03_10_221401_create_ratings_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `teacher_id`, `star`, `created_at`, `updated_at`) VALUES
(1, '7', '3', '2022-03-10 16:16:55', NULL),
(2, '7', '5', '2022-03-10 16:50:17', NULL),
(4, '7', '3', '2022-03-11 03:18:29', NULL),
(5, '7', '2', '2022-03-11 16:48:06', NULL),
(6, '11', '2', '2022-03-11 17:01:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int(2) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, 1, '$2y$10$6CmUVg4qpctS.gOvbG/0Eejuh.tqobRFjHniY6f2BAHWcRN/E4meu', '3xxCjsVvC1CDk3NFfrPEeTJITogRUmOwoEvwsXDnDt7L2XpyyMxjZTxiqjsR', '2022-02-06 05:32:38', '2022-02-06 05:32:38'),
(7, 'Rusa', 'rusa@gmail.com', NULL, 3, '$2y$10$k6UWRWULWXE4b8qF.PtZeOWxYJEpXcYAh0JfsjHZ208iMAqMnLS6W', NULL, '2022-02-12 03:09:57', '2022-02-12 03:09:57'),
(8, 'আরিফা', 'hasib@gmail.com', NULL, 2, '$2y$10$YI4aSFybW1r.vWPwN.bwheecP0p5mC810MhyG2YbqPjjo/O0PpNDa', NULL, '2022-02-12 11:01:39', '2022-02-12 11:01:39'),
(9, 'Monirul Islam', 'moirulislam@gmail.com', NULL, 2, '$2y$10$6dXG.BbELlkbjinDNS0HvO.pCXuAq/X8SNz8SuojC5PpgWB/dqE.y', NULL, '2022-02-18 08:19:19', '2022-02-18 08:19:19'),
(10, 'Azim', 'azim@gmail.com', NULL, 2, '$2y$10$P632t5M9Lvqbdff5RcRkDeMto7bW9S696o4aWk1PYS5JcWhQxJfdO', NULL, '2022-02-20 09:30:42', '2022-02-20 09:30:42'),
(11, 'Azim', 'azim1@gmail.com', NULL, 3, '$2y$10$ZGBLmmkSZH5AjQ7zcHG1C.lIJWd3DSghLUXnLs2T5i7/y4A/gPea2', NULL, '2022-03-02 14:43:38', '2022-03-02 14:43:38'),
(12, 'Ripa', 'ripa@gmail.com', NULL, 3, '$2y$10$PAC5emY5PUMba9NwT4v4cecUWmIr7nJ/5So4qvjIQlhBd7dRCtRLO', NULL, '2022-03-05 16:27:19', '2022-03-05 16:27:19'),
(13, 'milon', 'milon@gmail.com', NULL, 3, '$2y$10$j59ckpUtntNogq.JUklA3e0kFlKItIRjpUAG/5zeQTJwNIgV8J5ii', NULL, '2022-03-12 13:50:53', '2022-03-12 13:50:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_job_posts`
--
ALTER TABLE `add_job_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_topics`
--
ALTER TABLE `categories_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `geocodes`
--
ALTER TABLE `geocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hire_tusions`
--
ALTER TABLE `hire_tusions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applies`
--
ALTER TABLE `job_applies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_job_posts`
--
ALTER TABLE `add_job_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories_topics`
--
ALTER TABLE `categories_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `geocodes`
--
ALTER TABLE `geocodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hire_tusions`
--
ALTER TABLE `hire_tusions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_applies`
--
ALTER TABLE `job_applies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

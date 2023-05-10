-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 05:49 AM
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
-- Database: `cebmrsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_number` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `account_number`, `customer_name`, `created_at`, `updated_at`) VALUES
(1, 10000001, 'Patty O’Furniture', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(2, 10000002, 'Paddy O’Furniture', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(3, 10000003, 'Olive Yew', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(4, 10000004, 'Aida Bugg', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(5, 10000005, 'Maureen Biologist', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(6, 10000006, 'Teri Dactyl', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(7, 10000007, 'Peg Legge', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(8, 10000008, 'Allie Grater', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(9, 10000009, 'Liz Erd', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(10, 10000010, 'A. Mused', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(11, 10000011, 'Constance Noring', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(12, 10000012, 'Lois Di Nominator', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(13, 10000013, 'Minnie Van Ryder', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(14, 10000014, 'Lynn O’Leeum', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(15, 10000015, 'P. Ann O’Recital', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(16, 10000016, 'Ray O’Sun', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(17, 10000017, 'Lee A. Sun', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(18, 10000018, 'Ray Sin', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(19, 10000019, 'Isabelle Ringing', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(20, 10000020, 'Eileen Sideways', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(21, 10000021, 'Rita Book', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(22, 10000022, 'Paige Turner', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(23, 10000023, 'Rhoda Report', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(24, 10000024, 'Augusta Wind', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(25, 10000025, 'Chris Anthemum', '2023-05-03 23:33:05', '2023-05-03 23:33:05'),
(26, 10000026, 'Anne Teak', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(27, 10000027, 'U.R. Nice', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(28, 10000028, 'Anita Bath', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(29, 10000029, 'Harriet Upp', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(30, 10000030, 'I.M. Tired', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(31, 10000031, 'I. Missy Ewe', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(32, 10000032, 'Ivana B. Withew', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(33, 10000033, 'Anita Letterback', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(34, 10000034, 'Hope Furaletter', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(35, 10000035, 'B. Homesoon', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(36, 10000036, 'Bea Mine', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(37, 10000037, 'Bess Twishes', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(38, 10000038, 'C. Yasoon', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(39, 10000039, 'Audie Yose', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(40, 10000040, 'Dee End', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(41, 10000041, 'Amanda Hug', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(42, 10000042, 'Ben Dover', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(43, 10000043, 'Eileen Dover', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(44, 10000044, 'Willie Makit', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(45, 10000045, 'Willie Findit', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(46, 10000046, 'Skye Blue', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(47, 10000047, 'Staum Clowd', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(48, 10000048, 'Addie Minstra', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(49, 10000049, 'Anne Ortha', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(50, 10000050, 'Dave Allippa', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(51, 10000051, 'Dee Zynah', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(52, 10000052, 'Hugh Mannerizorsa', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(53, 10000053, 'Loco Lyzayta', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(54, 10000054, 'Manny Jah', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(55, 10000055, 'Mark Ateer', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(56, 10000056, 'Reeve Ewer', '2023-05-03 23:33:06', '2023-05-03 23:33:06'),
(57, 10000057, 'Tex Ryta', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(58, 10000058, 'Theresa Green', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(59, 10000059, 'Barry Kade', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(60, 10000060, 'Stan Dupp', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(61, 10000061, 'Neil Down', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(62, 10000062, 'Con Trariweis', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(63, 10000063, 'Don Messwidme', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(64, 10000064, 'Al Annon', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(65, 10000065, 'Anna Domino', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(66, 10000066, 'Clyde Stale', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(67, 10000067, 'Anna Logwatch', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(68, 10000068, 'Anna Littlical', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(69, 10000069, 'Norma Leigh Absent', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(70, 10000070, 'Sly Meebuggah', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(71, 10000071, 'Saul Goodmate', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(72, 10000072, 'Faye Clether', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(73, 10000073, 'Sarah Moanees', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(74, 10000074, 'Ty Ayelloribbin', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(75, 10000075, 'Hugo First', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(76, 10000076, 'Percy Vere', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(77, 10000077, 'Jack Aranda', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(78, 10000078, 'Olive Tree', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(79, 10000079, 'Fran G. Pani', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(80, 10000080, 'John Quil', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(81, 10000081, 'Ev R. Lasting', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(82, 10000082, 'Anne Thurium', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(83, 10000083, 'Cherry Blossom', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(84, 10000084, 'Glad I. Oli', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(85, 10000085, 'Ginger Plant', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(86, 10000086, 'Del Phineum', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(87, 10000087, 'Rose Bush', '2023-05-03 23:33:07', '2023-05-03 23:33:07'),
(88, 10000088, 'Perry Scope', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(89, 10000089, 'Frank N. Stein', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(90, 10000090, 'Roy L. Commishun', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(91, 10000091, 'Pat Thettick', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(92, 10000092, 'Percy Kewshun', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(93, 10000093, 'Rod Knee', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(94, 10000094, 'Hank R. Cheef', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(95, 10000095, 'Bridget Theriveaquai', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(96, 10000096, 'Pat N. Toffis', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(97, 10000097, 'Karen Onnabit', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(98, 10000098, 'Col Fays', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(99, 10000099, 'Fay Daway', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(100, 10000100, 'Joe V. Awl', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(101, 10000101, 'Wes Yabinlatelee', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(102, 10000102, 'Colin Sik', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(103, 10000103, 'Greg Arias', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(104, 10000104, 'Toi Story', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(105, 10000105, 'Gene Eva Convenshun', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(106, 10000106, 'Jen Tile', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(107, 10000107, 'Simon Sais', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(108, 10000108, 'Peter Owt', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(109, 10000109, 'Hugh N. Cry', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(110, 10000110, 'Lee Nonmi', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(111, 10000111, 'Lynne Gwafranca', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(112, 10000112, 'Art Decco', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(113, 10000113, 'Lynne Gwistic', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(114, 10000114, 'Polly Ester Undawair', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(115, 10000115, 'Oscar Nommanee', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(116, 10000116, 'Laura Biding', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(117, 10000117, 'Laura Norda', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(118, 10000118, 'Des Ignayshun', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(119, 10000119, 'Mike Rowe-Soft', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(120, 10000120, 'Anne T. Kwayted', '2023-05-03 23:33:08', '2023-05-03 23:33:08'),
(121, 10000121, 'Wayde N. Thabalanz', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(122, 10000122, 'Dee Mandingboss', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(123, 10000123, 'Sly Meedentalfloss', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(124, 10000124, 'Stanley Knife', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(125, 10000125, 'Wynn Dozeaplikayshun', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(126, 10000126, 'Mal Ajusted', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(127, 10000127, 'Penny Black', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(128, 10000128, 'Mal Nurrisht', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(129, 10000129, 'Polly Pipe', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(130, 10000130, 'Polly Wannakrakouer', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(131, 10000131, 'Con Staninterupshuns', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(132, 10000132, 'Fran Tick', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(133, 10000133, 'Santi Argo', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(134, 10000134, 'Carmen Goh', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(135, 10000135, 'Carmen Sayid', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(136, 10000136, 'Norma Stitts', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(137, 10000137, 'Ester La Vista', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(138, 10000138, 'Manuel Labor', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(139, 10000139, 'Ivan Itchinos', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(140, 10000140, 'Ivan Notheridiya', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(141, 10000141, 'Mustafa Leek', '2023-05-03 23:33:09', '2023-05-03 23:33:09'),
(142, 10000142, 'Emma Grate', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(143, 10000143, 'Annie Versaree', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(144, 10000144, 'Tim Midsaylesman', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(145, 10000145, 'Mary Krismass', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(146, 10000146, 'Tim “Buck” Too', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(147, 10000147, 'Lana Lynne Creem', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(148, 10000148, 'Wiley Waites', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(149, 10000149, 'Ty R. Leeva', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(150, 10000150, 'Ed U. Cayshun', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(151, 10000151, 'Anne T. Dote', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(152, 10000152, 'Claude Strophobia', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(153, 10000153, 'Anne Gloindian', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(154, 10000154, 'Dulcie Veeta', '2023-05-03 23:33:10', '2023-05-03 23:33:10'),
(155, 10000155, 'Abby Normal', '2023-05-03 23:33:10', '2023-05-03 23:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_number` int(11) NOT NULL,
  `read_by` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `account_number`, `read_by`, `units`, `date`, `created_at`, `updated_at`) VALUES
(1, 10000008, 2, 1, '2001-01-05', '2023-05-03 22:07:57', '2023-05-03 22:07:57'),
(2, 10000008, 2, 13, '2001-04-01', '2023-05-03 22:35:44', '2023-05-03 22:35:44'),
(4, 10000008, 2, 13, '2001-04-02', '2023-05-03 22:53:09', '2023-05-03 22:53:09'),
(5, 10000001, 1, 12, '2023-05-09', '2023-05-07 22:16:40', '2023-05-07 22:16:40'),
(6, 10000005, 2, 20, '2023-05-08', '2023-05-07 22:31:04', '2023-05-07 22:31:04'),
(7, 10000002, 1, 58, '2023-05-16', '2023-05-07 22:46:54', '2023-05-07 22:46:54'),
(8, 10000002, 1, 58, '2023-05-18', '2023-05-07 22:47:36', '2023-05-07 22:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2023_05_04_032845_create_bill_table', 3),
(9, '2023_05_03_013202_create_account_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '52251bac19ad1ced731481a2d51c34dabf34c838ee6528f6ac5e8438087814bc', '[\"*\"]', NULL, NULL, '2023-05-03 02:24:15', '2023-05-03 02:24:15'),
(2, 'App\\Models\\User', 1, 'auth_token', '51d7c26ff1c6865cf54b5f00701be09db6520a54dad4e6c84ea28c49ac13d842', '[\"*\"]', '2023-05-03 02:30:50', NULL, '2023-05-03 02:30:15', '2023-05-03 02:30:50'),
(3, 'App\\Models\\User', 2, 'auth_token', '669155030d9c7034eabc54b17a2b96f2bb15d4fb771ff330d697663c684341a5', '[\"*\"]', '2023-05-03 03:22:55', NULL, '2023-05-03 02:32:07', '2023-05-03 03:22:55'),
(4, 'App\\Models\\User', 2, 'auth_token', '220dcdbc8e33dc456825ec195c2cb35ff6eccebc373bbb8e0f26be87b24485aa', '[\"*\"]', NULL, NULL, '2023-05-03 03:30:57', '2023-05-03 03:30:57'),
(5, 'App\\Models\\User', 1, 'auth_token', '71977ed9c81d81f3d8a723ebb093934c13218493b9b773ddaf1cddd2f724f486', '[\"*\"]', '2023-05-07 21:13:02', NULL, '2023-05-03 20:44:42', '2023-05-07 21:13:02'),
(6, 'App\\Models\\User', 1, 'auth_token', '46a76fc4e70a8778e3424fdd29a2fcf1a36472643fc8fbd5e7699f6da42abfea', '[\"*\"]', NULL, NULL, '2023-05-07 19:58:20', '2023-05-07 19:58:20'),
(7, 'App\\Models\\User', 1, 'auth_token', '4d0295eeada5f5f3124b1083ede3f6645937b19364a47ec13ad62fc423ba3be5', '[\"*\"]', NULL, NULL, '2023-05-07 20:11:06', '2023-05-07 20:11:06'),
(8, 'App\\Models\\User', 1, 'auth_token', '1e50f1e702017ca3dc2a4123c6d47d313be959676fc7c35e00041ec8a0a95567', '[\"*\"]', NULL, NULL, '2023-05-07 20:21:04', '2023-05-07 20:21:04'),
(9, 'App\\Models\\User', 1, 'auth_token', '9f21b0f40acc9457b1d1897eef7435282d194825bb37c5161ae0a129ee17bdcd', '[\"*\"]', NULL, NULL, '2023-05-07 20:24:17', '2023-05-07 20:24:17'),
(10, 'App\\Models\\User', 1, 'auth_token', 'be7280f0b606abb0e10671923ed70dd14f601a7be995ebf0df5051ef725b92e6', '[\"*\"]', '2023-05-07 21:59:44', NULL, '2023-05-07 21:05:41', '2023-05-07 21:59:44'),
(11, 'App\\Models\\User', 1, 'auth_token', 'a313eefb998485875114ffa18ca3529e44282327538a27707e32e693e053a030', '[\"*\"]', '2023-05-07 22:10:04', NULL, '2023-05-07 22:09:56', '2023-05-07 22:10:04'),
(12, 'App\\Models\\User', 1, 'auth_token', '2cebaee773aeb237207337f63ddb1f2d479fcca1659b97a51e1d96282834b495', '[\"*\"]', '2023-05-07 22:17:06', NULL, '2023-05-07 22:10:23', '2023-05-07 22:17:06'),
(13, 'App\\Models\\User', 2, 'auth_token', '3c590414d0362b2f0ce2b958f05e2b3ff9433abe78a1c5b53412d638876ef70c', '[\"*\"]', '2023-05-07 22:20:41', NULL, '2023-05-07 22:19:40', '2023-05-07 22:20:41'),
(14, 'App\\Models\\User', 2, 'auth_token', 'c572271f447c3d0f43d7dc737c3726866811d2d9926a6fc7ba44c36336abecc4', '[\"*\"]', '2023-05-07 22:20:56', NULL, '2023-05-07 22:20:54', '2023-05-07 22:20:56'),
(15, 'App\\Models\\User', 2, 'auth_token', 'fb9a90c296d7b91a12b658113e888a9521b4e89123212f0ce53f2b67f6c78877', '[\"*\"]', '2023-05-07 22:31:04', NULL, '2023-05-07 22:23:11', '2023-05-07 22:31:04'),
(16, 'App\\Models\\User', 1, 'auth_token', '2a3858876c662ef668a982e71b338ae7d286fb4015543d8f589cf79a8ee75c23', '[\"*\"]', '2023-05-07 22:47:41', NULL, '2023-05-07 22:31:44', '2023-05-07 22:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Janith Umeda', 'janith@gmail.com', NULL, '$2y$10$GNmvVOe0IjWVUvHsLte6e.bXIF/gT2HB1IfD4XsieDVQfTxtsBTAW', NULL, '2023-05-03 01:50:17', '2023-05-03 01:50:17'),
(2, 'Kamal', 'kamal@gmail.com', NULL, '$2y$10$HSsus/sad0Qsp.uJnFdF4uM6uR3aI0zY8c.wYGm/OuYHrXSa4ubdy', NULL, '2023-05-03 02:32:07', '2023-05-03 02:32:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

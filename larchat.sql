-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2018 at 01:25 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larchat`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `user_one` varchar(100) NOT NULL,
  `user_two` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user_one`, `user_two`, `updated_at`, `created_at`) VALUES
(14, '1', '4', '2018-10-13 11:58:46', '2018-10-13 11:58:46'),
(15, '1', '2', '2018-10-13 14:35:29', '2018-10-13 14:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `massages`
--

CREATE TABLE `massages` (
  `id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `massages`
--

INSERT INTO `massages` (`id`, `user_from`, `user_to`, `conversation_id`, `msg`, `status`) VALUES
(23, 1, 3, 1, 'ahmed', 1),
(41, 1, 3, 1, 'i\', ahmed', 1),
(59, 1, 4, 14, 'hhhhhhhhh', 1),
(60, 1, 2, 15, 'sdasdasd', 1),
(61, 1, 2, 15, 'sadasds', 1),
(62, 1, 2, 15, 'dasdasd', 1),
(63, 1, 2, 15, 'sdasdasd', 1),
(64, 1, 4, 14, 'hi mona', 1),
(65, 1, 4, 14, 'how r u mona', 1),
(66, 4, 1, 14, 'i\'m ok ahmed', 1),
(67, 4, 1, 14, 'dasdasd', 1),
(68, 4, 1, 14, 'hi ahmed', 1),
(69, 4, 1, 14, 'ahmed are u here', 1),
(70, 1, 4, 14, 'how r u mona', 1),
(71, 1, 4, 14, 'mona are u there', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_read` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_from`, `user_to`, `user_read`, `text`, `created_at`, `updated_at`) VALUES
(166, 1, 4, 1, 'How r u ? Mona', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(167, 4, 1, 1, 'fdsfsdf', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(168, 4, 1, 1, 'سيبسيبسيب', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(169, 4, 1, 1, 'يبسيبسي', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(170, 4, 1, 1, 'fdsfsdf', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(171, 4, 1, 1, 'sdsadasdasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(172, 4, 1, 1, 'dfsdfsdfds', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(173, 4, 1, 1, 'hello', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(174, 4, 1, 1, 'ho ahmed', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(175, 1, 4, 1, 'how r u mona', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(176, 4, 1, 1, 'ho ahmed', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(177, 4, 1, 1, 'dasdasdasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(178, 1, 4, 1, 'sadsadd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(179, 1, 4, 1, 'sadadsad', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(180, 4, 1, 1, 'dasdasdas', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(181, 4, 1, 1, 'how r ahmed', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(182, 4, 1, 1, 'dsdfsdf', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(183, 1, 4, 1, 'asdasdasd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(184, 4, 3, 0, 'sadasdas', '2018-10-17 23:25:21', '2018-10-17 23:25:21'),
(185, 4, 1, 1, 'dasdas', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(186, 4, 1, 1, 'dsadasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(187, 4, 1, 1, 'gdfgdfgdfg', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(188, 4, 1, 1, 'dasdasdasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(189, 1, 4, 1, 'sdasdasdas', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(190, 4, 1, 1, 'dasdasdasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(191, 4, 1, 1, 'dasdasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(192, 1, 4, 1, 'ddasd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(193, 1, 4, 1, 'dasdasdasd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(194, 4, 1, 1, 'dsfsdfsdf', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(195, 1, 4, 1, 'dsfdsfdsdf', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(196, 4, 1, 1, 'sadasdsa', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(197, 1, 4, 1, 'dsadas', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(198, 4, 1, 1, 'asdasdas', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(199, 4, 1, 1, 'saddasdas', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(200, 4, 1, 1, 'dasdasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(201, 1, 4, 1, 'dsfsdfsd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(202, 4, 1, 1, 'dfsdfsdfds', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(203, 4, 1, 1, 'fsfsdfsdf', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(204, 4, 1, 1, 'sdfsfsdfs', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(205, 4, 1, 1, 'alo', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(206, 1, 4, 1, 'sadsadsadas', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(207, 1, 4, 1, 'daasda', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(208, 1, 4, 1, 'asdasda', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(209, 1, 4, 1, 'asdasd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(210, 1, 4, 1, 'dasds', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(211, 1, 4, 1, 'asdasdsa', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(212, 1, 4, 1, 'asdasd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(213, 1, 4, 1, 'asdasd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(214, 1, 4, 1, 'asdas', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(215, 1, 4, 1, 'adad', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(216, 1, 4, 1, 'asdasd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(217, 1, 4, 1, 'asdas', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(218, 1, 4, 1, 'asdsa', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(219, 1, 4, 1, 'asdasdas', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(220, 1, 4, 1, 'sadasd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(221, 4, 1, 1, 'asdasdsa', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(222, 4, 1, 1, 'asdasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(223, 4, 1, 1, 'asdsad', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(224, 4, 1, 1, 'dasda', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(225, 4, 1, 1, 'asdas', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(226, 4, 1, 1, 'adasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(227, 4, 1, 1, 'asda', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(228, 4, 1, 1, 'sasdas', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(229, 4, 1, 1, 'asdas', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(230, 4, 1, 1, 'asdasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(231, 4, 1, 1, 'adasd', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(232, 4, 1, 1, 'asdasdas', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(233, 4, 1, 1, 'dadas', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(234, 4, 1, 1, 'dasdad', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(235, 4, 1, 1, 'asda', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(236, 4, 1, 1, 'dasdalkfsdjflsf', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(237, 1, 4, 1, 'sadasdas', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(238, 1, 4, 1, 'asdasd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(239, 1, 4, 1, 'asdas', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(240, 1, 4, 1, 'dadad', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(241, 1, 4, 1, 'dadasd', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(242, 4, 1, 1, 'يبسيبسيب', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(243, 1, 4, 1, 'hiii', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(244, 1, 4, 1, 'hi mona', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(245, 1, 4, 1, 'hiiiiiiiiii', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(246, 1, 4, 1, 'how r u ?', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(247, 1, 4, 1, 'how r u mona', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(248, 4, 1, 1, 'i\'m fine ahmed', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(249, 4, 1, 1, 'thanks ahmed', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(250, 1, 4, 1, 'hi agin mona', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(251, 1, 4, 1, 'hi how are mona agin', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(252, 1, 4, 1, 'mona r u there ?', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(253, 4, 1, 1, 'ahmed how r u ?', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(254, 1, 4, 1, 'i\'m ok', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(255, 4, 1, 1, 'hooooo', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(256, 1, 4, 1, 'hi', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(257, 1, 4, 1, 'how r u', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(258, 4, 1, 1, 'how r u ahmed', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(259, 1, 4, 1, 'i\'m ok mona', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(260, 4, 1, 1, 'are u going rhere ahmed', '2018-10-28 12:24:11', '2018-10-28 10:24:11'),
(261, 1, 4, 1, 'yes mona', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(262, 1, 4, 1, 'mona', '2018-10-28 12:24:39', '2018-10-28 10:24:39'),
(263, 1, 4, 1, 'mona', '2018-10-28 12:24:39', '2018-10-28 10:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `remember_token` varchar(200) NOT NULL DEFAULT 'des',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `updated_at`, `created_at`) VALUES
(1, 'ahmed', 'a@hotmail.com', '$2y$10$o9qaWWlEyf7QOfYrrAlpOeC5elRoH976ujCqYWOGZoJ8BBFNXCORK', 'h8gYdrPEC4UD3aGvmPmfho7KhxcgVRakBgLw3oxB9L1fbHYsPGtUoFfp8bmL', '2018-10-17 12:50:41', '2018-10-10 10:49:35'),
(2, 'aly', 'aly@hotmail.com', '$2y$10$fNm7gP/e0ryE.OKopH3HbuLcKuiuBQpULcfe62KhaRNNGakK3x0p2', 'fHlX4FWyDk8rMOfAPltJJSwg78l40wMmfiGzXuRt6TcMicq8t1WoB9on1DbR', '2018-10-10 12:51:36', '2018-10-10 10:51:19'),
(3, 'morsy', 'msry@hotmail.com', '$2y$10$ICZIl1NPTeWlGuxJwDuWs./GIpE3vw0NKRW03ZdTiy6WDhxTDZEmi', 'aSFGhmHKamwGQnTCHMAIcNeJ6jC5jcZSTxQWb8UtBRob9rprPC1t6WGRsBUK', '2018-10-13 01:36:31', '2018-10-10 10:52:12'),
(4, 'mona', 'mona@hotmail.com', '$2y$10$DjhplA2fRd4FcI9uzujAlugVg8aoYzTWJ5ax3NSQgAL4Nkr/tqLD6', 'rtZUSD5aFsxikLYYQP3c30BtNZfpfHv9urHhpWzKc7K142yKth3Y6k2bOGTb', '2018-10-17 12:37:48', '2018-10-12 23:33:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massages`
--
ALTER TABLE `massages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `massages`
--
ALTER TABLE `massages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

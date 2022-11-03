-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 09:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(1, 'The Logic Of Task Analysis ', '						The purpose of a task analysis is to break the task into its constituent parts in order to describe\r\nthe parts as well as the ways in which they are organized in the task. The basic organisation\r\nprinciples must be that each step of the task brings the acting agent closer to the stated goal.\r\nThis will therefore also be the principle of decomposition. Each task step is assumed to be\r\ncarried out by an agent. The agent may be an operator (local or remote) or an artefact, e.g. a\r\nrobot or a computerized function. If a task step does not bring the agent closer to the goal, it is\r\nclearly inappropriate and should be avoided or not be prescribed. It follows that a task must\r\nbe described with reference to the goal of the task. We may here apply the following\r\ndefinitions:&amp;nbsp;					', 0, '2022-11-03', '2023-02-20', 2, '3,4,5', '2020-12-03 09:56:56'),
(2, 'Goals And Means ', '						In task analysis one can distinguish between two different situations. In the simplest case the\r\ntask steps can be carried out without imposing further conditions on the system. The steps of\r\nthe task can be described as a simple sequence, either in a strict linear sequence or with\r\nbranch points (decision points), i.e., as a tree. If the task steps are single or elementary\r\nactions, the result is a non-hierarchical task description. If the task steps are composed of\r\nother task steps (aggregation) then the result will be a hierarchical task description; it simply					', 0, '2022-11-02', '2022-12-31', 2, '3', '2020-12-03 13:51:54'),
(3, 'student', 'the student should add the following', 0, '2022-11-03', '2022-11-09', 2, '5', '2022-11-02 21:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'ReseacherDna', 'ICEP@tut.ac.za', '0791510712', 'tut sosh south ', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Animal Research RAFT Task- Common Core ELA Informational Writing', '&lt;span style=&quot;font-family: &amp;quot;Proxima Nova&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;I love to give my students writing tasks using RAFT and I are sure you will, too! It gives students an authentic reason to write and makes it more fun. Many of my students who were reluctant t&lt;/span&gt;', 3, '2020-12-03 11:08:58'),
(2, 1, 'Internet Research Task Cards', '&lt;span style=&quot;font-family: &amp;quot;Proxima Nova&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;This resource is designed to help your students develop their internet research skills. Some skills included in the set include:-skimming-use of quotation marks-key words-auto complete-&lt;/span&gt;', 2, '2020-12-03 13:50:15'),
(3, 2, 'Task Test', 'Sample', 1, '2020-12-03 13:52:25'),
(4, 2, 'test 23', 'Sample test 23', 1, '2020-12-03 13:52:40'),
(5, 3, 'add the following items ', '				car stuent profile			', 2, '2022-11-02 21:18:01'),
(6, 1, 'solar System and Planets Facts Task Cards Science Research Activity Digital', '								add the following', 1, '2022-11-02 21:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Mash', 'Mr Phurutsi', 'phurutsi@tut.ac.za', '0192023a7bbd73250516f069df18b500', 1, 'no-image-available.png', '2020-11-26 10:57:04'),
(2, 'Thabang', 'Dr Sepataka', 'sepatakatp@tut.ac.za', '94b26fe2a0d92ba717076dc4196257ae', 2, '1606978560_avatar.jpg', '2020-12-03 09:26:03'),
(3, 'Claire', 'Blake', 'cblake@sample.com', '94b26fe2a0d92ba717076dc4196257ae', 3, '1606958760_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg', '2020-12-03 09:26:42'),
(4, 'George', 'Wilson', 'gwilson@sample.com', 'd40242fb23c45206fadee4e2418f274f', 3, '1606963560_avatar.jpg', '2020-12-03 10:46:41'),
(5, 'shiko', 'Mr Matlala', '216181457@tut4life.ac.za', '94b26fe2a0d92ba717076dc4196257ae', 3, '1606963620_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg', '2020-12-03 10:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(1, 1, 1, '							&lt;p&gt;Sample Progress&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Test 1&lt;/li&gt;&lt;li&gt;Test 2&lt;/li&gt;&lt;li&gt;Test 3&lt;/li&gt;&lt;/ul&gt;																			', 'Sample Progress', '2020-12-03', '08:00:00', '10:00:00', 1, 2, '2020-12-03 12:13:28'),
(2, 1, 1, '							Sample Progress						', 'Sample Progress 2', '2020-12-03', '13:00:00', '14:00:00', 1, 1, '2020-12-03 13:48:28'),
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30'),
(5, 1, 1, '													', 'car', '0000-00-00', '00:00:00', '00:00:00', 3, 0, '2022-11-02 20:35:30'),
(6, 1, 1, 'hsdfdsvbbhjvjdfsbfuv', 'study', '0000-00-00', '00:00:00', '00:00:00', 3, 0, '2022-11-02 20:35:48'),
(7, 3, 5, 'dhvdvbbhjnjdvbvugvvhbvvdvdvkvbhe', 'framebook ', '2022-11-04', '10:19:00', '21:22:00', 2, 11.05, '2022-11-02 21:19:38'),
(8, 1, 6, '													', 'smdskbddfbdsk/jgdfb', '2022-11-02', '10:28:00', '14:34:00', 2, 4.1, '2022-11-02 21:28:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2017 at 11:25 PM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor_appointment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments_appointment`
--

CREATE TABLE `appointments_appointment` (
  `appointment_id` int(11) NOT NULL,
  `appointment_patient_id` varchar(255) NOT NULL,
  `appointment_doctor_id` varchar(255) NOT NULL,
  `appointment_timeslot_id` varchar(255) NOT NULL,
  `appointment_date` varchar(255) NOT NULL,
  `appointment_fees` varchar(255) NOT NULL,
  `appointment_contact` varchar(255) NOT NULL,
  `appointment_address` varchar(255) NOT NULL,
  `appointment_status` varchar(255) NOT NULL,
  `appointment_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `appointments_appointment`
--

INSERT INTO `appointments_appointment` (`appointment_id`, `appointment_patient_id`, `appointment_doctor_id`, `appointment_timeslot_id`, `appointment_date`, `appointment_fees`, `appointment_contact`, `appointment_address`, `appointment_status`, `appointment_description`) VALUES
(3, '3', '6', '2', '2016-07-30', '300', '9876545676', 'New Delhi', '2', 'Suffered from headache'),
(4, '5', '6', '3', '2016-07-27', '', '987654321', 'New Lahore Colony', '1', ''),
(6, '1', '9', '1', '7 February,2017', '300', '9876545678', 'Test', '1', 'test'),
(7, '15', '11', '3', '15 February,2017', '300', '9876545678', 'Allahabad', '2', 'Suffered from foot pain'),
(8, '3', '9', '2', '15 February,2017', '300', '9876545678', 'Allahabad', '1', 'Suffered from foot pain'),
(9, '5', '9', '2', '7 February,2017', '300', '9876545678', 'Allahabd', '1', 'asdf'),
(10, '7', '6', '2', '8 February,2017', '300', '9876545678', 'Test', '1', 'Test'),
(11, '16', '11', '2', '7 February,2017', '300', '9876545678', 'Test', '1', 'Test'),
(12, '1', '10', '1', '9 February,2017', '1000', '9876545678', 'Allahabad', '1', 'Allahabad'),
(14, '1', '6', '2', '9 May,2017', '1200', '9876545678', 'Noida', '1', 'Suffered From Fever'),
(15, '1', '6', '2', '2 May,2017', '1200', '9876545678', 'Noida', '1', 'Sufffered from fever'),
(16, '8', '10', '3', '21 July,2017', '100', '9876543212', 'Allahabad', '1', 'Appoitnement with doctoe'),
(17, '16', '11', '2', '7 July,2017', '1000', '8987676545', 'Pasco House, Gurgaon sohna Road near Damdma More,Sohna Distt, Gurgaon', '1', 'Appointment of Alok Kumar');

-- --------------------------------------------------------

--
-- Table structure for table `appointments_status`
--

CREATE TABLE `appointments_status` (
  `as_id` int(11) NOT NULL,
  `as_title` varchar(255) NOT NULL,
  `as_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `appointments_status`
--

INSERT INTO `appointments_status` (`as_id`, `as_title`, `as_description`) VALUES
(1, 'Confirmed', 'Appointment Confirmed'),
(2, 'Pending', 'Appointment Pending');

-- --------------------------------------------------------

--
-- Table structure for table `appointments_timeslot`
--

CREATE TABLE `appointments_timeslot` (
  `timeslot_id` int(11) NOT NULL,
  `timeslot_name` varchar(255) NOT NULL,
  `timeslot_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `appointments_timeslot`
--

INSERT INTO `appointments_timeslot` (`timeslot_id`, `timeslot_name`, `timeslot_description`) VALUES
(1, '09:00-09:30', '09:00-09:30 Timeslot'),
(2, '09:30-10:00', '09:30-10:00 Timeslot'),
(3, '10:00-10:30', '10:00-10:30 Timeslot');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qi4jui1wag7y5kjd3nal07b1h2jlc9ia', 'MDZiNTU1MGVjZDFkNDliNDc3ZWY1OGExZDgwOTk5MWFkYTZjZmE3NDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2017-07-21 17:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `users_city`
--

CREATE TABLE `users_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_city`
--

INSERT INTO `users_city` (`city_id`, `city_name`) VALUES
(1, 'Allahabad'),
(2, 'Varanasi');

-- --------------------------------------------------------

--
-- Table structure for table `users_country`
--

CREATE TABLE `users_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_country`
--

INSERT INTO `users_country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `role_id` int(11) NOT NULL,
  `role_title` varchar(255) NOT NULL,
  `role_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`role_id`, `role_title`, `role_description`) VALUES
(1, 'System Admin', 'Admin Roles and Permissions'),
(2, 'Normal User', 'Users Roles and Permissions'),
(3, 'Doctor', 'Doctors User Permission and Role'),
(4, 'Patient', 'Patient User Permission and Role');

-- --------------------------------------------------------

--
-- Table structure for table `users_state`
--

CREATE TABLE `users_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_state`
--

INSERT INTO `users_state` (`state_id`, `state_name`) VALUES
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE `users_user` (
  `user_id` int(11) NOT NULL,
  `user_level_id` int(11) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` int(11) NOT NULL,
  `user_state` int(11) NOT NULL,
  `user_country` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`user_id`, `user_level_id`, `user_username`, `user_password`, `user_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`) VALUES
(8, 1, 'admin', 'test', 'Amit Kumar', 'Allahabad', 'Lunckonw', 1, 1, 1, 'amit@gmail.com', '9878987678', 'Male', '2 July,1987', '/uploads/p2.jpg'),
(10, 3, 'manasa', 'test', 'Manasa Singh', 'House no : 768', 'Noida', 2, 1, 1, 'manasa@gmail.com', '9876543212', 'Female', '18 January,1968', '/uploads/d1.jpg'),
(11, 3, 'aman', 'test', 'Aman Kumar', 'House No : 355, Sector 23', 'Noida', 1, 2, 1, 'aman@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/d2.jpg'),
(14, 3, 'pawan', 'test', 'Pawan Kumar', 'House No : 355, Sector 23', 'Noida', 1, 1, 2, 'pawan@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/d4.jpg'),
(15, 2, 'vishal', 'test', 'Vishal Singh', 'House No : 355, Sector 23', 'Noida', 1, 1, 2, 'vvishal@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p3.jpg'),
(16, 4, 'alok', 'test', 'Alok Kumar', 'Pasco House,', '', 1, 1, 1, 'alok@gmail.com', '9876543212', 'Male', '17 July,1998', '/uploads/p1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments_appointment`
--
ALTER TABLE `appointments_appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `appointments_status`
--
ALTER TABLE `appointments_status`
  ADD PRIMARY KEY (`as_id`);

--
-- Indexes for table `appointments_timeslot`
--
ALTER TABLE `appointments_timeslot`
  ADD PRIMARY KEY (`timeslot_id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `users_city`
--
ALTER TABLE `users_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `users_country`
--
ALTER TABLE `users_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users_state`
--
ALTER TABLE `users_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments_appointment`
--
ALTER TABLE `appointments_appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `appointments_status`
--
ALTER TABLE `appointments_status`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `appointments_timeslot`
--
ALTER TABLE `appointments_timeslot`
  MODIFY `timeslot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_city`
--
ALTER TABLE `users_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_country`
--
ALTER TABLE `users_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_state`
--
ALTER TABLE `users_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

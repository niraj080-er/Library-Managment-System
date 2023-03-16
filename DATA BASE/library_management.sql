-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220609.11e34a6fec
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 08:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bookpic` varchar(210) NOT NULL,
  `bookname` varchar(250) NOT NULL,
  `bookdetail` varchar(110) NOT NULL,
  `bookaudor` varchar(250) NOT NULL,
  `bookpub` varchar(250) NOT NULL,
  `branch` varchar(110) NOT NULL,
  `bookprice` varchar(25) NOT NULL,
  `bookquantity` varchar(25) NOT NULL,
  `bookava` int(11) NOT NULL,
  `bookrent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `bookpic`, `bookname`, `bookdetail`, `bookaudor`, `bookpub`, `branch`, `bookprice`, `bookquantity`, `bookava`, `bookrent`) VALUES
(1, 'AI.jfif', 'Artificial Intelligence', 'First edition', 'Anamitra  Deshmukh-Nimbak', 'Technical Publication', 'CSE', '490', '150', 143, 7),
(2, 'CDE.jfif', 'Compiler Design', '6th semester ', 'Dr.A Kanchana', 'Charulatha Publication', 'CSE', '275', '120', 114, 6),
(3, 'download.jfif', 'Mobile computing ', 'First Edition', 'V.Jeyasri Arokiamary', 'Technical Publication', 'CSE', '395', '130', 121, 9),
(4, 'DS.jfif', 'Distributed System', 'First Edition ', 'M.Durgadevi', 'Technical Publication', 'CSE', '200', '123', 118, 5),
(5, 'IP.jfif', 'Internet Programming', 'First Edition', 'Dr.S. Padmapriya', 'MAGNUS PUBLICATION', 'CSE', '300', '112', 106, 6),
(6, 'mpmc.jfif', 'MPMC', 'First Edition', 'A.P.Godse', 'Technical Publication', 'CSE', '495', '200', 195, 5),
(7, 'vlsi.jfif', 'VLSI Design', 'First Edition', 'Dr.R.Uma', 'Technical Publication', 'ECE', '250', '120', 118, 2),
(8, 'wireless comunication.jfif', 'Wireless communication ', 'First edition', 'K.Poonkodi', 'Technical Publication', 'ECE', '355', '120', 115, 5),
(9, 'wirless network.jfif', 'Wireless Network', 'First edition', 'A.Pradanth', 'Technical Publication', 'ECE', '450', '220', 217, 3),
(10, 'transmistion.jfif', 'Transmission Lines and RF', 'First Edition', 'Dr.S.N.Kumar', 'Technical Publication', 'ECE', '365', '2501', 2500, 1),
(11, 'communication engineerig.jfif', 'Communication Engineering', 'First Edition', 'Dr.Vijayaprasatah', 'Technical Publication', 'EEE', '250', '365', 363, 2),
(12, 'embedded.jfif', 'Embedded System', 'First Edition', 'Dr.s. selvarsu', 'Technical Publication', 'EEE', '250', '361', 361, 0),
(13, 'auto mobile eng...jfif', 'Automobile Engineering', 'First Edition', 'Dr.T.Lovise', 'Technical Publication', 'MECH', '200', '120', 120, 0),
(14, 'C.jfif', 'C programming ', 'First Edition', 'Dr.S.Gunasundari', 'Sruthi Publication', 'CSE', '200', '230', 227, 3),
(15, 'CA.jfif', 'Computer Architecture', 'First Edition', 'Dr.J.S.Leena  Jasmine', 'Sruthi Publication', 'CSE', '120', '350', 350, 0),
(16, 'heat and mask mtransfer.jfif', 'Heat and Mass Transfer', 'First Edition', 'Dr.v.chockalingam', 'Technical Publication', 'EEE', '330', '120', 120, 0),
(17, 'hydrolics and.jfif', 'Hydraulic and Pneumaatics', 'First Edition', 'Dr. Dhanapal', 'Technical Publication', 'MECH', '450', '120', 120, 0),
(18, 'principal of mangment.jfif', 'Principal of Management', 'First Edition', 'Dr.J.Aldrin Raj', 'Technical Publication', 'ECE', '460', '123', 121, 2),
(19, 'protection and switch.jfif', 'Protection and Switchgear', 'First Edition', 'Dr.k.samidurai', 'Technical Publication', 'EEE', '360', '120', 120, 0),
(20, 'SA2.jfif', 'Structural Analysis-II', 'First Edition', 'Dr.Sudharasan', 'Technical Publication', 'CIVIL', '350', '120', 120, 0);

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `issuename` varchar(25) NOT NULL,
  `issuebook` varchar(25) NOT NULL,
  `issuetype` varchar(25) NOT NULL,
  `issuedays` int(11) NOT NULL,
  `issuedate` varchar(25) NOT NULL,
  `issuereturn` varchar(25) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`id`, `userid`, `issuename`, `issuebook`, `issuetype`, `issuedays`, `issuedate`, `issuereturn`, `fine`) VALUES
(97, 16, 'Prabhakaran M. V.', 'Compiler Design', 'teacher', 7, '12/06/2022', '19/06/2022', 0),
(98, 17, 'P.Malathi', 'Artificial Intelligence', 'teacher', 7, '12/06/2022', '19/06/2022', 0),
(110, 3, 'Ravi Kishan Pandey', 'MPMC', 'student', 7, '12/06/2022', '19/06/2022', 0),
(112, 6, 'Niraj Kumar ', 'MPMC', 'student', 7, '12/06/2022', '19/06/2022', 0),
(128, 1, 'Ajay Kumar', 'Artificial Intelligence', 'student', 7, '12/06/2022', '19/06/2022', 0),
(129, 2, 'Sukhit Kumar', 'Compiler Design', 'student', 7, '12/06/2022', '19/06/2022', 0),
(130, 4, 'Krishna Kumar', 'Mobile computing ', 'student', 7, '12/06/2022', '19/06/2022', 0),
(131, 5, 'Roushan Raj ', 'Internet Programming', 'student', 7, '12/06/2022', '19/06/2022', 0);

-- --------------------------------------------------------

--
-- Table structure for table `requestbook`
--

CREATE TABLE `requestbook` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `usertype` varchar(25) NOT NULL,
  `bookname` varchar(25) NOT NULL,
  `issuedays` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestbook`
--

INSERT INTO `requestbook` (`id`, `userid`, `bookid`, `username`, `usertype`, `bookname`, `issuedays`) VALUES
(69, 1, 18, 'Ajay Kumar', 'student', 'Principal of Management', '7'),
(71, 2, 2, 'Sukhit Kumar', 'student', 'Compiler Design', '7'),
(73, 3, 2, 'Ravi Kishan Pandey', 'student', 'Compiler Design', '7'),
(75, 4, 9, 'Krishna Kumar', 'student', 'Wireless Network', '7'),
(79, 6, 5, 'Niraj Kumar ', 'student', 'Internet Programming', '7'),
(82, 7, 14, 'Sagar Kumar Pandey', 'student', 'C programming ', '7'),
(84, 8, 10, 'Kamlesh Kumar Kohli', 'student', 'Transmission Lines and RF', '7');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `email` varchar(110) NOT NULL,
  `pass` varchar(110) NOT NULL,
  `type` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `name`, `email`, `pass`, `type`) VALUES
(1, 'Ajay Kumar', 'ajaykumar.cse2019@dscet.ac.in', 'ajay123', 'student'),
(2, 'Sukhit Kumar', 'sukhitkumar.cse2019@dscet.ac.in', 'sukhit123', 'student'),
(3, 'Ravi Kishan Pandey', 'ravikishanpandey.cse2019@dscet.ac.in', 'ravi123', 'student'),
(4, 'Krishna Kumar', 'krishnakumar.cse2019@dscet.ac.in', 'krishna123', 'student'),
(5, 'Roushan Raj ', 'roushanraj.cse2019@dscet.ac.in', 'roushan123', 'student'),
(6, 'Niraj Kumar ', 'nirajkumar.cse2019@dscet.ac.in', 'niraj123', 'student'),
(7, 'Sagar Kumar Pandey', 'sagarkumarpandey.cse2019@dscet.ac.in', 'sagar123', 'student'),
(8, 'Kamlesh Kumar Kohli', 'kamleshkumarkohli.cse2019@dscet.ac.in', 'kamlesh123', 'student'),
(9, 'Rishikesh Kumar', 'rishikeshkumar.cse2019@dscet.ac.in', 'rishikesh123', 'student'),
(10, 'Anuj Kumar', 'anujkumar.cse2019@dscet.ac.in', 'anuj123', 'student'),
(11, 'Vikash Kumar Ray', 'vikashkumarray.cse2019@dscet.ac.in', 'vikash123', 'student'),
(12, 'Saurav Kumar', 'sauravkumar.cse2019@dscet.ac.in', 'saurav123', 'student'),
(13, 'Hritik Roshan Tiwari', 'hritikroshantiwari.cse2019@dscet.ac.in', 'hritik123', 'student'),
(16, 'Prabhakaran M. V.', 'prabhakaranmv@dscet.ac.in', 'prabhakaran123', 'teacher'),
(17, 'P.Malathi', 'pmalathi@dscet.ac.in', 'malathi123', 'teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_fk` (`userid`);

--
-- Indexes for table `requestbook`
--
ALTER TABLE `requestbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_fk_book` (`bookid`),
  ADD KEY `pk_fk_users` (`userid`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `issuebook`
--
ALTER TABLE `issuebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `requestbook`
--
ALTER TABLE `requestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




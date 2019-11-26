-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2019 at 04:43 PM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(11, 'Luksemburga            '),
(12, 'Vācija              '),
(13, 'Krievija                 '),
(14, 'Francija          '),
(15, 'Lielbritānija         ');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL,
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(1, 1, 'Eiropas depeskrāpji', 'Jānis Bērziņš', '', '2019-10-09', 'architecture-2083687_640 (1).jpg', 'Jāteic gan, ka Eiropa nav debesskrāpju kontinents – vairums augstceltņu nemaz nevar konkurēt ar tām ēkām, kas slejas ASV, Āzijas vai Apvienoto Arābu Emirātu zemēs. Kaut arī šeit ēkas mākoņus sveic tikai retajās pilsētās, tomēr nu Eiropai būs jauns debesskrāpju rekordists – ēka Sanktpēterburgā, Krievijā.\r\nSanktpēterburgā runas par “Gazprom” torni ilgst nu jau vairāk nekā dekādi – milzīgo ēku bija plānots būvēt jau 2006. gadā, taču tolaik ēkas plānotāji saskārās ar pamatīgu vietējo iedzīvotāju neapmierinātību. Daudzi apgalvoja, ka modernā būve sabojās vēsturisko Sanktpēterburgas ainavu – ne velti vecpilsēta ir ierindota UNESCO pasaules kultūras mantojuma sarakstā. Pēc neskaitāmām debatēm un kašķiem Sanktpēterburga tika iekļauta Pasaules 100 apdraudēto vietu sarakstā, tāpēc “Gazprom” labprātīgi atmeta izredzētajai vietai ar roku. Pēc tam kompānija izvēlējās būvniecības vietu Lakhtas rajonā, kas atrodas vien astoņu kilometru attālumā no vecpilsētas.', 'asv, debeskrāpju, kontinents, Krievijā', 11, 'draft', 1),
(2, 2, 'Ofisu interjers', 'Lelde Vanaga', '', '2019-10-08', 'carpet-clean-design-245219.jpg', 'Mūsdienās ir vispāratzīts, ka apdomāts un ērts birojs nosaka ne tikai veiksmi, bet arī ir svarīgs jebkura uzņēmuma, neatkarīgi no tā darbības sfēras, priekšstata elements. Tomēr, neņemot vērā to, kā attīstās dizaineru idejas un izpratne par ērtībām, priekšstats par tipisku biroju paliek nemainīgs. Citiem vārdiem sakot, sarežģītajā biroja ierīkošanas mākslā ir dažādas tendences un virzieni, un dažu vecums sasniedz jau ne vienu vien gadsimtu.', 'sfēras, elements, belinda', 1, 'draft', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 11:25 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sweet_sound_musiq`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(12) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'Philander', 'Philander');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `artist_id` int(12) NOT NULL,
  `artist_name` varchar(100) NOT NULL,
  `artist_smart_url` varchar(100) NOT NULL,
  `artist_bio` text NOT NULL,
  `artist_image` varchar(200) NOT NULL,
  `artist_page_views` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `musiq`
--

CREATE TABLE `musiq` (
  `musiq_id` int(12) NOT NULL,
  `artist_id` int(12) NOT NULL,
  `musiq_type` varchar(200) NOT NULL,
  `musiq_title` varchar(200) NOT NULL,
  `musiq_featured_artist` varchar(250) DEFAULT 'none',
  `musiq_smart_url` varchar(200) NOT NULL,
  `musiq_genre` varchar(100) NOT NULL,
  `musiq_coverart` varchar(200) NOT NULL,
  `musiq_file` varchar(200) NOT NULL,
  `musiq_release_date` date NOT NULL,
  `active_yn` smallint(1) NOT NULL DEFAULT 0,
  `musiq_page_views` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `musiq_links`
--

CREATE TABLE `musiq_links` (
  `link_id` int(12) NOT NULL,
  `musiq_id` int(12) NOT NULL,
  `link_whatsapp` varchar(200) NOT NULL,
  `link_slikouronlife` varchar(200) NOT NULL,
  `link_mediafire` varchar(250) NOT NULL,
  `link_spotify` varchar(200) NOT NULL,
  `link_youtube` varchar(200) NOT NULL,
  `link_audiomack` varchar(200) NOT NULL,
  `link_applemusic` varchar(200) NOT NULL,
  `link_deezer` varchar(200) NOT NULL,
  `link_soundcloud` varchar(200) NOT NULL,
  `link_amazonmusic` varchar(200) NOT NULL,
  `link_youtubemusic` varchar(250) NOT NULL,
  `link_itunes` varchar(250) NOT NULL,
  `pre_save_spotify` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `playlist_id` int(12) NOT NULL,
  `playlist_title` varchar(250) NOT NULL,
  `playlist_smart_url` varchar(250) NOT NULL,
  `playlist_musiq_ids` varchar(250) NOT NULL,
  `playlist_coverart` varchar(250) NOT NULL,
  `playlist_about` varchar(250) NOT NULL,
  `playlist_date` date NOT NULL DEFAULT current_timestamp(),
  `playlist_page_views` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_media_links`
--

CREATE TABLE `social_media_links` (
  `sml_id` int(12) NOT NULL,
  `artist_id` int(12) NOT NULL,
  `sml_whatsapp` varchar(200) NOT NULL,
  `sml_facebook` varchar(200) NOT NULL,
  `sml_twitter` varchar(200) NOT NULL,
  `sml_instagram` varchar(200) NOT NULL,
  `sml_youtube` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `musiq`
--
ALTER TABLE `musiq`
  ADD PRIMARY KEY (`musiq_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `musiq_links`
--
ALTER TABLE `musiq_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `musiq_id` (`musiq_id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`playlist_id`);

--
-- Indexes for table `social_media_links`
--
ALTER TABLE `social_media_links`
  ADD PRIMARY KEY (`sml_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `artist_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `musiq`
--
ALTER TABLE `musiq`
  MODIFY `musiq_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `musiq_links`
--
ALTER TABLE `musiq_links`
  MODIFY `link_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `playlist_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media_links`
--
ALTER TABLE `social_media_links`
  MODIFY `sml_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `musiq`
--
ALTER TABLE `musiq`
  ADD CONSTRAINT `musiq_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`) ON DELETE CASCADE;

--
-- Constraints for table `musiq_links`
--
ALTER TABLE `musiq_links`
  ADD CONSTRAINT `link_ibfk_1` FOREIGN KEY (`musiq_id`) REFERENCES `musiq` (`musiq_id`) ON DELETE CASCADE;

--
-- Constraints for table `social_media_links`
--
ALTER TABLE `social_media_links`
  ADD CONSTRAINT `sml_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

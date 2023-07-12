SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+02:00";

--
-- Database: `sweet_sound_musiq_db`
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
    `artist_page_views` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- ----------------------------------------------------------

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
    `active_yn` smallint(1) DEFAULT '0' NOT NULL,
    `musiq_page_views` bigint(20) DEFAULT '0' NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- ----------------------------------------------------------

--
-- Table structure for table `musiq_links`
--

CREATE TABLE `musiq_links` (
    `link_id` int(12) NOT NULL,
    `musiq_id` int(12) NOT NULL,
    `link_slikouronlife` varchar(200) NOT NULL,
    `link_whatsapp` varchar(200) NOT NULL,
    `link_spotify` varchar(200) NOT NULL,
    `link_youtube` varchar(200) NOT NULL,
    `link_audiomack` varchar(200) NOT NULL,
    `link_applemusic` varchar(200) NOT NULL,
    `link_deezer` varchar(200) NOT NULL,
    `link_soundcloud` varchar(200) NOT NULL,
    `link_mediafire` varchar(200) NOT NULL,
    `link_youtubemusic` varchar(200) NOT NULL,
    `link_amazonmusic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------------------------------------------------------------------------------------------

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
-- Indexes for table `social_media_links`
--
ALTER TABLE `social_media_links`
    ADD PRIMARY KEY (`sml_id`),
    ADD KEY `artist_id` (`artist_id`);

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

-- ----------------------------------------------------------------------------------------------------------------

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
    MODIFY `admin_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
    MODIFY `artist_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `musiq`
--
ALTER TABLE `musiq`
    MODIFY `musiq_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `social_media_links`
--
ALTER TABLE `social_media_links`
    MODIFY `sml_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `musiq_links`
--
ALTER TABLE `musiq_links`
    MODIFY `link_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- ----------------------------------------------------------------------------------------------------------------

--
-- Constraints for table `social_media_links`
--
ALTER TABLE `social_media_links`
    ADD CONSTRAINT `sml_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`) ON DELETE CASCADE;

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
-- Dumping data for table `artists`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `artist_bio`, `artist_image`) VALUES
(1, 'Aureiiy Beeze', 'Rapper - Songwriter - Producer', 'aureiiy-beeze.png'),
(2, 'Buven Thepoet', 'Poet', 'buven-thepoet.png'),
(3, 'Deeniey Daniels', 'Poet', 'deeniey-daniels.png'),
(4, 'J-Lex', 'Rapper - Songwriter', 'j-lex.png'),
(5, 'Kaity Lander', 'Singer - Songwriter', 'kaity-lander.png'),
(6, 'Karabo', 'Singer - Songwriter', 'karabo.png'),
(7, 'King Thyra', 'Rapper - Singer - Songwriter', 'king-thyra.png'),
(8, 'Lula Creez', 'Singer - Rapper - Songwriter', 'lula-creez.png'),
(9, 'PhiCol', 'Rapper - Songwriter', 'phicol.png'),
(10, 'PhiLander', 'Rapper - Songwriter - Producer', 'philander.png'),
(11, 'Pine', 'Poet', 'pine.png'),
(12, 'Scholtz GodMc', 'Rapper - Songwriter - Producer', 'scholtz-godmc.png'),
(13, 'Starrcy Envy', 'Rapper - Songwriter', 'starrcy-envy.png'),
(14, 'Starvi', 'Rapper - Songwriter', 'starvi.png'),
(15, 'Sweet Sound Musiq', 'Sweet Sound Musiq record label collective artists', 'ssm.png'),
(16, 'Young Stars Fam', 'Rapper - Singer - Songwriter', 'ysf.png');

-- ----------------------------------------------------------

--
-- Dumping data for table `social_media_links`
--

INSERT INTO `social_media_link` (`sml_id`, `artist_id`, `sml_whatsapp`, `sml_facebook`, `sml_twitter`, `sml_instagram`, `sml_youtube`) VALUES
(1, 1, '', '', '', '', ''),
(2, 2, '', '', '', '', ''),
(3, 3, '', '', '', '', ''),
(4, 4, '', '', '', '', ''),
(5, 5, '', '', '', '', ''),
(6, 6, '', '', '', '', ''),
(7, 7, '', '', '', '', ''),
(8, 8, '', '', '', '', ''),
(9, 9, '', '', '', '', ''),
(10, 10, '', '', '', '', ''),
(11, 11, '', '', '', '', ''),
(12, 12, '', '', '', '', ''),
(13, 13, '', '', '', '', ''),
(14, 14, '', '', '', '', ''),
(15, 15, '', 'https://facebook.com/SweetSoundFamily', 'https://twitter.com/sweetsoundfam', 'https://instagram.com/sweetsoundfam', 'https://www.youtube.com/channel/UCs9qpngdF5FwO26i27NwGOQ'),
(16, 16, '', '', '', '', '');

-- ----------------------------------------------------------

--
-- Dumping data for table `musiq`
--

INSERT INTO `musiq` (`musiq_id`, `artist_id`, `musiq_type`, `musiq_title`, `musiq_featured_artist`, `musiq_title_slug`, `musiq_genre`, `musiq_coverart`, `musiq_file`, `musiq_release_date`, `musiq_page_views`) VALUES
(1, 15, 'single', 'King Thyra', 'PhiLander, Scholtz GodMc, Aureiiy Beeze, Lula Creez', 'KingThyra', 'Hip-Hop', 'ssm-king-thyra.jpg', '', NOW(), 0),
(2, 1, 'single', 'Let It Go', 'GMS, Casino X', 'LetItGo', 'Hip-Hop', 'aureiiy-let-it-go.jpg', '', NOW(), 0),
(3, 16, 'single', 'Thank You Mama', 'PhiLander, Stirky Rox', 'ThankYouMama', 'Hip-Hop', 'ysf-thank-you-mama.jpg', '', NOW(), 0),
(4, 15, 'single', 'Me Myself and I', 'Legendary, Starvi, PhiLander, LoveDelia, Scholtz GodMc,', 'MeMyselfandI', 'Hip-Hop/Rap', 'ssm-me-myself-and-i.jpg', '', NOW(), 0),
(5, 2, 'single', 'Covid-19', '', 'Covid19', 'Poem', 'buven-covid.jpg', '', NOW(), 0),
(6, 2, 'single', 'I Told You', '', 'IToldYou', 'Poem', 'buven-i-told-you.jpg', '', NOW(), 0),
(7, 7, 'album', 'When Pluto Was A Planet', '', 'WPWP', 'Hip-Hop', 'thyra-wpwp-ep.jpg', '', NOW(), 0),
(8, 1, 'album', 'Generosity Of A Legend', '', 'GOAL', 'Hip-Hop', 'aureiiy-goal-ep.jpg', '', NOW(), 0),
(9, 8, 'single', 'Superwoman', '', 'Superwoman', 'Hip-Hop/R&B', 'lula-superwoman.jpg', '', NOW(), 0),
(10, 14, 'single', 'Came To Win', 'Revelations, PhiLander', 'CameToWin', 'Hip-Hop', 'ssm-came-to-win.jpg', '', NOW(), 0),
(11, 10, 'single', 'God Has Risen', 'Pheladi', 'GodHasRisen', 'Hip-Hop/Gospel', 'philander-god-has-risen.jpg', '', NOW(), 0),
(12, 8, 'single', 'Grow Up', 'Bleezy Ree', 'GrowUp', 'Hip-Hop/R&B', 'lula-grow-up.jpg', '', NOW(), 0),
(13, 16, 'single', 'Meant To Be', 'Ntebe', 'MeantToBe', 'Hip-Hop/R&B', 'ysf-meant-to-be.jpg', '', NOW(), 0),
(14, 11, 'single', 'O Ntlogetse', '', 'ONtlogetse', 'Poem', 'pine-o-ntlogetse.jpg', '', NOW(), 0),
(15, 9, 'single', 'Your Way', 'PhiLander', 'YourWay', 'Hip-Hop', 'phicol-your-way.jpg', '', NOW(), 0),
(16, 15, 'single', 'Failed', 'LoveDelia', 'Failed', 'Hip-Hop', 'ssm-failed.jpg', '', NOW(), 0),
(17, 15, 'single', 'What Im Made Of', 'Kay Ano, Real T', 'WIMO', 'Hip-Hop', 'ssm-wimo.jpg', '', NOW(), 0),
(18, 16, 'album', 'Our Journey', '', 'OurJourney', 'Hip-Hop', 'ysf-our-journey-ep.jpg', '', NOW(), 0),
(19, 15, 'single', 'Make Em Proud', 'Lula Creez, Scholtz GodMc, Kay Ano, Starrcy Envy, Legendary, Aureiiy Beeze, King Thyra, PhiLander', 'MakeEmProud', 'Hip-Hop/R&B', 'ssm-make-em-proud.jpg', '', NOW(), 0),
(20, 2, 'single', 'June 16', '', 'June16', 'Poem', 'buven-june-16.jpg', '', NOW(), 0),
(21, 2, 'single', 'Yehovha', '', 'Yehovha', 'Poem', 'buven-yehovha.jpg', '', NOW(), 0),
(22, 2, 'single', 'Ndhavuko', '', 'Ndhavuko', 'Poem', 'buven-ndhavuko.jpg', '', NOW(), 0),
(23, 12, 'album', 'The Intruder', '', 'TheIntruder', 'Hip-Hop/Rap', 'scholtz-the-intruder-mixtape.jpg', '', NOW(), 0),
(24, 14, 'album', 'Kias To Kudos', '', 'KiasToKudos', 'Hip-Hop/Trap', 'starvi-kias-to-kudos-ep.jpg', '', NOW(), 0),
(25, 15, 'single', 'Mama Told Me', 'Starvi, Scholtz GodMc, PhiLander, Aureiiy Beeze', 'MamaToldMe', 'Hip-Hop', 'ssm-mama-told-me.jpg', '', NOW(), 0),
(26, 16, 'single', 'Girl', 'Shabah, Small A, Mr Luu, Ntebe', 'Girl', 'Hip-Hop', 'ysf-girl.jpg', '', NOW(), 0),
(27, 2, 'single', 'Goza', '', 'Goza', 'Poem', 'buven-goza.jpg', '', NOW(), 0),
(28, 12, 'album', 'New Beginnings', '', 'NewBeginnings', 'Hip-Hop/Rap', 'scholtz-new-beginnings-ep.jpg', '', NOW(), 0),
(29, 7, 'album', 'Mess.I.Are Vol. 1', '', 'MessIAre1', 'R&B/Soul', 'thyra-mess-i-are-1-ep.jpg', '', NOW(), 0),
(30, 15, 'single', 'Pain', 'Lula Creez, Scholtz GodMc, PhiLander, Aureiiy Beeze', 'Pain', 'Hip-Hop', 'ssm-pain.jpg', '', NOW(), 0),
(31, 1, 'single', 'Me To You', 'GMS', 'MeToYou', 'Hip-Hop', 'aureiiy-me-to-you.jpg', '', NOW(), 0),
(32, 2, 'single', 'Renewal Of Energy', '', 'RenewalOfEnergy', 'Poem', 'buven-renewal-of-energy.jpg', '', NOW(), 0),
(33, 2, 'single', 'Makatla', '', 'Makatla', 'Poem', 'buven-makatla.jpg', '', NOW(), 0),
(34, 2, 'single', 'An Old Doll', '', 'AnOldDoll', 'Poem', 'buven-an-old-doll.jpg', '', NOW(), 0),
(35, 15, 'single', 'Vumani Bo!', 'Legendary, Rrangwane', 'VumanoBo', 'Hip-Hop', 'ssm-vumani-bo.jpg', '', NOW(), 0),
(36, 7, 'album', 'Mess.I.Are Vol. 2', '', 'MessIAre2', 'R&B/Soul', 'thyra-mess-i-are-2-ep.jpg', '', NOW(), 0),
(37, 2, 'single', 'Khombo Ku Ti Lavela', '', 'KhomboKutiLavela', 'Poem', 'buven-khombo-kuti-lavela.jpg', '', NOW(), 0),
(38, 7, 'album', 'Mess.I.Are Vol. 3', '', 'MessIAre3', 'R&B/Soul', 'thyra-mess-i-are-3-ep.jpg', '', NOW(), 0),
(39, 4, 'single', 'She Said', 'Lula Creez', 'SheSaid', 'Hip-Hop/R&B', 'lex-she-said.jpg', '', NOW(), 0),
(40, 1, 'single', 'Zaka', 'Young Stars Fam', 'Zaka', 'Hip-Hop', 'aureiiy-zaka.jpg', '', NOW(), 0),
(41, 13, 'single', 'Not Okay', 'Lula Creez', 'NotOkay', 'Hip-Hop', 'starrcy-not-okay.jpg', '', NOW(), 0),
(42, 15, 'single', 'Falling For You', 'PhiLander, Starvi, Kaity Lander, Lula Creez', 'FallingForYou', 'Hip-Hop/R&B', 'ssm-falling-for-you.jpg', '', NOW(), 0),
(43, 5, 'single', 'Its Raining', 'Young Stars Fam', 'ItsRaining', 'Afrobeat', 'kaity-its-raining.jpg', '', NOW(), 0),
(44, 16, 'single', 'Monate Kings', '', 'MonateKings', 'Amapiano', 'ysf-monate-kings.jpg', '', NOW(), 0);

-- ----------------------------------------------------------

--
-- Dumping data for table `musiq_links`
--

INSERT INTO `musiq_link` (`link_id`, `musiq_id`, `link_slikouronlife`, `link_whatsapp`, `link_spotify`, `link_youtube`, `link_audiomack`, `link_applemusic`, `link_deezer`, `link_soundcloud`, `link_amazonmusic`) VALUES
(1, 1, 'https://slikouronlife.co.za/download-song/220740', '', 'https://open.spotify.com/track/2Ueh3Qyv3kkljW1VTyuSAm', 'https://youtube.com/watch?v=k3XoiPIe9Bs', 'https://audiomack.com/sweet-sound-musiq-1/song/king-thyra', 'https://music.apple.com/za/album/king-thyra-feat-philander-scholtz-godmc-aureiiy-beeze/1512805549?i=1512805558&app=music', '', 'https://soundcloud.com/sweetsoundmusiq/king-thyra?id=855277426', ''),
(2, 2, 'https://slikouronlife.co.za/download-song/220743', '', 'https://open.spotify.com/track/3l9dZTajQVrkNkK0KRD4UW', 'https://www.youtube.com/watch?v=hPMzHoZRWLo', 'https://audiomack.com/sweet-sound-musiq-1/song/let-it-go-feat-gms-casino-x', 'https://music.apple.com/za/album/let-it-go-feat-aureiiy-beeze-gms-casino-x/1513447204?i=1513447601&app=music', 'https://www.deezer.com/track/961617232', '', ''),
(3, 3, 'https://slikouronlife.co.za/download-song/220744', '', 'https://open.spotify.com/track/642MncKqZiO2aExLBEQGf7', 'https://youtube.com/watch?v=AlVY6IRLnXY', 'https://audiomack.com/sweet-sound-musiq-1/song/thank-you-mama-feat-philander-stirky-rox', 'https://music.apple.com/za/album/thank-you-mama-feat-young-stars-philander-stirky-rox/1513429502?i=1513429642&app=music', 'https://www.deezer.com/track/961540532', '', 'https://music.amazon.com/albums/B088MLS9JR?trackAsin=B088MMKYPY'),
(4, 4, 'https://slikouronlife.co.za/download-song/220745', '', 'https://open.spotify.com/track/0vstnWWIZaCZu9Vhf9Qmft', 'https://audiomack.com/sweet-sound-musiq-1/song/me-myself-i-remix', 'https://music.apple.com/za/album/me-myself-i-feat-legendary-starvi-philander-lovedelia/1513448143?i=1513448154&app=music', '', 'https://www.deezer.com/track/961647622', 'https://soundcloud.com/sweet-sound-musiq/me-myself-i?id=601349679', 'https://music.amazon.com/albums/B088N6YLWW?trackAsin=B088NJM41G'),
(5, 5, '', 'https://wa.me/+27749214394/?text=Hi%20', 'https://open.spotify.com/track/2Vg5x9KTGcm0H2Wxh0Bcwu', 'https://youtube.com/watch?v=z9GYqbYl3as', 'https://audiomack.com/sweet-sound-musiq-1/song/covid-19', 'https://music.apple.com/za/album/covid-19-feat-buven-thepoet/1516016241?i=1516016242&app=music', 'https://www.deezer.com/track/975318652', '', 'https://music.amazon.com/albums/B089DV3MNQ?trackAsin=B089DT5GFZ'),
(6, 6, '', '', 'https://open.spotify.com/track/4ym3REB8eB7gyGuieAJQoP', 'https://www.youtube.com/watch?v=dKcYARfipaw', 'https://audiomack.com/sweet-sound-musiq-1/song/i-told-you', 'https://music.apple.com/za/album/i-told-you-feat-buven-thepoet/1516007404?i=1516007681&app=music', 'https://www.deezer.com/track/975268552', '', 'https://music.amazon.com/albums/B089DR6KYR?trackAsin=B089DS3X86'),
(7, 7, 'https://www.mediafire.com/file/i9sezibhlzvwwbe/King_Thyra_-_When_Pluto_Was_A_Planet.zip/file', '', 'https://open.spotify.com/album/6yMQe7Dx1yLngcQN4nS4u3', 'https://youtube.com/playlist?list=OLAK5uy_nN6KBwej_oZoTVRNjczfsGiINF6L92pbI', 'https://audiomack.com/king-thyra/album/when-pluto-was-a-planet-ep-3', 'https://music.apple.com/za/album/when-pluto-was-a-planet-ep/1521789187?app=music', 'https://www.deezer.com/album/158270432', '', 'https://music.amazon.com/albums/B08C7J9Y7B'),
(8, 8, 'https://www.mediafire.com/file/o3mk4l5ys1rdq23/Aureiiy_Beeze_-_GOAL_%2528Generosity_Of_A_Legend%2529.zip/file', '', 'https://open.spotify.com/album/6iUxOyZZaUSpoWlcAA3agB', 'https://youtube.com/playlist?list=OLAK5uy_m9smp6alNHlAA1hZ2CGPJRcKGQbypVfYc', 'https://audiomack.com/sweet-sound-musiq-1/album/goal-generosity-of-a-legend', 'https://music.apple.com/za/album/generosity-of-a-legend/1522295482?app=music', 'https://www.deezer.com/album/158984652', 'https://soundcloud.com/sweetsoundmusiq/sets/goal-generosity-of-a-legend', 'https://music.amazon.com/albums/B08CF3NWZP'),
(9, 9, 'https://slikouronlife.co.za/download-song/220746', '', 'https://open.spotify.com/track/4oOxnieRVlOER0HohTmcuW', 'https://youtube.com/watch?v=3CMTOV6hrw4', 'https://audiomack.com/sweet-sound-musiq-1/song/superwoman', 'https://music.apple.com/za/album/superwoman-feat-lula-creez/1522725273?i=1522725274&app=music', 'https://www.deezer.com/track/1015773012', 'https://soundcloud.com/sweetsoundmusiq/lula-creez-superwoman', 'https://music.amazon.com/albums/B08CM86262?trackAsin=B08CMB3C62'),
(10, 10, 'https://slikouronlife.co.za/download-song/220747', '', 'https://open.spotify.com/track/5K8rZKQH97sykACqPTD75l', 'https://www.youtube.com/watch?v=5rnBv2keePg', 'https://audiomack.com/sweet-sound-musiq-1/song/came-to-win', 'https://music.apple.com/za/album/came-to-win-feat-revelations-philander/1522725876?i=1522725877&app=music', 'https://www.deezer.com/track/1015775122', 'https://soundcloud.com/sweetsoundmusiq/came-to-win?id=855281344', 'https://music.amazon.com/albums/B08CMT4HQC?trackAsin=B08CMNR391'),
(11, 11, 'https://slikouronlife.co.za/download-song/220748', '', 'https://open.spotify.com/track/6m9jkqm5sVeNEGw73dS7zT', 'https://youtube.com/watch?v=guQ5iJHktWo', 'https://audiomack.com/sweet-sound-musiq-1/song/god-has-risen-feat-philander', 'https://music.apple.com/za/album/god-has-risen-feat-pheladi-philander/1522736956?i=1522736959&app=music', 'https://www.deezer.com/track/1015843032', '', 'https://music.amazon.com/albums/B08CMJ336J?trackAsin=B08CMG15K7'),
(12, 12, 'https://slikouronlife.co.za/download-song/220749', '', 'https://open.spotify.com/track/1dOL68uNNYHBgIKs9iWRrY', 'https://www.youtube.com/watch?v=kx9rgVJ0Bhc', 'https://audiomack.com/sweet-sound-musiq-1/song/grow-up-feat-bleezy-ree', 'https://music.apple.com/za/album/grow-up-feat-lula-creez-bleezy-ree/1522736848?i=1522736850&app=music', 'https://www.deezer.com/track/1015841472', 'https://soundcloud.com/sweetsoundmusiq/grow-up-feat-bleezy-ree?id=773188522', 'https://music.amazon.com/albums/B08CM7ZSC8?trackAsin=B08CMKQVR4'),
(13, 13, 'https://slikouronlife.co.za/download-song/220750', '', 'https://open.spotify.com/track/3leHgHeJHOTJ7pzgERN2yu', 'https://www.youtube.com/watch?v=I6ksBC9BnnQ', 'https://audiomack.com/sweet-sound-musiq-1/song/meant-to-be-unfinished-feat-ntebe-1', 'https://music.apple.com/za/album/meant-to-be-feat-young-stars-fam-ntebe/1522737074?i=1522737081&app=music', 'https://www.deezer.com/track/1015841012', '', 'https://music.amazon.com/albums/B08CMQ2DJN?trackAsin=B08CMLLVXT'),
(14, 14, '', '', 'https://open.spotify.com/track/54YSqRUWvRVVzOG6t44A7E', 'https://youtube.com/watch?v=tBfsbFCtOOc', 'https://audiomack.com/sweet-sound-musiq-1/song/o-ntlogetse-poem', 'https://music.apple.com/za/album/o-ntlogetse-feat-phillippine/1522737132?i=1522737136&app=music', 'https://www.deezer.com/track/1015841052', '', 'https://music.amazon.com/albums/B08CMN14L5?trackAsin=B08CMS5GNH'),
(15, 15, '', '', 'https://open.spotify.com/track/6DZgSoeXnbBC1kDlSXck4a', 'https://www.youtube.com/watch?v=9cqM3yag6nQ', 'https://audiomack.com/sweet-sound-musiq-1/song/what-im-made-of', 'https://music.apple.com/za/album/what-im-made-of-feat-kay-ano-real-t/1522736909?i=1522736912&app=music', 'https://www.deezer.com/track/1015841372', 'https://soundcloud.com/sweetsoundmusiq/what-im-made-of-feat-real-t?id=772642621', 'https://music.amazon.com/albums/B08CMD2KRR?trackAsin=B08CMNR1T5'),
(16, 16, 'https://slikouronlife.co.za/download-song/220751', '', 'https://open.spotify.com/track/1b7Pk1PchGxgopmoMibqcA', 'https://www.youtube.com/watch?v=vBcmZafb21M', 'https://audiomack.com/sweet-sound-musiq-1/song/your-way-feat-philander', 'https://music.apple.com/za/album/your-way-feat-phicol-philander/1522737175?i=1522737178&app=music', 'https://www.deezer.com/track/1015842052', '', 'https://music.amazon.com/albums/B08CMCRB8N?trackAsin=B08CMJ336M'),
(17, 17, '', '', 'https://open.spotify.com/track/5IrYQ1D2vTueHnJSFCr4P0', 'https://youtube.com/watch?v=Fwz-Xf03XTE', 'https://audiomack.com/sweet-sound-musiq-1/song/failed', 'https://music.apple.com/za/album/failed-feat-lovedelia/1522737430?i=1522737432&app=music', 'https://www.deezer.com/track/1015842262', '', 'https://music.amazon.com/albums/B08CMJBZ66?trackAsin=B08CMG85J8'),
(18, 18, 'https://www.mediafire.com/file/ofasv4u8byfz9j8/Young_Stars_-_Our_Journey_EP.zip/file', '', 'https://open.spotify.com/album/6i6ox3UQ14azjQYCIYG8tn', 'https://youtube.com/playlist?list=OLAK5uy_nAmdU_7g4k6a01mG84SodAbVdX-2V6vCE', 'https://audiomack.com/sweet-sound-musiq-1/album/our-journey', 'https://music.apple.com/za/album/our-journey/1527413883?app=music', 'https://www.deezer.com/album/166658072', 'https://soundcloud.com/sweetsoundmusiq/sets/our-journey', 'https://music.amazon.com/albums/B08FWTYG3J'),
(19, 19, 'https://slikouronlife.co.za/download-song/220752', '', 'https://open.spotify.com/track/3c5Xeb6LYwLOT3xKjcKgK4', 'https://youtube.com/watch?v=U2xfqzfW3-8', 'https://audiomack.com/sweet-sound-musiq-1/song/make-em-proud', 'https://music.apple.com/za/album/make-em-proud-feat-lula-creez-scholtz-godmc-kay-ano/1528039961?i=1528039965&app=music', 'https://www.deezer.com/track/1053423992', 'https://soundcloud.com/sweetsoundmusiq/make-em-proud?id=879601912', 'https://music.amazon.com/albums/B08G21WQTL?trackAsin=B08G1XL2LY'),
(20, 20, '', '', 'https://open.spotify.com/track/0x1btUvoW2XB0I3k0b6XEc', 'https://youtube.com/watch?v=O7geHNe_yQY', 'https://audiomack.com/sweet-sound-musiq-1/song/june-16', 'https://music.apple.com/za/album/june-16-feat-buven-thepoet/1532771420?i=1532771421&app=music', 'https://www.deezer.com/track/1087002602', '', 'https://music.amazon.com/albums/B08JNK349C?trackAsin=B08JNJMFXN'),
(21, 21, '', '', 'https://open.spotify.com/track/5cG8HNwThCoQ1Xb5CYPC0T', 'https://youtube.com/watch?v=TKAxoCDay80', 'https://audiomack.com/sweet-sound-musiq-1/song/yehova', 'https://music.apple.com/za/album/yehovha-feat-buven-thepoet/1532771397?i=1532771399&app=music', 'https://www.deezer.com/track/1086996362', '', 'https://music.amazon.com/albums/B08JNCZL34?trackAsin=B08JNJ95J5'),
(22, 22, '', '', 'https://open.spotify.com/track/0opuGxdu784kDp1xK3HFk5', 'https://youtube.com/watch?v=D9zYlYAPiC0', 'https://audiomack.com/sweet-sound-musiq-1/song/ndhavuko', 'https://music.apple.com/za/album/ndhavuko-feat-buven-thepoet/1532781077?i=1532781078&app=music', 'https://www.deezer.com/track/1087070702', '', 'https://music.amazon.com/albums/B08JPTW5KX?trackAsin=B08JPKSBD7'),
(23, 23, 'https://www.mediafire.com/file/v0xa45m906wycw0/Scholtz_GodMc_-The_Intruder.zip/file', '', 'https://open.spotify.com/album/1OMrGx5SYOo7gCfb1Y9KGs', 'https://youtube.com/playlist?list=OLAK5uy_nizmrqopCgi317FXfapugePbApBR_v1Ps', 'https://audiomack.com/sweet-sound-musiq-1/album/the-intruder', 'https://music.apple.com/za/album/the-intruder-single/1532780947?app=music', 'https://www.deezer.com/album/174810032', '', 'https://music.amazon.com/albums/B08JPCLSJF'),
(24, 24, 'https://www.mediafire.com/file/k81z6fxh6et1wyn/Starvi_-_Kias_To_Kudos.zip/file', '', 'https://open.spotify.com/album/3Xeh19Fl7pimBEO7hKmACp', 'https://youtube.com/playlist?list=OLAK5uy_mvSAFM2TpL3fpJOyxuJVeJ6nwmaQdRnu4', 'https://audiomack.com/sweet-sound-musiq-1/album/kias-to-kudos', 'https://music.apple.com/za/album/kias-to-kudos/1532781490?app=music', 'https://www.deezer.com/album/174805092', 'https://soundcloud.com/sweetsoundmusiq/sets/starvi-kias-to-kudos', 'https://music.amazon.com/albums/B08JP2RJ7X'),
(25, 25, 'https://slikouronlife.co.za/download-song/220753', '', 'https://open.spotify.com/track/67fYcS0jYSfB2Bkkwu63yn', 'https://youtube.com/watch?v=YJHG_HxE34g', 'https://audiomack.com/sweet-sound-musiq-1/song/mama-told-me', 'https://music.apple.com/za/album/mama-told-me-feat-starvi-scholtz-godmc-philander-aureiiy/1532781463?i=1532781464&app=music', 'https://www.deezer.com/track/1087059202', 'https://soundcloud.com/sweetsoundmusiq/mama-told-me-feat-starvi-scholtz-godmc-philander-aureiiy-beeze?id=899085919', 'https://music.amazon.com/albums/B08JPGXXPQ?trackAsin=B08JPR9WJ3'),
(26, 26, 'https://slikouronlife.co.za/download-song/220754', '', 'https://open.spotify.com/track/1HJn2KDAqEzrkiAVFjI9TG', 'https://www.youtube.com/watch?v=Fve0V0E1kN4', 'https://audiomack.com/sweet-sound-musiq-1/song/girl', 'https://music.apple.com/za/album/girl-feat-young-stars-fam-megga-small-a-mr-luu-ntebe/1535345309?i=1535345312&app=music', 'https://www.deezer.com/track/1105514362', 'https://soundcloud.com/sweetsoundmusiq/young-stars-fam-girl-feat-megga-small-a-mr-luu-ntebe?id=911843587', 'https://music.amazon.com/albums/B08LCMRV1G?trackAsin=B08LCMLPT3'),
(27, 27, '', '', 'https://open.spotify.com/track/29UubhxHkKvi9tQrfcxPMV', 'https://youtube.com/watch?v=GATvFcpJA7I', 'https://audiomack.com/sweet-sound-musiq-1/song/goza', 'https://music.apple.com/za/album/goza-feat-buven-thepoet/1535980074?i=1535980075&app=music', 'https://www.deezer.com/track/1110096362', '', 'https://music.amazon.com/albums/B08LTNNJ5J?trackAsin=B08LTPKMPC'),
(28, 28, 'https://www.mediafire.com/file/09qup8p0pikbhhx/Scholtz_GodMc_-_New_Beginnings.zip/file', '', 'https://open.spotify.com/album/6BHDm0TNNKNUDUAdV8oKfE', 'https://youtube.com/playlist?list=OLAK5uy_kp1PjjRSiPUWn3vKJUYjdeDviYJKjp5og', 'https://audiomack.com/sweet-sound-musiq-1/album/new-beginnings', 'https://music.apple.com/za/album/new-beginnings/1538303967?app=music', 'https://www.deezer.com/album/183292432', 'https://soundcloud.com/sweetsoundmusiq/sets/new-beginnings', 'https://music.amazon.com/albums/B08N4TGWQF'),
(29, 29, 'https://www.mediafire.com/file/3kfwz94fb0m8gl8/King_Thyra_-_Mess.I.Are_Vol._1.zip/file', '', 'https://open.spotify.com/album/3lYLgNgf77YAup4dZcgnIX', 'https://youtube.com/playlist?list=OLAK5uy_mRRCjCxNDxnE5gbmbuDIk9pYK-pRP_vNc', 'https://audiomack.com/king-thyra/album/messiare-vol-1-1', 'https://music.apple.com/za/album/mess-i-are-vol-1-single/1539336944?app=music', 'https://www.deezer.com/album/184937412', 'https://soundcloud.com/user-248485335/sets/messiare-vol-1', 'https://music.amazon.com/albums/B08ND9S4P4'),
(30, 30, 'https://slikouronlife.co.za/download-song/220755', '', 'https://open.spotify.com/track/2pFWNsllYbmbprLgQHI7Xr', 'https://www.youtube.com/watch?v=wBaikFuD--Y', 'https://audiomack.com/sweet-sound-musiq-1/song/pain-1', 'https://music.apple.com/za/album/pain-feat-lula-creez-scholtz-godmc-philander-aureiiy-beeze/1539478262?i=1539478263&app=music', 'https://www.deezer.com/track/1136373982', 'https://soundcloud.com/sweetsoundmusiq/pain-feat-lula-creez-scholtz-godmc-philander-aureiiy-beeze?id=925948111', 'https://music.amazon.com/albums/B08NJY6RF7?trackAsin=B08NJY3PPX'),
(31, 31, 'https://slikouronlife.co.za/download-song/220758', '', 'https://open.spotify.com/track/43hstzj6F2kYc1dlUwUEQj', 'https://www.youtube.com/watch?v=YJHG_HxE34g', 'https://audiomack.com/sweet-sound-musiq-1/song/me-to-you', 'https://music.apple.com/za/album/me-to-you-feat-aureiiy-beeze-gms/1539464007?i=1539464009&app=music', 'https://www.deezer.com/track/1136328372', 'https://soundcloud.com/sweetsoundmusiq/aureiiy-beeze-me-to-you-feat-gms?id=925947958', 'https://music.amazon.com/albums/B08NJNZ9WM?trackAsin=B08NJN6WJ9'),
(32, 32, '', '', 'https://open.spotify.com/track/0pUovRbkwvcSOpUtn1kssz', 'https://youtube.com/watch?v=VlCPZdDZLNI', 'https://audiomack.com/sweet-sound-musiq-1/song/renewal-of-energy', 'https://music.apple.com/za/album/renewal-of-energy-feat-buven-thepoet/1540764591?i=1540764592&app=music', 'https://www.deezer.com/track/1145323822', '', 'https://music.amazon.com/albums/B08NS48C27?trackAsin=B08NS3GYV9'),
(33, 33, '', '', 'https://open.spotify.com/track/0FIqeGSrvLFyR4beRWjT5Z', 'https://youtube.com/watch?v=IeXJVt21_Wc', 'https://audiomack.com/sweet-sound-musiq-1/song/makatla', 'https://music.apple.com/za/album/makatla-feat-buven-thepoet/1540828778?i=1540828779&app=music', 'https://www.deezer.com/track/1145675422', '', 'https://music.amazon.com/albums/B08NRJGW7Q?trackAsin=B08NRGVTDL'),
(34, 34, '', '', 'https://open.spotify.com/track/6SV33nEiM6Di6R2l3gBJQ9', 'https://www.youtube.com/watch?v=jjDGYcySVMU', 'https://audiomack.com/sweet-sound-musiq-1/song/an-old-doll', 'https://music.apple.com/za/album/an-old-doll-feat-buven-thepoet/1543279658?i=1543279660&app=music', 'https://www.deezer.com/track/1164998022', '', 'https://music.amazon.com/albums/B08PNCT871?trackAsin=B08PNN8J8F'),
(35, 35, '', '', 'https://open.spotify.com/track/7AsdBqTNYkwChKHx2gd9TF', 'https://youtube.com/watch?v=gTxJF7_X900', 'https://audiomack.com/sweet-sound-musiq-1/song/vumani-bo', 'https://music.apple.com/za/album/vumani-bo-feat-legendary-rrangwane/1542423164?i=1542423166&app=music', 'https://www.deezer.com/track/1157655182', 'https://soundcloud.com/sweetsoundmusiq/vumani-bo?id=795443668', 'https://music.amazon.com/albums/B08P8291SJ?trackAsin=B08P83WH1B'),
(36, 36, 'https://www.mediafire.com/file/ipgpytuk4fbu48w/King_Thyra_-_Mess.I.Are_Vol._2.zip/file', '', 'https://open.spotify.com/album/3Hl9QEWWGaW8VpTM2lcOBD', 'https://youtube.com/playlist?list=OLAK5uy_k-0lsMLZwYgz1XDBxmarhL0NYUhrlrNdo', 'https://audiomack.com/king-thyra/album/messiare-vol-2', 'https://music.apple.com/za/album/mess-i-are-vol-2-ep/1545446398?app=music', 'https://www.deezer.com/album/194102972', 'https://soundcloud.com/user-248485335/sets/messiare-vol-2', 'https://music.amazon.com/albums/B08QYMHXCR'),
(37, 37, '', '', 'https://open.spotify.com/track/51yTyOufGT7XT9XeHJWUs8', 'https://youtube.com/watch?v=Llup1g7JotM', 'https://audiomack.com/sweet-sound-musiq-1/song/khombo-ku-ti-lavela', 'https://music.apple.com/za/album/khombo-ku-ti-lavela-feat-buven-thepoet/1545446701?i=1545446702&app=music', 'https://www.deezer.com/track/1181978822', '', 'https://music.amazon.com/albums/B08QXXZNQ2?trackAsin=B08QXSX2Y9'),
(38, 38, 'https://www.mediafire.com/file/sgct2rr1igkljp7/King_Thyra_-_Mess.I.Are_Vol._3.zip/file', '', 'https://open.spotify.com/album/61iaQSYyUyjdIzF7mBSSFL', 'https://youtube.com/playlist?list=OLAK5uy_mcNKWvZbhLLRmb3rmb83kJL76E_dcztqE', 'https://audiomack.com/king-thyra/album/messiare-vol-3', 'https://music.apple.com/za/album/mess-i-are-vol-3-ep/1548072552?app=music', 'https://www.deezer.com/album/198555722', 'https://soundcloud.com/user-248485335/sets/messiare-vol-3', 'https://music.amazon.com/albums/B08SHV6PP9'),
(39, 39, 'https://slikouronlife.co.za/download-song/226828', '', 'https://open.spotify.com/track/7BVGPejFQiw2gklMSBoLtn', 'https://www.youtube.com/watch?v=DecuFlq83vI', 'https://audiomack.com/sweet-sound-musiq-1/song/she-said', 'https://music.apple.com/za/album/she-said-feat-j-lex-lula-creez/1558349764?i=1558349946&app=music', 'https://www.deezer.com/track/1274944722', '', 'https://music.amazon.com/albums/B08YXTHQTS?trackAsin=B08YXT4TJD'),
(40, 40, 'https://slikouronlife.co.za/download-song/226827', '', 'https://open.spotify.com/track/3fRK5AjnUX6lph5e8rJue0', 'https://youtube.com/watch?v=db3mTla6qp8', 'https://audiomack.com/sweet-sound-musiq-1/song/zaka', 'https://music.apple.com/za/album/zaka-feat-aureiiy-beeze-young-stars-fam/1558349615?i=1558350037&app=music', 'https://www.deezer.com/track/1274944032', '', 'https://music.amazon.com/albums/B08YXVDFJG?trackAsin=B08YXVC32F'),
(41, 41, 'https://slikouronlife.co.za/download-song/226826', '', 'https://open.spotify.com/track/7LbuwftoOi1LkQ38WuhUar', 'https://www.youtube.com/watch?v=gcOEVtJqNmE', 'https://audiomack.com/sweet-sound-musiq-1/song/not-okay', 'https://music.apple.com/za/album/not-okay-feat-starrcy-envy-lula-creez/1558346165?i=1558346436&app=music', 'https://www.deezer.com/track/1274916392', '', 'https://music.amazon.com/albums/B08YXVQPNJ?trackAsin=B08YXTFBS9'),
(42, 42, 'https://slikouronlife.co.za/download-song/226825', '', 'https://open.spotify.com/track/4ojYh7mFsJt7BAZsY1kPv8', 'https://youtube.com/watch?v=wrrcRo-VuIU', 'https://audiomack.com/sweet-sound-musiq-1/song/falling-for-you', 'https://music.apple.com/za/album/falling-for-you-feat-philander-starvi-kaity-lander/1558353690?i=1558353692&app=music', 'https://www.deezer.com/track/1274980142', '', 'https://music.amazon.com/albums/B08YXXLX4G?trackAsin=B08YXVZ1V7'),
(43, 43, 'https://slikouronlife.co.za/download-song/226824', '', 'https://open.spotify.com/track/76veMg3kBmnt9RJeGNttrP', 'https://youtube.com/watch?v=95tW2FDWpCU', 'https://audiomack.com/sweet-sound-musiq-1/song/its-raining', 'https://music.apple.com/za/album/its-raining-feat-kaity-lander-shabah-young-kido-mr-luu/1558351949?i=1558351952&app=music', 'https://www.deezer.com/track/1274943592', '', 'https://music.amazon.com/albums/B08YXVB42P?trackAsin=B08YXT47LR'),
(44, 44, 'https://slikouronlife.co.za/download-song/226823', '', 'https://open.spotify.com/track/27AH2LN7F0mpVJoDXksJK4', 'https://youtube.com/watch?v=PSSpOMv7F64', 'https://audiomack.com/sweet-sound-musiq-1/song/monate-kings', 'https://music.apple.com/za/album/monate-kings-feat-young-stars-fam/1558354066?i=1558354067&app=music', 'https://www.deezer.com/track/1274980612', '', 'https://music.amazon.com/albums/B08YXWW7HT?trackAsin=B08YXV8F8S');

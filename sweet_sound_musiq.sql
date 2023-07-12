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

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'SSM-admin', 'SSMusiq-17/22');

-- --------------------------------------------------------

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `musiq_id`, `number_of_songs`, `songs_added`, `links_added`) VALUES
(1, 4, 14, 1, 1),
(2, 19, 7, 1, NULL),
(3, 50, 6, 1, NULL),
(4, 71, 8, 1, NULL);

-- --------------------------------------------------------

--
-- Dumping data for table `album_single`
--

INSERT INTO `album_single` (`album_single_id`, `album_id`, `musiq_id`) VALUES
(1, 1, 5),
(2, 1, 6),
(3, 1, 7),
(4, 1, 8),
(5, 1, 9),
(6, 1, 10),
(7, 1, 11),
(8, 1, 12),
(9, 1, 13),
(10, 1, 14),
(11, 1, 15),
(12, 1, 16),
(13, 1, 17),
(14, 1, 18),
(15, 2, 20),
(16, 2, 21),
(17, 2, 22),
(18, 2, 23),
(19, 2, 24),
(20, 2, 25),
(21, 2, 26);

-- --------------------------------------------------------

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `artist_name_slug`, `artist_image`, `artist_page_views`, `artist_bio`) VALUES
(1, 'Starvi', 'Starvi', 'starvi.png', 1, ''),
(2, 'Scholtz GodMc', 'ScholtzGodMc', 'scholtzgodmc.png', 2, ''),
(3, 'Young Stars Fam', 'YSF', 'ysf.JPG', 6, ''),
(4, 'Allyee', 'Allyee', 'allyee.JPG', 0, ''),
(5, 'PhiLander', 'PhiLander', 'philander.JPG', 1, ''),
(6, 'PhiLander & PhiCol', 'PhiLanderPhiCol', 'philanderphicol.JPG', 0, ''),
(7, 'Aureiiy Beeze', 'AureiiyBeeze', 'aureiiybeeze.JPG', 0, ''),
(8, 'PhiCol', 'PhiCol', 'phicol.JPG', 0, ''),
(9, 'Lula Creez', 'LulaCreez', 'lulacreez.JPG', 0, ''),
(10, 'J Lex', 'JLex', 'jlex.JPG', 1, ''),
(11, 'Sweet Sound Musiq', 'SSM', 'ssm.JPG', 2, ''),
(12, 'Doski Kakapa', 'DoskiKakapa', 'doskikakapa.JPG', 0, ''),
(13, 'Legendary', 'Legendary', 'legendary.JPG', 2, ''),
(15, 'Buven Thepoet', 'BuvenThePoet', 'buventhepoet.JPG', 0, ''),
(17, 'Deeniey Daniels', 'DeenieyDaniels', 'deenieydaniels.JPG', 0, ''),
(18, 'Phillippine', 'Phillippine', 'phillipine.JPG', 0, ''),
(19, 'Starrcy Envy', 'StarrcyEnvy', 'starrcyenvy.JPG', 0, ''),
(20, 'LoveDelia', 'LoveDelia', 'lovedelia.JPG', 0, '');

-- --------------------------------------------------------

--
-- Dumping data for table `musiq`
--

INSERT INTO `musiq` (`musiq_id`, `artist_id`, `active_yn`, `musiq_type`, `musiq_title`, `musiq_title_slug`, `musiq_genre`, `musiq_coverart`, `musiq_file`, `musiq_release_date`, `musiq_downloads`, `musiq_plays`, `musiq_likes`, `musiq_page_views`, `musiq_featured_artist`) VALUES
(1, 1, 1, 'Single', 'Have You Ever (feat. PhiLander)', 'HaveYouEver', 'Hip-Hop', '1_haveyouever.png', 'Have You Ever (feat. PhiLander).mp3', '2022-10-17', 0, 0, 0, 19, 'NONE'),
(2, 1, 1, 'Single', 'F.M.N Freestyle', 'FMN', 'Hip-Hop', '1_fmn.jpg', 'F.M.N Freestyle.mp3', '2022-10-17', 0, 0, 1, 12, 'NONE'),
(3, 1, 1, 'Single', 'Left Alone Again (feat. Lula Creez)', 'LeftAloneAgain', 'Hip-Hop', '1_leftaloneagain.jpg', 'Left Alone Again (feat. Lula Creez).mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(4, 1, 0, 'Album', 'Kias To Kudos', 'KiasToKudos', 'Hip-Hop', '1_kiastokudos.jpg', 'Starvi - Kias To Kudos.zip', '2022-10-17', 2, 0, 1, 185, 'NONE'),
(5, 1, 1, 'Album-Track', 'Flex Mode (Feat. PhiLander & LoveDelia)', 'FlexMode', 'Hip-Hop', '1_kiastokudos.jpg', 'Flex Mode (Feat. PhiLander & LoveDelia).mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(6, 1, 1, 'Album-Track', 'Have You Ever (Feat. PhiLander)', 'HaveYouEver', 'Hip-Hop', '1_kiastokudos.jpg', 'Have You Ever (Feat. PhiLander).mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(7, 1, 1, 'Album-Track', 'Brother', 'Brother', 'Hip-Hop', '1_kiastokudos.jpg', 'Brother.mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(8, 1, 1, 'Album-Track', 'Talk', 'Talk', 'Hip-Hop', '1_kiastokudos.jpg', 'Talk.mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(9, 1, 1, 'Album-Track', 'Depression', 'Depression', 'Hip-Hop', '1_kiastokudos.jpg', 'Depression.mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(10, 1, 1, 'Album-Track', 'My Love', 'MyLove', 'Hip-Hop', '1_kiastokudos.jpg', 'My Love.mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(11, 1, 1, 'Album-Track', 'Trap (Feat. Legendary)', 'Trap', 'Hip-Hop', '1_kiastokudos.jpg', 'Trap (Feat. Legendary).mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(12, 1, 1, 'Album-Track', 'Come & Go', 'ComeAndGo', 'Hip-Hop', '1_kiastokudos.jpg', 'Come & Go.mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(13, 1, 1, 'Album-Track', 'My Queen', 'MyQueen', 'Hip-Hop', '1_kiastokudos.jpg', 'My Queen.mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(14, 1, 1, 'Album-Track', 'Don\'t Leave (feat. PhiLander)', 'DontLeave', 'Hip-Hop', '1_kiastokudos.jpg', 'Don\'t Leave (feat. PhiLander).mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(15, 1, 1, 'Album-Track', 'Left Alone', 'LeftAlone', 'Hip-Hop', '1_kiastokudos.jpg', 'Left Alone.mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(16, 1, 1, 'Album-Track', 'Come Home', 'ComeHome', 'Hip-Hop', '1_kiastokudos.jpg', 'Come Home.mp3', '2022-10-17', 0, 0, 0, 1, 'NONE'),
(17, 1, 1, 'Album-Track', 'Thank You', 'ThankYou', 'Hip-Hop', '1_kiastokudos.jpg', 'Thank You.mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(18, 1, 1, 'Album-Track', 'Me Myself & I Remix (feat. Legendary, PhiLander, LoveDelia & Scholtz GodMc)', 'MeMyselfIRemix', 'Hip-Hop', '1_kiastokudos.jpg', 'Me Myself & I Remix (feat. Legendary, PhiLander, LoveDelia & Scholtz GodMc).mp3', '2022-10-17', 0, 0, 0, 0, 'NONE'),
(19, 2, 0, 'Album', 'New Beginnings', 'NewBeginnings', 'Hip-Hop', '2_newbeginnings.JPG', 'Scholtz GodMc - New Beginnings.zip', '2022-10-21', 0, 0, 0, 6, 'NONE'),
(20, 2, 1, 'Album-Track', 'I\'m Around (feat. Starvi)', 'ImAround', 'Hip-Hop', '2_newbeginnings.JPG', '01. I\'m Around (feat. Starvi).mp3', '2022-10-21', 0, 0, 0, 0, 'NONE'),
(21, 2, 1, 'Album-Track', 'Way It Is', 'WayItIs', 'Hip-Hop', '2_newbeginnings.JPG', '02. Way It Is.mp3', '2022-10-21', 0, 0, 0, 0, 'NONE'),
(22, 2, 1, 'Album-Track', 'How To Become The Realist', 'HowToBecomeTheRealist', 'Hip-Hop', '2_newbeginnings.JPG', '03. How To Become The Realist.mp3', '2022-10-21', 0, 0, 0, 0, 'NONE'),
(23, 2, 1, 'Album-Track', 'Mascot (feat. PhiLander)', 'Mascot', 'Hip-Hop', '2_newbeginnings.JPG', '04. Mascot (feat. PhiLander).mp3', '2022-10-21', 0, 0, 0, 0, 'NONE'),
(24, 2, 1, 'Album-Track', 'All Wrong (feat. PhiLander)', 'AllWrong', 'Hip-Hop', '2_newbeginnings.JPG', '05. All Wrong (feat. PhiLander).mp3', '2022-10-21', 0, 0, 0, 0, 'NONE'),
(25, 2, 1, 'Album-Track', 'iMpumeLelo', 'iMpumeLelo', 'Hip-Hop', '2_newbeginnings.JPG', '06. iMpumeLelo.mp3', '2022-10-21', 0, 0, 0, 0, 'NONE'),
(26, 2, 1, 'Album-Track', 'Like This (Emotional Rollercoaster)', 'LikeThis', 'Hip-Hop', '2_newbeginnings.JPG', '07. Like This (Emotional Rollercoaster).mp3', '2022-10-21', 0, 0, 0, 0, 'NONE'),
(27, 3, 1, 'Single', 'Africa', 'Africa', 'Hip-Hop', '3_africa.JPG', 'Africa.mp3', '2022-10-22', 0, 0, 0, 5, 'NONE'),
(28, 3, 1, 'Single', 'Girl (feat. Shabah, Allyee, Luu & Ntebe)', 'Girl', 'Hip-Hop', '3_girl.JPG', 'Girl (feat. Shabah, Allyee, Mr Luu & Ntebe).mp3', '2022-10-22', 0, 0, 0, 2, 'NONE'),
(29, 4, 1, 'Single', 'How I Do It', 'HowIDoIt', 'Hip-Hop', '4_howidoit.PNG', 'How i do it.mp3', '2022-10-22', 0, 0, 0, 3, 'NONE'),
(30, 5, 0, 'Single', 'The Message', 'TheMessage', 'Hip-Hop', '5_themessage.jpg', 'The Message.mp3', '2022-10-22', 1, 0, 0, 1, 'NONE'),
(31, 5, 0, 'Single', 'Propaganda Freestyle', 'Propaganda', 'Hip-Hop', '5_propagandafreestyle.jpg', 'Propaganda Freestyle.mp3', '2022-10-22', 0, 0, 0, 1, 'NONE'),
(32, 5, 0, 'Single', 'Preach It', 'PreachIt', 'Hip-Hop', '5_preachit.jpg', 'Preach It.mp3', '2022-10-22', 0, 0, 0, 1, 'NONE'),
(33, 3, 0, 'Single', 'Meant To Be (Feat. Ntebe)', 'MeantToBe', 'Hip-Hop', '3_meanttobe.JPG', 'Meant To Be (Feat. Ntebe).mp3', '0000-00-00', 0, 0, 0, 3, 'NONE'),
(36, 3, 1, 'Single', 'Thank You Mama (feat. PhiLander & Stirky Rox)', 'ThankYouMama', 'Hip-Hop', '3_thankyoumama.jpg', 'Thank You Mama (feat. PhiLander & Stirky Rox).mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(37, 6, 0, 'Single', 'Pushing P Freestyle', 'PushingP', 'Hip-Hop', '6_pushingpfreestyle.PNG', 'Pushing P Freestyle.mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(38, 7, 0, 'Single', 'Zaka (Feat. Young Stars Fam)', 'Zaka', 'Hip-Hop', '7_zaka.JPG', 'Zaka (Feat. Young Stars Fam).mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(39, 7, 0, 'Single', 'No More', 'NoMore', 'Hip-Hop', '7_nomore.png', 'No More.mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(40, 5, 0, 'Single', 'NSFAS Got Me', 'NSFASGotMe', 'Hip-Hop', '5_nsfasgotme.jpg', 'NSFAS Got Me.mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(41, 8, 0, 'Single', 'Change (Feat. PhiLander)', 'Change', 'Hip-Hop', '8_change.png', 'Change (Feat. PhiLander).mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(42, 8, 0, 'Single', 'Your Way(Feat. PhiLander)', 'YourWay', 'Hip-Hop', '8_yourway.jpg', 'Your Way(Feat. PhiLander).mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(43, 9, 0, 'Single', 'Superwoman', 'Superwomen', 'Hip-Hop', '9_superwomen.jpg', 'Superwoman.mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(44, 10, 0, 'Single', 'She Said (Feat. Lula  Creez)', 'SheSaid', 'Hip-Hop', '10_shesaid.jpg', 'She Said (Feat. Lula  Creez).mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(45, 10, 0, 'Single', 'Party Nextdoor', 'PartyNextDoor', 'Hip-Hop', '10_partynextdoor.jpg', 'Party Nextdoor.mp3', '2022-10-22', 0, 0, 0, 1, 'NONE'),
(46, 10, 0, 'Single', 'Me And God (Feat. PhiLander)', 'MeAndGod', 'Hip-Hop', '10_meandgod.jpg', 'Me And God (Feat. PhiLander).mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(47, 11, 0, 'Single', 'Make \'Em Proud (feat. Lula Creez, Scholtz GodMc, Kay Ano, Starrcy Envy, Legendary, Aureiiy Beeze, King Thyra & PhiLander)', 'MakeEmProud', 'Hip-Hop', '11_makeemproud.jpg', 'Make \'Em Proud (feat. Lula Creez, Scholtz GodMc, Kay Ano, Starrcy Envy, Legendary, Aureiiy Beeze, King Thyra & PhiLander).mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(48, 11, 0, 'Single', 'Make It Easy (feat. Lula Creez, Scholtz GodMc, PhiLander & Legendary)', 'MakeItEasy', 'Hip-Hop', '11_makeiteasy.JPG', 'Make It Easy (feat. Lula Creez, Scholtz GodMc, PhiLander & Legendary).mp3', '2022-10-22', 0, 0, 0, 0, 'NONE'),
(49, 5, 0, 'Single', 'My Heart Need Your Heart', 'MHNYH', 'Hip-Hop', '5_myheartneedyourheart.jpg', 'My Heart Need Your Heart.mp3', '2022-10-22', 0, 0, 0, 1, 'NONE'),
(50, 7, 0, 'Album', 'YV-SON', 'YVSON', 'Hip-Hop', '7_yvson.JPG', 'Aureiiy Beeze - YV-SON.zip', '2022-10-22', 0, 0, 0, 3, 'NONE'),
(52, 3, 0, 'Single', 'Monate Kings', 'MonateKings', 'Amapianos', '3_monatekings.JPG', 'Monate Kings.mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(54, 2, 0, 'Album', 'The Intruder', 'TheIntruder', 'Hip-Hop', '2_theintruder.jpg', 'Scholtz GodMc - The Intruder.zip', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(55, 12, 0, 'Single', 'I\'m Sorry (feat. Lula Creez)', 'ImSorry', 'Hip-Hop', '12_imsorry.png', 'I\'m Sorry (Feat. Lula Creez).mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(56, 9, 0, 'Single', 'Grow Up (Feat. Bleezy Ree)', 'GrowUp', 'Hip-Hop', '9_growup.jpg', 'Grow Up (Feat. Bleezy Ree).mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(57, 7, 0, 'Single', 'Mama (Feat. Lula Creez)', 'Mama', 'Hip-Hop', '7_mama.png', 'Mama (Feat. Lula Creez).mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(58, 11, 0, 'Single', 'Mama Told Me (Feat. Scholtz GodMc, PhiLander & Aureiiy Beeze)', 'MamaToldMe', 'Hip-Hop', '11_mamatoldme.JPG', 'Mama Told Me (Feat. Scholtz GodMc, PhiLander & Aureiiy Beeze).mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(59, 13, 0, 'Single', 'Mdali (Feat. Rrangwane)', 'Mdali', 'Hip-Hop', '13_mdali.png', 'Mdali (Feat. Rrangwane).mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(60, 13, 0, 'Single', 'Prayer', 'Prayer', 'Hip-Hop', '13_prayer.JPG', 'Prayer.mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(61, 3, 0, 'Single', 'New Life', 'NewLife', 'Hip-Hop', '3_newlife.JPG', 'New Life.mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(62, 13, 0, 'Single', 'Blessing and a Curse (Feat. Rrangwane)', 'BlessingAndACurse', 'Hip-Hop', '13_blessing&curse.JPG', 'Blessing and a Curse (Feat. Rrangwane).mp3', '2022-10-23', 0, 0, 0, 1, 'NONE'),
(63, 11, 0, 'Single', 'On My Way (feat. Hot_Shot, Lula Creez, Kay Ano, Starvi & Aureiiy Beeze)', 'OnMyWay', 'Hip-Hop', '11_onmyway.jpg', 'On My Way (feat. Hot_Shot, Lula Creez, Kay Ano, Starvi & Aureiiy Beeze).mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(64, 13, 0, 'Single', 'Vumani Bo! (Feat. Rrangwane)', 'VumaniBo', 'Hip-Hop', '13_vumanibo!.JPG', 'Vumani Bo! (Feat. Rrangwane).mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(65, 15, 0, 'Single', 'Vutomi', 'Vutomi', 'Poem', '15_vutomi.JPG', 'Vutomi.mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(66, 15, 0, 'Single', 'Inbox', 'Inbox', 'Poem', '15_inbox.JPG', 'Inbox.mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(67, 15, 0, 'Single', 'An Old Doll', 'AnOldDoll', 'Poem', '15_anolddoll.jpg', 'An Old Doll.mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(68, 17, 0, 'Single', '16 June 1978', '16June1976', 'Poem', '17_16june1976.jpg', '16 June 1978.mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(69, 15, 0, 'Single', 'June 16', 'June16', 'Poem', '15_june16.JPG', 'June 16.mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(70, 18, 0, 'Single', 'O Ntlogetsi', 'ONtlogetsi', 'Poem', '18_ontlogetsi.JPG', 'O Ntlogetsi.mp3', '2022-10-23', 0, 0, 0, 0, 'NONE'),
(71, 19, 0, 'Album', 'My Life And Music', 'MyLifeAndMusic', 'Hip-Hop', '19_mylife&music.png', 'Starrcy Envy - My Life And Music.zip', '2022-10-23', 0, 0, 0, 2, 'NONE'),
(73, 20, 0, 'Single', 'Failed', 'Failed', 'Hip-Hop', '20_failed.jpg', 'Failed.mp3', '2022-10-23', 0, 0, 0, 1, 'NONE');

-- --------------------------------------------------------

--
-- Dumping data for table `musiq_link`
--

INSERT INTO `musiq_link` (`link_id`, `musiq_id`, `link_presave`, `link_genius_lyrics`, `link_spotify`, `link_youtube`, `link_audiomack`, `link_applemusic`, `link_deezer`, `link_itunes`, `link_youtubemusic`, `link_amazonmusic`) VALUES
(1, 1, 'twat', '', 'https://open.spotify.com/track/2faP2HtQ3ZJ0UPGbAcX8gC', 'https://youtube.com/watch?v=ZIKmL4ZdTr4', 'https://audiomack.com/song/sweet-sound-musiq/have-you-ever-feat-philander', 'https://music.apple.com/za/album/have-you-ever-feat-starvi-philander/1532781490?i=1532781492&app=music', 'https://www.deezer.com/track/1087059082', 'https://music.apple.com/za/album/have-you-ever-feat-starvi-philander/1532781490?i=1532781492&app=itunes', 'https://music.youtube.com/watch?v=ZIKmL4ZdTr4', 'https://music.amazon.com/albums/B08JP2RJ7X?trackAsin=B08JPK1FCR'),
(2, 2, 'test', '', 'https://open.spotify.com/track/7pWCSXdpYganhHL0PDu1GO', 'https://youtube.com/watch?v=UWSX67zqbaU', '', 'https://music.apple.com/us/album/f-m-n-feat-starvi/1604302400?i=1604302402&app=music', 'https://www.deezer.com/track/1617041432', 'https://music.apple.com/us/album/f-m-n-feat-starvi/1604302400?i=1604302402&app=itunes', 'https://music.youtube.com/watch?v=UWSX67zqbaU', 'https://amazon.com/dp/B09Q4NYMSD'),
(3, 3, 'test', '', 'https://open.spotify.com/track/7pWCSXdpYganhHL0PDu1GO', 'https://youtube.com/watch?v=UWSX67zqbaU', '', 'https://music.apple.com/us/album/f-m-n-feat-starvi/1604302400?i=1604302402&app=music', 'https://www.deezer.com/track/1617041432', 'https://music.apple.com/us/album/f-m-n-feat-starvi/1604302400?i=1604302402&app=itunes', 'https://music.youtube.com/watch?v=UWSX67zqbaU', 'https://music.amazon.com/albums/B09Q4HNZS2?trackAsin=B09Q4NYMSD'),
(4, 4, 'test', '', 'https://open.spotify.com/album/3Xeh19Fl7pimBEO7hKmACp', 'https://youtube.com/playlist?list=OLAK5uy_kDwP3nC3MoaQj8qAqvEGHladde0DBUdqA', 'https://audiomack.com/album/starvi/kias-to-kudos', 'https://music.apple.com/us/album/kias-to-kudos/1532781490', 'https://www.deezer.com/album/174805092', '', 'https://music.youtube.com/watch?v=Hs0UZjGf02A&feature=share', 'https://music.amazon.com/albums/B08JP2RJ7X'),
(5, 19, 'test', '', '', '', '', '', '', '', '', ''),
(6, 27, 'test', '', 'https://open.spotify.com/track/7pWCSXdpYganhHL0PDu1GO', 'https://youtube.com/watch?v=UWSX67zqbaU', '', 'https://music.apple.com/za/album/f-m-n-feat-starvi/1604302400?i=1604302402&app=music', 'https://www.deezer.com/track/1617041432', 'https://music.apple.com/za/album/f-m-n-feat-starvi/1604302400?i=1604302402&app=itunes', 'https://music.youtube.com/watch?v=UWSX67zqbaU', 'https://music.amazon.com/albums/B09Q4HNZS2?trackAsin=B09Q4NYMSD'),
(7, 28, 'test', '', 'https://open.spotify.com/track/7pWCSXdpYganhHL0PDu1GO', 'https://youtube.com/watch?v=UWSX67zqbaU', '', 'https://music.apple.com/za/album/f-m-n-feat-starvi/1604302400?i=1604302402&app=music', 'https://www.deezer.com/track/1617041432', 'https://music.apple.com/za/album/f-m-n-feat-starvi/1604302400?i=1604302402&app=itunes', 'https://music.youtube.com/watch?v=UWSX67zqbaU', 'https://music.amazon.com/albums/B09Q4HNZS2?trackAsin=B09Q4NYMSD'),
(8, 29, 'test', '', '', '', '', '', '', '', '', ''),
(9, 30, 'test', '', '', '', '', '', '', '', '', ''),
(10, 31, 'test', '', '', '', '', '', '', '', '', ''),
(11, 32, 'test', '', '', '', '', '', '', '', '', ''),
(12, 33, 'test', '', '', '', '', '', '', '', '', ''),
(15, 36, 'test', '', '', '', '', '', '', '', '', ''),
(16, 37, 'test', '', '', '', '', '', '', '', '', ''),
(17, 38, 'test', '', '', '', '', '', '', '', '', ''),
(18, 39, 'test', '', '', '', '', '', '', '', '', ''),
(19, 40, 'test', '', '', '', '', '', '', '', '', ''),
(20, 41, 'test', '', '', '', '', '', '', '', '', ''),
(21, 42, 'test', '', '', '', '', '', '', '', '', ''),
(22, 43, 'test', '', '', '', '', '', '', '', '', ''),
(23, 44, 'test', '', '', '', '', '', '', '', '', ''),
(24, 45, 'test', '', '', '', '', '', '', '', '', ''),
(25, 46, 'test', '', '', '', '', '', '', '', '', ''),
(26, 47, 'test', '', '', '', '', '', '', '', '', ''),
(27, 48, 'test', '', '', '', '', '', '', '', '', ''),
(28, 49, 'test', '', '', '', '', '', '', '', '', ''),
(29, 50, 'test', '', '', '', '', '', '', '', '', ''),
(31, 52, 'test', '', '', '', '', '', '', '', '', ''),
(33, 54, 'test', '', '', '', '', '', '', '', '', ''),
(34, 55, 'test', '', '', '', '', '', '', '', '', ''),
(35, 56, 'test', '', '', '', '', '', '', '', '', ''),
(36, 57, 'test', '', '', '', '', '', '', '', '', ''),
(37, 58, 'test', '', '', '', '', '', '', '', '', ''),
(38, 59, 'test', '', '', '', '', '', '', '', '', ''),
(39, 60, 'test', '', '', '', '', '', '', '', '', ''),
(40, 61, 'test', '', '', '', '', '', '', '', '', ''),
(41, 62, 'test', '', '', '', '', '', '', '', '', ''),
(42, 63, 'test', '', '', '', '', '', '', '', '', ''),
(43, 64, 'test', '', '', '', '', '', '', '', '', ''),
(44, 65, 'test', '', '', '', '', '', '', '', '', ''),
(45, 66, 'test', '', '', '', '', '', '', '', '', ''),
(46, 67, 'test', '', '', '', '', '', '', '', '', ''),
(47, 68, 'test', '', '', '', '', '', '', '', '', ''),
(48, 69, 'test', '', '', '', '', '', '', '', '', ''),
(49, 70, 'test', '', '', '', '', '', '', '', '', ''),
(50, 71, 'test', '', '', '', '', '', '', '', '', ''),
(52, 73, 'test', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Dumping data for table `social_media_link`
--

INSERT INTO `social_media_link` (`sml_id`, `artist_id`, `sml_whatsapp`, `sml_facebook`, `sml_twitter`, `sml_instagram`, `sml_tiktok`, `sml_youtube`) VALUES
(1, 1, '+27719217492', '', '', '', '', ''),
(2, 2, '', '', '', '', '', ''),
(3, 3, '', '', '', '', '', ''),
(4, 4, '', '', '', '', '', ''),
(5, 5, '', '', '', '', '', ''),
(6, 6, '', '', '', '', '', ''),
(7, 7, '', '', '', '', '', ''),
(8, 8, '', '', '', '', '', ''),
(9, 9, '', '', '', '', '', ''),
(10, 10, '', '', '', '', '', ''),
(11, 11, '', '', '', '', '', ''),
(12, 12, '', '', '', '', '', ''),
(13, 13, '', '', '', '', '', ''),
(15, 15, '', '', '', '', '', ''),
(17, 17, '', '', '', '', '', ''),
(18, 18, '', '', '', '', '', ''),
(19, 19, '', '', '', '', '', ''),
(20, 20, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `musiq_id` (`musiq_id`);

--
-- Indexes for table `album_single`
--
ALTER TABLE `album_single`
  ADD PRIMARY KEY (`album_single_id`),
  ADD KEY `musiq_id` (`musiq_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `musiq`
--
ALTER TABLE `musiq`
  ADD PRIMARY KEY (`musiq_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `musiq_link`
--
ALTER TABLE `musiq_link`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `musiq_id` (`musiq_id`);

--
-- Indexes for table `social_media_link`
--
ALTER TABLE `social_media_link`
  ADD PRIMARY KEY (`sml_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `album_single`
--
ALTER TABLE `album_single`
  MODIFY `album_single_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `musiq`
--
ALTER TABLE `musiq`
  MODIFY `musiq_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `musiq_link`
--
ALTER TABLE `musiq_link`
  MODIFY `link_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `social_media_link`
--
ALTER TABLE `social_media_link`
  MODIFY `sml_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`musiq_id`) REFERENCES `musiq` (`musiq_id`) ON DELETE CASCADE;

--
-- Constraints for table `album_single`
--
ALTER TABLE `album_single`
  ADD CONSTRAINT `album_single_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `album_single_ibfk_2` FOREIGN KEY (`musiq_id`) REFERENCES `musiq` (`musiq_id`) ON DELETE CASCADE;

--
-- Constraints for table `musiq`
--
ALTER TABLE `musiq`
  ADD CONSTRAINT `musiq_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE;

--
-- Constraints for table `musiq_link`
--
ALTER TABLE `musiq_link`
  ADD CONSTRAINT `link_ibfk_1` FOREIGN KEY (`musiq_id`) REFERENCES `musiq` (`musiq_id`) ON DELETE CASCADE;

--
-- Constraints for table `social_media_link`
--
ALTER TABLE `social_media_link`
  ADD CONSTRAINT `sml_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE;
COMMIT;
-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: ms1580.gamedata.io:3306
-- Generation Time: Sep 14, 2020 at 10:28 PM
-- Server version: 5.7.31
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ni743359_1_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `p_id` int(11) NOT NULL,
  `p_uid` varchar(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_classe` int(10) NOT NULL,
  `p_race` int(10) NOT NULL,
  `p_exp` int(100) NOT NULL,
  `p_licence` text NOT NULL,
  `p_level` int(10) NOT NULL,
  `p_vie` int(10) NOT NULL,
  `p_faim` int(10) NOT NULL,
  `p_soif` int(10) NOT NULL,
  `p_inv_reel` text NOT NULL,
  `p_inv_virtuel` text NOT NULL,
  `p_position` text NOT NULL,
  `p_quetes_faites` text NOT NULL,
  `p_quetes_dispo` text NOT NULL,
  `p_planete_visite` text NOT NULL,
  `p_quetes_actives` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`p_id`, `p_uid`, `p_name`, `p_classe`, `p_race`, `p_exp`, `p_licence`, `p_level`, `p_vie`, `p_faim`, `p_soif`, `p_inv_reel`, `p_inv_virtuel`, `p_position`, `p_quetes_faites`, `p_quetes_dispo`, `p_planete_visite`, `p_quetes_actives`) VALUES
(1, '76561198291437537', 'AureProd', 2, 2, 13, '\"[2]\"', 1, 93, 86, 80, '\"[[],[],[],[`U_C_Man_casual_1_F`,[]],[],[],``,``,[],[`ItemMap`,``,`ItemRadio`,`ItemCompass`,`ItemWatch`,``]]\"', '\"[]\"', '\"[37843.9,3339.96,0.0942109]\"', '\"[1,2,3]\"', '\"[]\"', '\"[]\"', '\"[]\"'),
(2, '76561198006133017', 'FondaTA : Mysterfreez', 1, 1, 0, '\"[]\"', 1, 100, 80, 71, '\"[[],[],[],[`sga_commoner_uniform`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,``,``]]\"', '\"[]\"', '\"[15235.6,15873.6,9.3323]\"', '\"[]\"', '\"[1]\"', '\"[]\"', '\"[]\"'),
(3, '76561198165158755', 'Marcus Anderson', 1, 2, 13, '\"[1]\"', 1, 100, 92, 89, '\"[[],[],[],[`U_C_Poloshirt_burgundy`,[]],[`V_BandollierB_cbr`,[]],[`B_OutdoorPack_blk`,[]],`H_Bandanna_surfer`,`G_Sport_Blackred`,[],[`ItemMap`,``,`ItemRadio`,`ItemCompass`,`ItemWatch`,``]]\"', '\"[[6,1],[3,1],[7,1],[8,1],[4,1,100],[5,1],[1,1],[2,1,true,100],[14,1]]\"', '\"[38175.1,3273.91,0.00143886]\"', '\"[1,2,3]\"', '\"[]\"', '\"[]\"', '\"[]\"'),
(4, '76561198025780224', 'Julien Pumperi', 2, 2, 0, '\"[]\"', 1, 95, 99, 99, '\"[[],[],[],[`U_C_Man_casual_1_F`,[]],[],[],``,`G_Respirator_white_F`,[],[``,``,`ItemRadio`,`ItemCompass`,`ItemWatch`,``]]\"', '\"[]\"', '\"[37880.4,3260.91,0.00143886]\"', '\"[]\"', '\"[1]\"', '\"[]\"', '\"[]\"'),
(5, '76561198208475892', '*M.O.T.A*fox alpha', 3, 1, 0, '\"[]\"', 1, 99, 85, 78, '\"[[],[],[],[`sga_commoner_uniform`,[]],[],[],``,`G_Sport_Blackred`,[],[``,``,`ItemRadio`,`ItemCompass`,``,``]]\"', '\"[]\"', '\"[15988.5,15958.1,3.42199]\"', '\"[]\"', '\"[1]\"', '\"[]\"', '\"[]\"');

-- --------------------------------------------------------

--
-- Table structure for table `whitelist`
--

CREATE TABLE `whitelist` (
  `wl_id` int(11) NOT NULL,
  `wl_uid` varchar(100) NOT NULL,
  `wl_pseudo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `whitelist`
--

INSERT INTO `whitelist` (`wl_id`, `wl_uid`, `wl_pseudo`) VALUES
(1, '76561198291437537', 'AureProd'),
(7, '76561198006133017', 'MysterFreeze'),
(8, '76561198165158755', 'fadas'),
(9, '76561198025780224', 'lodox'),
(10, '76561198208475892', 'fox-alpha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`wl_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `whitelist`
--
ALTER TABLE `whitelist`
  MODIFY `wl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

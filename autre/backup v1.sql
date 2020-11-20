-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           10.1.45-MariaDB-0+deb9u1 - Debian 9.12
-- SE du serveur:                debian-linux-gnu
-- HeidiSQL Version:             11.0.0.6037
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour stargatedb
DROP DATABASE IF EXISTS `stargatedb`;
CREATE DATABASE IF NOT EXISTS `stargatedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `stargatedb`;

-- Listage de la structure de la table stargatedb. player
DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `p_quetes_actives` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Listage des données de la table stargatedb.player : ~13 rows (environ)
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
REPLACE INTO `player` (`p_id`, `p_uid`, `p_name`, `p_classe`, `p_race`, `p_exp`, `p_licence`, `p_level`, `p_vie`, `p_faim`, `p_soif`, `p_inv_reel`, `p_inv_virtuel`, `p_position`, `p_quetes_faites`, `p_quetes_dispo`, `p_planete_visite`, `p_quetes_actives`) VALUES
	(1, '76561198291437537', 'AureProd', 1, 1, 0, '"[]"', 1, 100, 99, 99, '"[[`sga_staffweapon_on`,``,``,``,[`sga_staffweapon_mag`,495],[`sga_staffweapon_mag_off`,10],``],[],[],[`SGA_jaffa_free`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,``,``]]"', '"[]"', '"[38872.5,38957.2,0.00147069]"', '"[]"', '"[1]"', '"[]"', '"[]"'),
	(2, '76561198006133017', 'FondaTA : Mysterfreez', 1, 1, 12865, '"[1]"', 15, 100, 100, 99, '"[[],[],[],[`U_C_Man_casual_1_F`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,`ItemWatch`,``]]"', '"[]"', '"[38131.7,3116.56,0.00149536]"', '"[1,2,3]"', '"[]"', '"[]"', '"[]"'),
	(3, '76561198165158755', 'LeFadas', 3, 1, 500, '"[]"', 2, 100, 99, 99, '"[[],[],[],[`sga_commoner_uniform`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,``,``]]"', '"[]"', '"[38870.5,38957.6,0.0013876]"', '"[]"', '"[1]"', '"[]"', '"[]"'),
	(4, '76561198025780224', 'Julien Pumperi', 2, 2, 5, '"[]"', 1, 62, 68, 55, '"[[],[],[],[`U_C_Man_casual_1_F`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,`ItemWatch`,``]]"', '"[]"', '"[38119.4,3114.78,0.00136924]"', '"[1]"', '"[2]"', '"[]"', '"[]"'),
	(5, '76561198208475892', '*M.O.T.A*fox alpha', 3, 1, 0, '"[]"', 1, 100, 94, 91, '"[[],[],[],[`SGA_jaffa_free`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,``,``]]"', '"[]"', '"[33399.8,38915.6,0.00170755]"', '"[]"', '"[1]"', '"[]"', '"[]"'),
	(6, '76561198165061459', 'Genesis', 2, 1, 5082, '"[]"', 8, 100, 99, 99, '"[[],[],[`sga_zat_open`,``,``,``,[`sga_zat_mag_open`,991],[`sga_zat_mag_closed`,1],``],[`SGA_jaffa_free`,[[`sga_zat_mag_closed`,1,1]]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,``,``]]"', '"[]"', '"[38885,38961.4,0.00141191]"', '"[]"', '"[1]"', '"[]"', '"[]"'),
	(7, '76561197995594735', 'Charlie', 3, 2, 405, '"[]"', 2, 100, 99, 99, '"[[],[],[],[`U_C_Man_casual_1_F`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,`ItemWatch`,``]]"', '"[]"', '"[38134.2,3128.72,0.684326]"', '"[1]"', '"[2]"', '"[]"', '"[]"'),
	(8, '76561199002016935', '*M.O.T.A* WarWolf', 3, 1, 1555, '"[]"', 4, 100, 99, 98, '"[[],[],[],[`sga_commoner_uniform`,[]],[],[],``,`G_Aviator`,[],[``,``,`ItemRadio`,`ItemCompass`,``,``]]"', '"[]"', '"[33802.6,39326.1,0.00137538]"', '"[]"', '"[1]"', '"[]"', '"[]"'),
	(9, '76561198392862353', 'aissa', 3, 1, 1065, '"[]"', 3, 100, 96, 94, '"[[],[],[],[`sga_commoner_uniform`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,``,``]]"', '"[]"', '"[33390.2,38411.9,0.00198793]"', '"[]"', '"[1]"', '"[]"', '"[]"'),
	(10, '76561198303058318', '[Ltn-Col] J.Ellis', 1, 2, 1649, '"[1]"', 4, 100, 100, 100, '"[[],[],[],[`U_C_Man_casual_1_F`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,`ItemWatch`,``]]"', '"[]"', '"[38139.4,3125.43,0.00143886]"', '"[1,2,3]"', '"[]"', '"[]"', '"[]"'),
	(11, '76561198140828094', 'A.foxtrot', 1, 1, 6021, '"[1]"', 9, 87, 93, 90, '"[[],[],[],[`SGA_jaffa_free`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,``,``]]"', '"[]"', '"[39904.7,1251.98,0.0012486]"', '"[1,2,3]"', '"[]"', '"[]"', '"[]"'),
	(12, '76561198169985342', 'S. Underwood  ', 3, 1, 300, '"[]"', 1, 100, 100, 99, '"[[],[],[],[`sga_commoner_uniform`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,``,``]]"', '"[]"', '"[38869.7,38965.3,0.264825]"', '"[]"', '"[1]"', '"[]"', '"[]"'),
	(13, '76561198196523477', 'Marc Skoll', 1, 2, 13, '"[1]"', 1, 100, 100, 100, '"[[],[],[],[`U_C_Man_casual_1_F`,[]],[],[],``,``,[],[``,``,`ItemRadio`,`ItemCompass`,`ItemWatch`,``]]"', '"[]"', '"[38144.6,3127.35,0.5]"', '"[1,2,3]"', '"[]"', '"[]"', '"[]"');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;

-- Listage de la structure de la table stargatedb. whitelist
DROP TABLE IF EXISTS `whitelist`;
CREATE TABLE IF NOT EXISTS `whitelist` (
  `wl_id` int(11) NOT NULL AUTO_INCREMENT,
  `wl_uid` varchar(100) NOT NULL,
  `wl_pseudo` varchar(100) NOT NULL,
  PRIMARY KEY (`wl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Listage des données de la table stargatedb.whitelist : ~13 rows (environ)
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
REPLACE INTO `whitelist` (`wl_id`, `wl_uid`, `wl_pseudo`) VALUES
	(1, '76561198291437537', 'AureProd'),
	(7, '76561198006133017', 'MysterFreeze'),
	(8, '76561198165158755', 'fadas'),
	(9, '76561198025780224', 'lodox'),
	(10, '76561198208475892', 'fox-alpha'),
	(11, '76561198165061459', 'ytsuka'),
	(12, '76561197995594735', 'western'),
	(13, '76561199002016935', 'warwolf'),
	(25, '76561198392862353', 'aissa'),
	(26, '76561198303058318', 'Blackout'),
	(27, '76561198140828094', 'Foxtrot'),
	(28, '76561198169985342', 'Underwood'),
	(29, '76561198196523477', 'Aquila Mark');
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

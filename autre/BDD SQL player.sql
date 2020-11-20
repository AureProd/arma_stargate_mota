
DROP TABLE IF EXISTS player;

CREATE TABLE player
(
   p_id INTEGER AUTO_INCREMENT NOT NULL,
   p_uid VARCHAR(100) NOT NULL,
   p_name VARCHAR(100) NOT NULL,
   p_classe INTEGER(10) NOT NULL,
   p_race INTEGER(10) NOT NULL,
   p_exp INTEGER(100) NOT NULL,
   p_licence TEXT NOT NULL,
   p_level INTEGER(10) NOT NULL,
   p_vie INTEGER(10) NOT NULL,
   p_faim INTEGER(10) NOT NULL,
   p_soif INTEGER(10) NOT NULL,
   p_inv_reel TEXT NOT NULL,
   p_inv_virtuel TEXT NOT NULL,
   p_position TEXT NOT NULL,
   p_quetes_faites TEXT NOT NULL,
   p_quetes_dispo TEXT NOT NULL,
   p_planete_visite TEXT NOT NULL,
   p_quetes_actives TEXT NOT NULL,
   p_garage TEXT NOT NULL,
   PRIMARY KEY (p_id)
) ENGINE=InnoDB CHARSET=utf8;

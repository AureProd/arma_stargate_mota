
class stargate_armes
{
	class guns_tauri
	{
		armes[] = { // { nom / level / prix / id de l'arme / id du chargeur / fonction }
            {"rook", 0, 75, "hgun_Rook40_F", "16Rnd_9x21_Mag", "['hgun_Rook40_F', '16Rnd_9x21_Mag'] call mission_fnc_add_weapon"},
            {"P 07", 15, 150, "hgun_P07_F", "16Rnd_9x21_Mag", "['hgun_P07_F', '16Rnd_9x21_Mag'] call mission_fnc_add_weapon"},
            {"ACP 2", 25, 200, "hgun_ACPC2_F", "9Rnd_45ACP_Mag", "['hgun_ACPC2_F', '9Rnd_45ACP_Mag'] call mission_fnc_add_weapon"},
            {"4 Five", 30, 350, "hgun_Pistol_heavy_01_F", "11Rnd_45ACP_Mag", "['hgun_Pistol_heavy_01_F', '11Rnd_45ACP_Mag'] call mission_fnc_add_weapon"},
            {"MP5", 30, 500, "SMG_05_F", "30Rnd_9x21_Mag_SMG_02", "['SMG_05_F', '30Rnd_9x21_Mag_SMG_02'] call mission_fnc_add_weapon"},
            {"SPAS 12", 40, 550, "SGA_SPAS12", "SGA_SPAS12MAG_pellets", "['SGA_SPAS12', 'SGA_SPAS12MAG_pellets'] call mission_fnc_add_weapon"},
			{"P 90", 50, 750, "SMG_03C_TR_black", "50Rnd_570x28_SMG_03", "['SMG_03C_TR_black', '50Rnd_570x28_SMG_03'] call mission_fnc_add_weapon"},
            {"MK 14", 55, 850, "srifle_DMR_06_olive_F", "20Rnd_762x51_Mag", "['srifle_DMR_06_olive_F', '20Rnd_762x51_Mag'] call mission_fnc_add_weapon"},
            {"LIM", 60, 1000, "LMG_03_F", "200Rnd_556x45_Box_F", "['LMG_03_F', '200Rnd_556x45_Box_F'] call mission_fnc_add_weapon"}
		};
        chargeurs[] = { // { nom / level / prix / id de l'arme / id du chargeur / fonction }
            {$STR_Chargeur_Rook, 0, 10, "hgun_Rook40_F", "16Rnd_9x21_Mag", "['16Rnd_9x21_Mag'] call mission_fnc_add_chargeur"},
            {$STR_Chargeur_P_07, 15, 12, "hgun_P07_F", "16Rnd_9x21_Mag", "['16Rnd_9x21_Mag'] call mission_fnc_add_chargeur"},
            {$STR_Chargeur_ACP_2, 25, 20, "hgun_ACPC2_F", "9Rnd_45ACP_Mag", "['9Rnd_45ACP_Mag'] call mission_fnc_add_chargeur"},
            {$STR_Chargeur_4_Five, 30, 25, "hgun_Pistol_heavy_01_F", "11Rnd_45ACP_Mag", "['11Rnd_45ACP_Mag'] call mission_fnc_add_chargeur"},
            {$STR_Chargeur_MP5, 30, 50, "SMG_05_F", "30Rnd_9x21_Mag_SMG_02", "['30Rnd_9x21_Mag_SMG_02'] call mission_fnc_add_chargeur"},
            {$STR_Chargeur_SPAS_12, 40, 55, "SGA_SPAS12", "SGA_SPAS12MAG_pellets", "['SGA_SPAS12MAG_pellets'] call mission_fnc_add_chargeur"},
            {$STR_Chargeur_P_90, 50, 85, "SMG_03C_TR_black", "50Rnd_570x28_SMG_03", "['50Rnd_570x28_SMG_03'] call mission_fnc_add_chargeur"},
            {$STR_Chargeur_MK_14, 55, 90, "srifle_DMR_06_olive_F", "20Rnd_762x51_Mag", "['20Rnd_762x51_Mag'] call mission_fnc_add_chargeur"},
            {$STR_Chargeur_LIM, 60, 200, "LMG_03_F", "200Rnd_556x45_Box_F", "['200Rnd_556x45_Box_F'] call mission_fnc_add_chargeur"}
		};
        viseurs[] = { // { nom / level / prix / id de arme }
            {$STR_MRD_rouge, 30, 55, "optic_MRD", "['optic_MRD'] call mission_fnc_add_viseur"},
            {$STR_ACO_1_rouge, 30, 60, "optic_Aco", "['optic_Aco'] call mission_fnc_add_viseur"},
            {$STR_ACO_1_verte, 30, 65, "optic_ACO_grn", "['optic_ACO_grn'] call mission_fnc_add_viseur"},
            {$STR_ACO_2_rouge, 30, 67, "optic_Aco_smg", "['optic_Aco_smg'] call mission_fnc_add_viseur"},
            {$STR_ACO_2_verte, 30, 70, "optic_ACO_grn_smg", "['optic_ACO_grn_smg'] call mission_fnc_add_viseur"},
            {$STR_Holographique_1, 40, 80, "optic_Holosight", "['optic_Holosight'] call mission_fnc_add_viseur"},
            {$STR_Holographique_2, 40, 85, "optic_Holosight_smg", "['optic_Holosight_smg'] call mission_fnc_add_viseur"},
            {"MRCO", 50, 90, "optic_MRCO", "['optic_MRCO'] call mission_fnc_add_viseur"},
            {"RCO", 60, 100, "optic_Hamr", "['optic_Hamr'] call mission_fnc_add_viseur"},
            {"ERCO", 60, 120, "optic_ERCO_blk_F", "['optic_ERCO_blk_F'] call mission_fnc_add_viseur"},
            {"ARCO", 60, 150, "optic_Arco", "['optic_Arco'] call mission_fnc_add_viseur"}
        };
	};
    class guns_goauld
	{
		armes[] = { // { nom / level / prix / id de l'arme / id du chargeur / fonction }
            // Armes de poing
			{$STR_Lance_goauld, 0, 0, "sga_staffweapon", "sga_staffweapon_mag_on", "['sga_staffweapon', 'sga_staffweapon_mag_on'] call mission_fnc_add_weapon"},
            {"Zat'ni'katel", 15, 100, "sga_zat", "sga_zat_mag_closed", "['sga_zat', 'sga_zat_mag_closed'] call mission_fnc_add_weapon"}
		};
        chargeurs[] = { // { nom / level / prix / id de l'arme / id du chargeur / fonction }
            // Armes de poing
			{$STR_Chargeur_Lance_goauld, 0, 0, "sga_staffweapon", "sga_staffweapon_mag_on", "['sga_staffweapon_mag_on'] call mission_fnc_add_chargeur"},
            {$STR_Chargeur_Zat_ni_katel, 15, 45, "sga_zat_mag_closed", "sga_zat_mag_closed", "['sga_zat_mag_closed'] call mission_fnc_add_chargeur"}
		};
        viseurs[] = {}; // { nom / level / prix / id du viseur / fonction }
	};
};

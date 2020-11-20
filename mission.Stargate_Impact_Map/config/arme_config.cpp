
class stargate_armes
{
	class guns_tauri
	{
		armes[] = { // { nom / level / prix / id de l'arme / id du chargeur / fonction }
            // Armes de poing
			{"rook", 0, 0, "hgun_Rook40_F", "16Rnd_9x21_Mag", "['hgun_Rook40_F', '16Rnd_9x21_Mag'] call mission_fnc_add_weapon"},
            {"P 07", 0, 0, "hgun_P07_F", "16Rnd_9x21_Mag", "['hgun_P07_F', '16Rnd_9x21_Mag'] call mission_fnc_add_weapon"},
            {"ACP 2", 0, 0, "hgun_ACPC2_F", "9Rnd_45ACP_Mag", "['hgun_ACPC2_F', '9Rnd_45ACP_Mag'] call mission_fnc_add_weapon"},
            {"4 five", 0, 0, "hgun_Pistol_heavy_01_F", "11Rnd_45ACP_Mag", "['hgun_Pistol_heavy_01_F', '11Rnd_45ACP_Mag'] call mission_fnc_add_weapon"},
            {"P 90", 0, 0, "SMG_03C_TR_black", "50Rnd_570x28_SMG_03", "['SMG_03C_TR_black', '50Rnd_570x28_SMG_03'] call mission_fnc_add_weapon"},
            {"MP5", 0, 0, "SMG_05_F", "30Rnd_9x21_Mag_SMG_02", "['SMG_05_F', '30Rnd_9x21_Mag_SMG_02'] call mission_fnc_add_weapon"},
            {"SPAS 12", 0, 0, "SGA_SPAS12", "SGA_SPAS12MAG_pellets", "['SGA_SPAS12', 'SGA_SPAS12MAG_pellets'] call mission_fnc_add_weapon"},
            {"MK 14", 10, 0, "srifle_DMR_06_olive_F", "20Rnd_762x51_Mag", "['srifle_DMR_06_olive_F', '20Rnd_762x51_Mag'] call mission_fnc_add_weapon"},
            {"LIM", 10, 0, "LMG_03_F", "200Rnd_556x45_Box_F", "['LMG_03_F', '200Rnd_556x45_Box_F'] call mission_fnc_add_weapon"}
		};
        chargeurs[] = { // { nom / level / prix / id de l'arme / id du chargeur / fonction }
            // Armes de poing
			{"Chargeur rook", 0, 0, "hgun_Rook40_F", "16Rnd_9x21_Mag", "['16Rnd_9x21_Mag'] call mission_fnc_add_chargeur"},
            {"Chargeur P 07", 0, 0, "hgun_P07_F", "16Rnd_9x21_Mag", "['16Rnd_9x21_Mag'] call mission_fnc_add_chargeur"},
            {"Chargeur ACP 2", 0, 0, "hgun_ACPC2_F", "9Rnd_45ACP_Mag", "['9Rnd_45ACP_Mag'] call mission_fnc_add_chargeur"},
            {"Chargeur 4 five", 0, 0, "hgun_Pistol_heavy_01_F", "11Rnd_45ACP_Mag", "['11Rnd_45ACP_Mag'] call mission_fnc_add_chargeur"},
            {"Chargeur P 90", 0, 0, "SMG_03C_TR_black", "50Rnd_570x28_SMG_03", "['50Rnd_570x28_SMG_03'] call mission_fnc_add_chargeur"},
            {"Chargeur MP5", 0, 0, "SMG_05_F", "30Rnd_9x21_Mag_SMG_02", "['30Rnd_9x21_Mag_SMG_02'] call mission_fnc_add_chargeur"},
            {"Chargeur SPAS 12", 0, 0, "SGA_SPAS12", "SGA_SPAS12MAG_pellets", "['SGA_SPAS12MAG_pellets'] call mission_fnc_add_chargeur"},
            {"Chargeur MK 14", 0, 0, "srifle_DMR_06_olive_F", "20Rnd_762x51_Mag", "['20Rnd_762x51_Mag'] call mission_fnc_add_chargeur"},
            {"Chargeur LIM", 0, 0, "LMG_03_F", "200Rnd_556x45_Box_F", "['200Rnd_556x45_Box_F'] call mission_fnc_add_chargeur"}
		};
        viseurs[] = { // { nom / level / prix / id de arme }
            {"MRD rouge", 0, 0, "optic_MRD", "['optic_MRD'] call mission_fnc_add_viseur"},
            {"ACO 1 rouge", 0, 0, "optic_Aco", "['optic_Aco'] call mission_fnc_add_viseur"},
            {"ACO 1 verte", 0, 0, "optic_ACO_grn", "['optic_ACO_grn'] call mission_fnc_add_viseur"},
            {"ACO 2 rouge", 0, 0, "optic_Aco_smg", "['optic_Aco_smg'] call mission_fnc_add_viseur"},
            {"ACO 2 verte", 0, 0, "optic_ACO_grn_smg", "['optic_ACO_grn_smg'] call mission_fnc_add_viseur"},
            {"Holographique 1", 0, 0, "optic_Holosight", "['optic_Holosight'] call mission_fnc_add_viseur"},
            {"Holographique 2", 0, 0, "optic_Holosight_smg", "['optic_Holosight_smg'] call mission_fnc_add_viseur"},
            {"MRCO", 0, 0, "optic_MRCO", "['optic_MRCO'] call mission_fnc_add_viseur"},
            {"RCO", 0, 0, "optic_Hamr", "['optic_Hamr'] call mission_fnc_add_viseur"},
            {"ERCO", 0, 0, "optic_ERCO_blk_F", "['optic_ERCO_blk_F'] call mission_fnc_add_viseur"},
            {"ARCO", 0, 0, "optic_Arco", "['optic_Arco'] call mission_fnc_add_viseur"}
        };
	};
    class guns_goauld
	{
		armes[] = { // { nom / level / prix / id de l'arme / id du chargeur / fonction }
            // Armes de poing
			{"Lance goauld", 0, 0, "sga_staffweapon", "sga_staffweapon_mag_on", "['sga_staffweapon', 'sga_staffweapon_mag_on'] call mission_fnc_add_weapon"},
            {"Zat'ni'katel", 0, 0, "sga_zat", "sga_zat_mag_closed", "['sga_zat', 'sga_zat_mag_closed'] call mission_fnc_add_weapon"}
		};
        chargeurs[] = { // { nom / level / prix / id de l'arme / id du chargeur / fonction }
            // Armes de poing
			{"Chargeur Lance goauld", 0, 0, "sga_staffweapon", "sga_staffweapon_mag_on", "['sga_staffweapon_mag_on'] call mission_fnc_add_chargeur"},
            {"Chargeur Zat'ni'katel", 0, 0, "sga_zat_mag_closed", "sga_zat_mag_closed", "['sga_zat_mag_closed'] call mission_fnc_add_chargeur"}
		};
        viseurs[] = { // { nom / level / prix / id du viseur / fonction }

        };
	};
};

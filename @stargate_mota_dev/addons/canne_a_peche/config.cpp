#include "BIS_AddonInfo.hpp"
#include "basicdefines_A3.hpp"

//    _____  _          _                  ____                _ 
//   |_   _|/ \        / \  _   _ _ __ ___|  _ \ _ __ ___   __| |
//     | | / _ \      / _ \| | | | '__/ _ \ |_) | '__/ _ \ / _` |
//     | |/ ___ \    / ___ \ |_| | | |  __/  __/| | | (_) | (_| |
//     |_/_/   \_\  /_/   \_\__,_|_|  \___|_|   |_|  \___/ \__,_|
//                                                               

class cfgPatches
{
	class 1700_canne_a_peche
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.00;
		
		requiredAddons[] = {
			"A3_Static_F_AA_01", 
			"A3_Functions_F",
			"A3_Weapons_F", 
			"A3_characters_F", 
			"A3_Data_F", 
			"A3_Sounds_F"
		};
		
		author = "TA AureProd";
		fileName = "1700_canne_a_peche.pbo";
	};
};

class Mode_SemiAuto;
class Mode_FullAuto;

class cfgweapons
{
	class hgun_P07_F;
	class canne_a_peche_goauld : hgun_P07_F
	{
		model = "\1700_canne_a_peche\1700_canne_a_peche130.p3d";
		picture	= "\1700_canne_a_peche\icon_bouchon.paa";
		displayName = "Canne à pêche arme goauld";
		magazines[] = {};
		initSpeed = 1;
		baseWeapon = "";
		optics = false;

		class WeaponSlotsInfo 
		{
			mass = 20;
			holsterOffset = "holster";
			holsterScale = 0.001000;
		};

		reloadAction = "";
		caseless[] = {"",1,1,1};
		soundBullet[] = {caseless,1};
		recoil = "";
		recoilProne = "";
	};
};
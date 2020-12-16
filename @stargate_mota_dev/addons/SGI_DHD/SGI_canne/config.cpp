
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
	class SGI_canne
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
		fileName = "SGI_canne.pbo";
	};
};

class Mode_SemiAuto;
class Mode_FullAuto;

class cfgweapons
{
	class hgun_P07_F;
	class canne_a_peche : hgun_P07_F
	{
		model = "\SGI_canne\1700_canne_a_peche3.p3d";
		picture	= "\SGI_canne\icon_bouchon.paa";
		displayName = "Canne à pêche arme";
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

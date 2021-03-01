////////////////////////////////////////////////////////////////////
//DeRap: canne_a_peche\config.bin
//Produced from mikero's Dos Tools Dll version 7.96
//https://mikero.bytex.digital/Downloads
//'now' is Wed Feb 10 22:43:58 2021 : 'file' last modified on Fri Dec 18 18:44:49 2020
////////////////////////////////////////////////////////////////////

#define _ARMA_

class cfgPatches
{
	class 1700_canne_a_peche
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1;
		requiredAddons[] = {"A3_Static_F_AA_01","A3_Functions_F","A3_Weapons_F","A3_characters_F","A3_Data_F","A3_Sounds_F"};
		author = "TA AureProd";
		fileName = "1700_canne_a_peche.pbo";
	};
};
class Mode_SemiAuto;
class Mode_FullAuto;
class cfgweapons
{
	class hgun_P07_F;
	class canne_a_peche_goauld: hgun_P07_F
	{
		model = "/1700_canne_a_peche/canne_a_peche.p3d";
		picture = "/1700_canne_a_peche/icon_bouchon.paa";
		displayName = "Canne Ã  pÃªche arme goauld";
		magazines[] = {};
		initSpeed = 1;
		baseWeapon = "";
		optics = 0;
		class WeaponSlotsInfo
		{
			mass = 20;
			holsterOffset = "holster";
			holsterScale = 0.001;
		};
		reloadAction = "";
		caseless[] = {"",1,1,1};
		soundBullet[] = {"caseless",1};
		recoil = "";
		recoilProne = "";
	};
};
class cfgMods
{
	author = "AureProd";
	timepacked = "1608317089";
};

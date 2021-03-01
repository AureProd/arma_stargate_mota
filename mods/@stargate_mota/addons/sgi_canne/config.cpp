////////////////////////////////////////////////////////////////////
//DeRap: sgi_canne\config.bin
//Produced from mikero's Dos Tools Dll version 7.96
//https://mikero.bytex.digital/Downloads
//'now' is Wed Feb 10 22:44:03 2021 : 'file' last modified on Fri Dec 18 18:45:27 2020
////////////////////////////////////////////////////////////////////

#define _ARMA_

class cfgPatches
{
	class sgi_canne
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1;
		requiredAddons[] = {"A3_Static_F_AA_01","A3_Functions_F","A3_Weapons_F","A3_characters_F","A3_Data_F","A3_Sounds_F"};
		author = "TA AureProd";
		fileName = "sgi_canne.pbo";
	};
};
class Mode_SemiAuto;
class Mode_FullAuto;
class cfgweapons
{
	class hgun_P07_F;
	class canne_a_peche: hgun_P07_F
	{
		model = "/sgi_canne/canne_a_peche.p3d";
		picture = "/sgi_canne/icon_bouchon.paa";
		displayName = "Canne Ã  pÃªche arme";
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
	timepacked = "1608317127";
};

////////////////////////////////////////////////////////////////////
//DeRap: sgi_dhd\config.bin
//Produced from mikero's Dos Tools Dll version 7.96
//https://mikero.bytex.digital/Downloads
//'now' is Fri Dec 18 13:24:19 2020 : 'file' last modified on Fri Dec 18 11:44:02 2020
////////////////////////////////////////////////////////////////////

class CfgPatches
{
	class stargate
	{
		requiredAddons[] = {"A3_Structures_F"};
		requiredVersion = 1;
		units[] = {"SGI_dhd"};
		weapons[] = {};
	};
};
class CfgEditorCategories
{
	class SGI_stargate_gate_Objects
	{
		displayName = "Stargate Gate Objects";
	};
};
class CfgEditorSubcategories
{
	class SGI_stargate_dhd
	{
		displayName = "DHD";
		priority = 40;
		side = 1;
	};
};
class CfgVehicles
{
	class House_F;
	class SGI_dhd: House_F
	{
		model = "\sgi_dhd\SGI_dhd.p3d";
		displayName = "Stargate DHD";
		editorCategory = "SGI_stargate_gate_Objects";
		editorsubcategory = "SGI_stargate_dhd";
		scope = 2;
		icon = "";
		cost = 9400;
		armor = 100000;
		reversed = 1;
		animated = 1;
		autocenter = 0;
		class EventHandlers
		{
			init = "[_this select 0] execVM '\sgi_dhd\sqf\initgate.sqf';";
		};
		class AnimationSources
		{
			class anim_aquila
			{
				animPeriod = 0.25;
			};
		};
		hiddenselections[] = {"Earth","Crater","Virgo","Bootes","Centaurus","Libra","Serpens_Caput","Norma","Scorpio","Cra","Scutum","Sagittarius","Aquila","Mic","Capricorn","Pisces_Austrinus","Equuleus","Aquarius","Pegasus","Sculptor","Pisces","Andromeda","Triangulum","Aries","Perseus","Cetus","Taurus","Auriga","Eridanus","Orion","Canis_Minor","Monoceros","Gemini","Hydra","Lynx","Cancer","Sextans","Leo_Minor","Leo"};
	};
};

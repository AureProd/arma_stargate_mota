
class CfgPatches {

	class stargate {
		requiredAddons[] = {"A3_Structures_F"};
		requiredVersion = 1;
		units[] = {"SGI_dhd"};
		weapons[] = {};
	};
};

class CfgEditorCategories {
	class SGI_stargate_gate_Objects {
		displayName = "Stargate Gate Objects";
	};
};

class CfgEditorSubcategories {
	class SGI_stargate_dhd {
		displayName = "DHD";
		priority = 40;
		side = 1;
	};
};

class CfgVehicles {
	/*extern*/ class House_F;

    class SGI_dhd: House_F {
		model = "\SGI_DHD\SGI_dhd.p3d"; // lien de ton P3D
		displayName = "Stargate DHD";
		editorCategory = "SGI_stargate_gate_Objects"; // a pas toucher
		editorsubcategory = "SGI_stargate_dhd"; // a pas toucher
		scope = 2;
		icon = "";
		cost = 9400;
		armor = 100000;
		reversed = 1;
		animated = 1;
		autocenter = 0;
		
		class EventHandlers {
			init = "[_this select 0] execvm '\SGI_DHD\initGate.sqf'";
		};

		class AnimationSources { // liste des animations
			class anim_aquila {
				animPeriod = 0.25; // tps de anim
			};
		};
		hiddenselections[] = {
			"Earth",
			"Crater",
			"Virgo",
			"Bootes",
			"Centaurus",
			"Libra",
			"Serpens_Caput",
			"Norma",
			"Scorpio",
			"Cra",
			"Scutum",
			"Sagittarius",
			"Aquila",
			"Mic",
			"Capricorn",
			"Pisces_Austrinus",
			"Equuleus",
			"Aquarius",
			"Pegasus",
			"Sculptor",
			"Pisces",
			"Andromeda",
			"Triangulum",
			"Aries",
			"Perseus",
			"Cetus",
			"Taurus",
			"Auriga",
			"Eridanus",
			"Orion",
			"Canis_Minor",
			"Monoceros",
			"Gemini",
			"Hydra",
			"Lynx",
			"Cancer",
			"Sextans",
			"Leo_Minor",
			"Leo"
		};
	};
};
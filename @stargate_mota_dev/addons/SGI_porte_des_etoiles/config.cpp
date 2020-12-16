
//lumiere memory: light1/light2/light3/light4/light5/light6/light7/

class CfgPatches {

	class stargate {
		requiredAddons[] = {"A3_Structures_F"};
		requiredVersion = 1;
		units[] = {"SGI_porte_des_etoiles_iris", "SGI_porte_des_etoiles", "SGI_gate"};
		weapons[] = {};
	};
};

class CfgEditorCategories {
	class SGI_stargate_gate_Objects {
		displayName = "Stargate Gate Objects";
	};
};

class CfgEditorSubcategories {
	class SGI_stargate_gates {
		displayName = "Gates";
		priority = 40;
		side = 1;
	};
};

class CfgVehicles {
	/*extern*/ class House_F;

    class SGI_porte_des_etoiles_iris: House_F {
		model = "\SGI_porte_des_etoiles\SGI_porte_des_etoiles_iris.p3d";
		displayName = "STAR GATE IRIS";
		editorCategory = "SGI_stargate_gate_Objects";
		editorsubcategory = "SGI_stargate_gates";
		scope = 2;
		icon = "";
		cost = 9400;
		armor = 100000;
		reversed = 1;
		animated = 1;
		autocenter = 0;
		
		class EventHandlers {
			init = "[_this select 0] execvm '\SGI_porte_des_etoiles\initGate.sqf'";
		};

		class AnimationSources {

			class anim_ring {
				animPeriod = 10;
			};

			class anim_iris1 {
				animPeriod = 3;
			};

			class anim_iris2 {
				animPeriod = 3;
			};

			class anim_iris3 {
				animPeriod = 3;
			};

			class anim_iris4 {
				animPeriod = 3;
			};

			class anim_iris5 {
				animPeriod = 3;
			};

			class anim_iris6 {
				animPeriod = 3;
			};

			class anim_iris7 {
				animPeriod = 3;
			};

			class anim_iris8 {
				animPeriod = 3;
			};

			class anim_iris9 {
				animPeriod = 3;
			};

			class anim_iris10 {
				animPeriod = 3;
			};

			class anim_iris11 {
				animPeriod = 3;
			};

			class anim_iris12 {
				animPeriod = 3;
			};

			class anim_iris13 {
				animPeriod = 3;
			};

			class anim_iris14 {
				animPeriod = 3;
			};

			class anim_iris15 {
				animPeriod = 3;
			};

			class anim_iris16 {
				animPeriod = 3;
			};

			class anim_iris17 {
				animPeriod = 3;
			};

			class anim_iris18 {
				animPeriod = 3;
			};

			class anim_iris19 {
				animPeriod = 3;
			};

			class anim_iris20 {
				animPeriod = 3;
			};

			class anim_iris21 {
				animPeriod = 3;
			};

			class anim_iris22 {
				animPeriod = 3;
			};
		};
		hiddenselections[] = {"chevron1", "chevron2", "chevron3", "chevron4", "chevron5", "chevron6", "chevron7", "chevron8", "chevron9", "event", "ring"};
	};
	class SGI_porte_des_etoiles: House_F {
		model = "\SGI_porte_des_etoiles\SGI_porte_des_etoiles.p3d";
		displayName = "STAR GATE";
		editorCategory = "SGI_stargate_gate_Objects";
		editorsubcategory = "SGI_stargate_gates";
		scope = 2;
		icon = "";
		cost = 9400;
		armor = 100000;
		reversed = 1;
		animated = 1;
		autocenter = 0;

		class EventHandlers {
			init = "[_this select 0] execvm '\SGI_porte_des_etoiles\initGate.sqf'";
		};

		class AnimationSources {

			class anim_ring {
				animPeriod = 10;
			};

		};
		hiddenselections[] = {"chevron1", "chevron2", "chevron3", "chevron4", "chevron5", "chevron6", "chevron7", "chevron8", "chevron9", "event", "ring"};
	};
	class SGI_gate: House_F {
		model = "\SGI_porte_des_etoiles\sga_stargate.p3d";
		displayName = "STAR GATE bis";
		editorCategory = "SGI_stargate_gate_Objects";
		editorsubcategory = "SGI_stargate_gates";
		scope = 2;
		icon = "";
		cost = 9400;
		armor = 100000;
		reversed = 1;
		animated = 1;
		autocenter = 0;

		class EventHandlers {
			init = "[_this select 0] execvm '\SGI_porte_des_etoiles\initGate.sqf'";
		};

		class AnimationSources {

			class anim_ring {
				animPeriod = 10;
			};

			class lock_light {
				animPeriod = 0.200000;
			};

			class lock_chevron {
				animPeriod = 0.200000;
			};

			class anim_iris1 {
				animPeriod = 3;
			};

			class anim_iris2 {
				animPeriod = 3;
			};

			class anim_iris3 {
				animPeriod = 3;
			};

			class anim_iris4 {
				animPeriod = 3;
			};

			class anim_iris5 {
				animPeriod = 3;
			};

			class anim_iris6 {
				animPeriod = 3;
			};

			class anim_iris7 {
				animPeriod = 3;
			};

			class anim_iris8 {
				animPeriod = 3;
			};

			class anim_iris9 {
				animPeriod = 3;
			};

			class anim_iris10 {
				animPeriod = 3;
			};

			class anim_iris11 {
				animPeriod = 3;
			};

			class anim_iris12 {
				animPeriod = 3;
			};

			class anim_iris13 {
				animPeriod = 3;
			};

			class anim_iris14 {
				animPeriod = 3;
			};

			class anim_iris15 {
				animPeriod = 3;
			};

			class anim_iris16 {
				animPeriod = 3;
			};

			class anim_iris17 {
				animPeriod = 3;
			};

			class anim_iris18 {
				animPeriod = 3;
			};

			class anim_iris19 {
				animPeriod = 3;
			};

			class anim_iris20 {
				animPeriod = 3;
			};

			class anim_iris21 {
				animPeriod = 3;
			};

			class anim_iris22 {
				animPeriod = 3;
			};
		};
		hiddenselections[] = {"light1a", "light1b", "light2a", "light2b", "light3a", "light3b", "light4a", "light4b", "light5a", "light5b", "light6a", "light6b", "light7a", "light7b", "light8a", "light8b", "light9a", "light9b", "eh", "dummy1", "ring", "ring1", "separators"};
	};
};
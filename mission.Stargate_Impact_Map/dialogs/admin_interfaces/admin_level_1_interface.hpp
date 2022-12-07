
class admin_level_1_interface
{
	idd = 10100;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
    class Controls
	{
		class background_border
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.154375;
			y = safeZoneY + safeZoneH * 0.07666667;
			w = safeZoneW * 0.690625;
			h = safeZoneH * 0.84555556;
			style = 0;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class background_1
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.16875;
			y = safeZoneY + safeZoneH * 0.10222223;
			w = safeZoneW * 0.6625;
			h = safeZoneH * 0.28222223;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.8,0.8,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class background_2
		{
			type = 0;
			idc = -1;
			x = safeZoneX+safeZoneW*0.16875;
			y = safeZoneY+safeZoneH*0.41333334;
			w = safeZoneW*0.41375;
			h = safeZoneH*0.48333334;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.8,0.8,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class close_button
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.825625;
			y = safeZoneY + safeZoneH * 0.07666667;
			w = safeZoneW * 0.019375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = "X";
			borderSize = 0;
			colorBackground[] = {1,0,0,1};
			colorBackgroundActive[] = {0,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {1,0,0,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1;";
		};
		class near_players_list
		{
			type = 5;
			idc = 10101;
			x = safeZoneX + safeZoneW * 0.176875;
			y = safeZoneY + safeZoneH * 0.11444445;
			w = safeZoneW * 0.2225;
			h = safeZoneH * 0.25666667;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
			onLBSelChanged = "[] call mission_fnc_interface_soldat_liste_joueurs_proches;";
		};
		class illegal_objects_list
		{
			type = 5;
			idc = 10102;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.16888889;
			w = safeZoneW * 0.189375;
			h = safeZoneH * 0.20111112;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			colorPicture[] = {1,1,1,1};
			colorPictureSelected[] = {1,1,1,1};
    		colorPictureDisabled[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			onLBSelChanged = "[] call mission_fnc_interface_soldat_liste_items_illegals;";
		};
		class licenses_select
		{
			type = 4;
			idc = 10103;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.11777778;
			w = safeZoneW * 0.189375;
			h = safeZoneH * 0.03888889;
			style = 16;
			arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_active_ca.paa";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,1,1,1};
			colorSelectBackground[] = {0.8,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1.0};
			soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1.0};
			soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1.0};
			wholeHeight = 0.3;
			class ComboScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
			onLBSelChanged = "[] call mission_fnc_interface_soldat_select_licences_item;";
		};
		class destroy_button
		{
			type = 1;
			idc = 10104;
			x = safeZoneX + safeZoneW * 0.53625;
			y = safeZoneY + safeZoneH * 0.26777778;
			w = safeZoneW * 0.08625;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = "$STR_admin_bouton_Supprimer";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_interface_soldat_bouton_detruire;";
		};
		class penalty_button
		{
			type = 1;
			idc = 10105;
			x = safeZoneX + safeZoneW * 0.53625;
			y = safeZoneY + safeZoneH * 0.32777778;
			w = safeZoneW * 0.08625;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = "$STR_admin_bouton_amende";
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW/safezoneH)min 1.2)/1.2)/25)*1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_interface_soldat_bouton_amende;";
		};
		class penalty_cost
		{
			type = 2;
			idc = 10106;
			x = safeZoneX + safeZoneW * 0.41125;
			y = safeZoneY + safeZoneH * 0.32777778;
			w = safeZoneW * 0.115;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = "0";
			autocomplete = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,1,1,0.25};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH)min 1.2) / 1.2) / 25) * 1);
			
		};
		class players_list
		{
			type = 5;
			idc = 10107;
			x = safeZoneX + safeZoneW * 0.1775;
			y = safeZoneY + safeZoneH * 0.43111112;
			w = safeZoneW * 0.2225;
			h = safeZoneH * 0.25444445;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			onLBSelChanged = "[] call mission_fnc_interface_chef_soldats_liste_joueurs;";
		};
		class white_list_soldier_toggle_button
		{
			type = 1;
			idc = 10108;
			x = safeZoneX + safeZoneW * 0.41125;
			y = safeZoneY + safeZoneH * 0.43111112;
			w = safeZoneW * 0.159375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_erreur; // $STR_admin_bouton_wl_soldat
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_interface_chef_soldats_bouton_wl_soldat;";
		};
	};
};


class y_menu
{
	idd = 11600;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	onUnload = "menu_y_ok = true;"; // TODO: strange
	class Controls
	{
		class background_picture
		{
			type = 0;
			idc = 11601;
			x = safeZoneX + safeZoneW * 0.19375;
			y = safeZoneY + safeZoneH * 0.11666667;
			w = safeZoneW * 0.6375;
			h = safeZoneH * 0.84333334;
			style = 48;
			text = "pictures\interfaces\y_menus\y_menu_tauri.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class group_button
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.28111112;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; [] call mission_fnc_interface_groupe;"; // TODO: strange
		};
		class documents_button
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.34666667;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; [] call mission_fnc_interface_docs;"; // TODO: strange
		};
		class medical_button
		{
			type = 1;
			idc = 11602;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.41222223;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; [] call mission_fnc_interface_medical;"; // TODO: strange
		};
		class planets_button
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.47888889;
			w = safeZoneW * 0.11;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; [] call mission_fnc_interface_planetes;"; // TODO: strange
		};
		class quests_button
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.54333334;
			w = safeZoneW * 0.11;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; [] call mission_fnc_interface_journal_quetes_perso;"; // TODO: strange
		};
		class class_button
		{
			type = 1;
			idc = 11603;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.60777778;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; ['popup'] call mission_fnc_interface_open;"; // TODO: strange
		};
		class sync_datas_button
		{
			type = 1;
			idc = 11604;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.75777778;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_syns_data; hint localize 'STR_sauvegarde_syns_data';"; // TODO: strange
		};
		class object_use_button
		{
			type = 1;
			idc = 11605;
			x = safeZoneX + safeZoneW * 0.61302084;
			y = safeZoneY + safeZoneH * 0.75;
			w = safeZoneW * 0.06614584;
			h = safeZoneH * 0.02592593;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_menuY_bouton_utiliser;";
		};
		class object_give_button
		{
			type = 1;
			idc = 11606;
			x = safeZoneX + safeZoneW * 0.73802084;
			y = safeZoneY + safeZoneH * 0.74907408;
			w = safeZoneW * 0.059375;
			h = safeZoneH * 0.02685186;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_menuY_bouton_donner;";
		};
		class object_delete_button
		{
			type = 1;
			idc = 11607;
			x = safeZoneX + safeZoneW * 0.665625;
			y = safeZoneY + safeZoneH * 0.78611112;
			w = safeZoneW * 0.0890625;
			h = safeZoneH * 0.02592593;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_menuY_bouton_supprimer;";
		};
		class admin_button
		{
			type = 1;
			idc = 11608;
			x = safeZoneX + safeZoneW * 0.71822917;
			y = safeZoneY + safeZoneH * 0.25833334;
			w = safeZoneW * 0.05833334;
			h = safeZoneH * 0.02685186;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_menuY_open_admin;";
		};
		class close_button
		{
			type = 1;
			idc = 11609;
			x = safeZoneX + safeZoneW * 0.78333334;
			y = safeZoneY + safeZoneH * 0.25833334;
			w = safeZoneW * 0.02291667;
			h = safeZoneH * 0.02685186;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true;"; // TODO: strange
		};
		class skills_list
		{
			type = 5;
			idc = 11610;
			x = safeZoneX + safeZoneW * 0.434375;
			y = safeZoneY + safeZoneH * 0.37444445;
			w = safeZoneW * 0.150625;
			h = safeZoneH * 0.31555556;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			colorPicture[] = {1,1,1,1};
			colorPictureSelected[] = {1,1,1,1};
    		colorPictureDisabled[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"",0,0};
			class ListScrollBar
			{
				color[] = {0,0,0,0};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
			onLBSelChanged = "if ((lbCurSel ((findDisplay 3000) displayCtrl 3001)) != -1) then {((findDisplay 3000) displayCtrl 3001) lbSetCurSel -1;};";
		};
		class objects_list
		{
			type = 5;
			idc = 11611;
			x = safeZoneX + safeZoneW * 0.629375;
			y = safeZoneY + safeZoneH * 0.37333334;
			w = safeZoneW * 0.150625;
			h = safeZoneH * 0.31555556;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorSelectBackground[] = {1,1,1,1};
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
			onLBSelChanged = "[] call mission_fnc_menuY_liste_objets;";
			onLBDblClick = "playSound 'button'; [] call mission_fnc_menuY_bouton_utiliser;";
		};
		class xp_bar
		{
			type = 8;
			idc = 11612;
			x = safeZoneX + safeZoneW * 0.22875;
			y = safeZoneY + safeZoneH * 0.71444445;
			w = safeZoneW * 0.155625;
			h = safeZoneH * 0.03111112;
			style = 0;
			colorBar[] = {0.6,0,0,0.5};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			tooltipColorBox[] = {0,0,0,0};
			tooltipColorShade[] = {0,0,0,0};
			tooltipColorText[] = {0,0,0,0};
		};
		class xp_text
		{
			type = 0;
			idc = 11613;
			x = safeZoneX + safeZoneW * 0.2734375;
			y = safeZoneY + safeZoneH * 0.67222223;
			w = safeZoneW * 0.06197917;
			h = safeZoneH * 0.03148149;
			style = 2;
			text = $STR_erreur;
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.702,0.702,0.702,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class objects_text
		{
			type = 2;
			idc = 11614;
			x = safeZoneX + safeZoneW * 0.695;
			y = safeZoneY + safeZoneH * 0.74555556;
			w = safeZoneW * 0.026875;
			h = safeZoneH * 0.03222223;
			style = 2;
			text = "1";
			autocomplete = "";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelection[] = {0,0,0,0};
			colorText[] = {0.702,0.702,0.702,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class give_players_list
		{
			type = 4;
			idc = 11615;
			x = safeZoneX + safeZoneW * 0.629375;
			y = safeZoneY + safeZoneH * 0.71;
			w = safeZoneW * 0.151875;
			h = safeZoneH * 0.03222223;
			style = 16+2;
			arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_active_ca.paa";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,1,1,1};
			colorSelectBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
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
			onLBSelChanged = "[] call mission_fnc_menuY_liste_joueurs;";
		};
		class xp_bar_text
		{
			type = 0;
			idc = 11616;
			x = safeZoneX + safeZoneW * 0.22875;
			y = safeZoneY + safeZoneH * 0.71222223;
			w = safeZoneW * 0.155625;
			h = safeZoneH * 0.03111112;
			style = 2;
			text = "";
			colorBackground[] = {0.0549,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class weight_bar
		{
			type = 8;
			idc = 11617;
			x = safeZoneX + safeZoneW * 0.43375;
			y = safeZoneY + safeZoneH * 0.71444445;
			w = safeZoneW * 0.151875;
			h = safeZoneH * 0.03111112;
			style = 0;
			colorBar[] = {0.6,0,0,0.5};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			tooltipColorBox[] = {0,0,0,0};
			tooltipColorShade[] = {0,0,0,0};
			tooltipColorText[] = {0,0,0,0};
		};
		class weight_bar_text
		{
			type = 0;
			idc = 11618;
			x = safeZoneX + safeZoneW * 0.43375;
			y = safeZoneY + safeZoneH * 0.71666667;
			w = safeZoneW * 0.1525;
			h = safeZoneH * 0.02222223;
			style = 2;
			text = "";
			colorBackground[] = {0.0549,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW/safezoneH) min 1.2)/1.2)/25)*1);
		};
	};
};


class group_interface_tauri
{
	idd = 10800;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	class Controls
	{
		class background_picture
		{
			type = 0;
			idc = 10801;
			x = safeZoneX + safeZoneW * 0.23375;
			y = safeZoneY + safeZoneH * 0.16888889;
			w = safeZoneW * 0.536875;
			h = safeZoneH * 0.70888889;
			style = 48;
			text = "pictures\interfaces\group_interfaces\group_interface_tauri.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = 0;
		};
		class reload_picture
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.24895834;
			y = safeZoneY + safeZoneH * 0.28703704;
			w = safeZoneW * 0.015625;
			h = safeZoneH * 0.02592593;
			style = 48;
			text = "pictures\interfaces\group_interfaces\reload_button_element.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.9,0.9,0.9,0.75};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class reload_button
		{
			type = 1;
			idc = 10802;
			x = safeZoneX + safeZoneW * 0.24739584;
			y = safeZoneY + safeZoneH * 0.28333334;
			w = safeZoneW * 0.01875;
			h = safeZoneH * 0.03240741;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.5,0.5,0,0.3};
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
			onButtonClick = "playSound 'button'; [true] call mission_fnc_interface_groupe;";
		};
		class team_list
		{
			type = 5;
			idc = 10803;
			x = safeZoneX + safeZoneW * 0.29125;
			y = safeZoneY + safeZoneH * 0.35222223;
			w = safeZoneW * 0.1275;
			h = safeZoneH * 0.26444445;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {0.702,0.102,0.102,1};
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
			onLBSelChanged = "if ((lbCurSel ((findDisplay 10800) displayCtrl 10803)) != -1) then {((findDisplay 10800) displayCtrl 10803) lbSetCurSel -1;};";
		};
		class players_list
		{
			type = 5;
			idc = 10804;
			x = safeZoneX + safeZoneW * 0.579375;
			y = safeZoneY + safeZoneH * 0.35333334;
			w = safeZoneW * 0.1225;
			h = safeZoneH * 0.26333334;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {0.702,0.102,0.102,1};
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
			onLBSelChanged = "[] call mission_fnc_groupe_liste_joueurs;";
		};
		class close_button
		{
			type = 1;
			idc = 10805;
			x = safeZoneX + safeZoneW * 0.64875;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.095;
			h = safeZoneH * 0.04222223;
			style = 2+192;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.25};
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
			onButtonClick = "playSound 'button'; closeDialog 1;";
		};
		class invite_button
		{
			type = 1;
			idc = 10806;
			x = safeZoneX + safeZoneW * 0.2775;
			y = safeZoneY + safeZoneH * 0.68555556;
			w = safeZoneW * 0.14;
			h = safeZoneH * 0.06444445;
			style = 2+192;
            text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_groupe_bouton_inviter;";
		};
		class quit_button
		{
			type = 1;
			idc = 10807;
			x = safeZoneX + safeZoneW * 0.435625;
			y = safeZoneY + safeZoneH * 0.68555556;
			w = safeZoneW * 0.14;
			h = safeZoneH * 0.06444445;
			style = 2+192;
            text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_groupe_bouton_quitter;";
		};
		class join_button
		{
			type = 1;
			idc = 10808;
			x = safeZoneX + safeZoneW * 0.5925;
			y = safeZoneY + safeZoneH * 0.68444445;
			w = safeZoneW * 0.14;
			h = safeZoneH * 0.06555556;
			style = 2+192;
            text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_groupe_bouton_rejoindre;";
		};
	};
};

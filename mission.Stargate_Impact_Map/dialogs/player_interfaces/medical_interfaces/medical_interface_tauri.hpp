
class medical_interface_tauri
{
	idd = 10900;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
    class Controls
	{
		class background_picture
		{
			type = 0;
			idc = 10901;
			x = safeZoneX + safeZoneW * 0.21875;
			y = safeZoneY + safeZoneH * 0.15925926;
			w = safeZoneW * 0.5625;
			h = safeZoneH * 0.6962963;
			style = 48;
			text = "pictures\interfaces\medical_interfaces\medical_interface_tauri.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class background_sickness_button_picture
		{
			type = 0;
			idc = 10902;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.29444445;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04351852;
			style = 0;
			text = "";
			// coloreBackground = {1,0,0,0.25};
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class background_wound_button_picture
		{
			type = 0;
			idc = 10903;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.34907408;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class background_food_button_picture
		{
			type = 0;
			idc = 10904;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.40370371;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		/*  
			logos colors :
			--> colorBackground[] = {0,0,0,0}; <-- transparent color
            --> colorBackground[] = {0,1,0,0.1}; <-- green color
            --> colorBackground[] = {1,0.5,0,0.1}; <-- orange color
            --> colorBackground[] = {1,0,0,0.1}; <-- red color        
		*/
		class head_logo
		{
			type = 0;
			idc = 10905;
			x = safeZoneX + safeZoneW * 0.48697917;
			y = safeZoneY + safeZoneH * 0.3712963;
			w = safeZoneW * 0.02135417;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class bust_logo
		{
			type = 0;
			idc = 10906;
			x = safeZoneX + safeZoneW * 0.4875;
			y = safeZoneY + safeZoneH * 0.47314815;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class right_arm_logo
		{
			type = 0;
			idc = 10907;
			x = safeZoneX + safeZoneW * 0.52239584;
			y = safeZoneY + safeZoneH * 0.4712963;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class left_arm_logo
		{
			type = 0;
			idc = 10908;
			x = safeZoneX + safeZoneW * 0.44427084;
			y = safeZoneY + safeZoneH * 0.40833334;
			w = safeZoneW * 0.0203125;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class right_leg_logo
		{
			type = 0;
			idc = 10909;
			x = safeZoneX + safeZoneW * 0.49791667;
			y = safeZoneY + safeZoneH * 0.57962963;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class left_leg_logo
		{
			type = 0;
			idc = 10910;
			x = safeZoneX + safeZoneW * 0.47552084;
			y = safeZoneY + safeZoneH * 0.58055556;
			w = safeZoneW * 0.01979167;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class head_logo_button
		{
			type = 1;
			idc = 10911;
			x = safeZoneX + safeZoneW * 0.48697917;
			y = safeZoneY + safeZoneH * 0.3712963;
			w = safeZoneW * 0.02135417;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [1] call mission_fnc_utiliser_blessure;";
		};
		class bust_logo_button
		{
			type = 1;
			idc = 10912;
			x = safeZoneX + safeZoneW * 0.4875;
			y = safeZoneY + safeZoneH * 0.47314815;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [2] call mission_fnc_utiliser_blessure;";
		};
		class right_arm_logo_button
		{
			type = 1;
			idc = 10913;
			x = safeZoneX + safeZoneW * 0.52239584;
			y = safeZoneY + safeZoneH * 0.4712963;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [3] call mission_fnc_utiliser_blessure;";
		};
		class left_arm_logo_button
		{
			type = 1;
			idc = 10914;
			x = safeZoneX + safeZoneW * 0.44427084;
			y = safeZoneY + safeZoneH * 0.40833334;
			w = safeZoneW * 0.0203125;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [4] call mission_fnc_utiliser_blessure;";
		};
		class right_leg_logo_button
		{
			type = 1;
			idc = 10915;
			x = safeZoneX + safeZoneW * 0.49791667;
			y = safeZoneY + safeZoneH * 0.57962963;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [5] call mission_fnc_utiliser_blessure;";
		};
		class left_leg_logo_button
		{
			type = 1;
			idc = 10916;
			x = safeZoneX + safeZoneW * 0.47552084;
			y = safeZoneY + safeZoneH * 0.58055556;
			w = safeZoneW * 0.01979167;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [6] call mission_fnc_utiliser_blessure;";
		};
		class health_bar
		{
			type = 8;
			idc = 10917;
			x = safeZoneX + safeZoneW * 0.27083334;
			y = safeZoneY + safeZoneH * 0.525;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.0425926;
			style = 0;
			colorBar[] = {1,0,0,0.25};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
		};
		class hungry_bar
		{
			type = 8;
			idc = 10918;
			x = safeZoneX + safeZoneW * 0.27083334;
			y = safeZoneY + safeZoneH * 0.57777778;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.0425926;
			style = 0;
			colorBar[] = {1,1,0,0.2};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
		};
		class thirst_bar
		{
			type = 8;
			idc = 10919;
			x = safeZoneX + safeZoneW * 0.27083334;
			y = safeZoneY + safeZoneH * 0.63055556;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.0425926;
			style = 0;
			colorBar[] = {0,0,0.5,0.3};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
		};
		class objects_list
		{
			type = 5;
			idc = 10920;
			x = safeZoneX + safeZoneW * 0.603125;
			y = safeZoneY + safeZoneH * 0.37222223;
			w = safeZoneW * 0.13229167;
			h = safeZoneH * 0.25925926;
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
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.2};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
            onLBDblClick = "[] call mission_fnc_medical_liste_objets;";
		};
		class close_button
		{
			type = 1;
			idc = 10921;
			x = safeZoneX + safeZoneW * 0.73854167;
			y = safeZoneY + safeZoneH * 0.27592593;
			w = safeZoneW * 0.02135417;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.25};
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
		class sickness_button
		{
			type = 1;
			idc = 10922;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.29444445;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04351852;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_medical_bouton_maladie;";
		};
		class wound_button
		{
			type = 1;
			idc = 10923;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.34907408;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_medical_bouton_blessure;";
		};
		class food_button
		{
			type = 1;
			idc = 10924;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.40370371;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_medical_bouton_nourriture;";
		};
	};
};
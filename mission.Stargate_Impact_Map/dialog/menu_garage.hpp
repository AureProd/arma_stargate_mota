
class menu_garage
{
	idd = 30000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
	class Controls
	{
		class photo_fond
		{
			type = 0;
			idc = 30010;
			x = safeZoneX + safeZoneW * 0.21875;
			y = safeZoneY + safeZoneH * 0.10222223;
			w = safeZoneW * 0.5625;
			h = safeZoneH * 0.77;
			style = 48;
			text = "pictures\interfaces\garage\menu_garage.paa";
			colorBackground[] = {1,1,1,1};
			colorText[] = {0.9451,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_fermer
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.65875;
			y = safeZoneY + safeZoneH * 0.23555556;
			w = safeZoneW * 0.0975;
			h = safeZoneH * 0.04666667;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.3};
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
			onButtonClick = "playSound 'button'; closeDialog 1;";
			
		};
		class liste_vehicle
		{
			type = 5;
			idc = 30001;
			x = safeZoneX + safeZoneW * 0.34;
			y = safeZoneY + safeZoneH * 0.35444445;
			w = safeZoneW * 0.31125;
			h = safeZoneH * 0.26777778;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.25);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			onLBSelChanged = "[] call mission_fnc_garage_liste_vehicules;";
			onLBDblClick = "playSound 'button'; [] call mission_fnc_garage_db_click_liste_vehicules;";
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class fond_bouton_location
		{
			type = 0;
			idc = 30012;
			x = safeZoneX + safeZoneW * 0.245625;
			y = safeZoneY + safeZoneH * 0.24111112;
			w = safeZoneW * 0.08;
			h = safeZoneH * 0.03888889;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_achat
		{
			type = 0;
			idc = 30013;
			x = safeZoneX + safeZoneW * 0.245625;
			y = safeZoneY + safeZoneH * 0.29222223;
			w = safeZoneW * 0.08;
			h = safeZoneH * 0.03888889;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_location
		{
			type = 1;
			idc = 30002;
			x = safeZoneX + safeZoneW * 0.245625;
			y = safeZoneY + safeZoneH * 0.24111112;
			w = safeZoneW * 0.08;
			h = safeZoneH * 0.03888889;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.3};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_garage_bouton_location;";
			
		};
		class bouton_achat
		{
			type = 1;
			idc = 30003;
			x = safeZoneX + safeZoneW * 0.245625;
			y = safeZoneY + safeZoneH * 0.29222223;
			w = safeZoneW * 0.08;
			h = safeZoneH * 0.03888889;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.3};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_garage_bouton_achat;";
			
		};
		class bouton_louer
		{
			type = 1;
			idc = 30004;
			x = safeZoneX + safeZoneW * 0.259375;
			y = safeZoneY + safeZoneH * 0.66666667;
			w = safeZoneW * 0.135;
			h = safeZoneH * 0.06555556;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.3};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_garage_bouton_louer;";
			
		};
		class bouton_sortir
		{
			type = 1;
			idc = 30005;
			x = safeZoneX + safeZoneW * 0.431875;
			y = safeZoneY + safeZoneH * 0.66666667;
			w = safeZoneW * 0.134375;
			h = safeZoneH * 0.06555556;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.3};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_garage_bouton_sortir;";
			
		};
		class bouton_acheter
		{
			type = 1;
			idc = 30006;
			x = safeZoneX + safeZoneW * 0.60375;
			y = safeZoneY + safeZoneH * 0.66666667;
			w = safeZoneW * 0.135;
			h = safeZoneH * 0.06555556;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.3};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_garage_bouton_acheter;";
			
		};
		
	};
};


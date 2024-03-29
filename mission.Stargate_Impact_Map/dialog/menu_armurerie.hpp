
class menu_armurerie
{
	idd = 8000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
    //onKeyDown = "";
    //onUnload = "";
	class Controls
	{
		class image_fond
		{
			type = 0;
			idc = 8010;
			x = safeZoneX + safeZoneW * 0.344375;
			y = safeZoneY + safeZoneH * 0.14666667;
			w = safeZoneW * 0.6175;
			h = safeZoneH * 0.79;
			style = 48;
			text = "pictures\interfaces\menu_achats\menu_armurerie.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.902,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_fermer
		{
			type = 1;
			idc = 8001;
			x = safeZoneX + safeZoneW * 0.6171875;
			y = safeZoneY + safeZoneH * 0.27222223;
			w = safeZoneW * 0.02239584;
			h = safeZoneH * 0.025;
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
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1;";
		};
		class fond_bouton_arme
		{
			type = 0;
			idc = 8003;
			x = safeZoneX + safeZoneW * 0.371875;
			y = safeZoneY + safeZoneH * 0.30777778;
			w = safeZoneW * 0.106875;
			h = safeZoneH * 0.04666667;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class fond_bouton_munition
		{
			type = 0;
			idc = 8005;
			x = safeZoneX + safeZoneW * 0.52;
			y = safeZoneY + safeZoneH * 0.30777778;
			w = safeZoneW * 0.10625;
			h = safeZoneH * 0.04666667;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class fond_bouton_viseur
		{
			type = 0;
			idc = 8007;
			x = safeZoneX + safeZoneW * 0.361875;
			y = safeZoneY + safeZoneH * 0.38222223;
			w = safeZoneW * 0.049375;
			h = safeZoneH * 0.02111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class bouton_arme
		{
			type = 1;
			idc = 8002;
			x = safeZoneX + safeZoneW * 0.371875;
			y = safeZoneY + safeZoneH * 0.30777778;
			w = safeZoneW * 0.106875;
			h = safeZoneH * 0.04666667;
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
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_armurerie_bouton_armes;";
		};
		class bouton_munition
		{
			type = 1;
			idc = 8004;
			x = safeZoneX + safeZoneW * 0.52;
			y = safeZoneY + safeZoneH * 0.30777778;
			w = safeZoneW * 0.10625;
			h = safeZoneH * 0.04666667;
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
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_armurerie_bouton_munitions;";
		};
		class bouton_viseur
		{
			type = 1;
			idc = 8006;
			x = safeZoneX + safeZoneW * 0.361875;
			y = safeZoneY + safeZoneH * 0.38222223;
			w = safeZoneW * 0.049375;
			h = safeZoneH * 0.02111112;
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
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_armurerie_bouton_viseurs;";
		};
		class bouton_acheter
		{
			type = 1;
			idc = 8008;
			x = safeZoneX + safeZoneW * 0.4475;
			y = safeZoneY + safeZoneH * 0.70777778;
			w = safeZoneW * 0.10625;
			h = safeZoneH * 0.04777778;
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
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_armurerie_bouton_acheter;";
		};
		class liste_objets
		{
			type = 5;
			idc = 8009;
			x = safeZoneX + safeZoneW * 0.4275;
			y = safeZoneY + safeZoneH * 0.38;
			w = safeZoneW * 0.1425;
			h = safeZoneH * 0.29222223;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0.0016,0};
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
            onLBSelChanged = "[] call mission_fnc_armurerie_liste_objets;";
			onLBDblClick = "playSound 'button'; [] call mission_fnc_armurerie_bouton_acheter;";
		};
	};
};
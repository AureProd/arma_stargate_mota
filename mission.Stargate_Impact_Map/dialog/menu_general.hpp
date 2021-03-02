
class menu_general
{
	idd = 20000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
	class Controls
	{
		class image_fond
		{
			type = 0;
			idc = 20050;
			x = safeZoneX + safeZoneW * 0.220625;
			y = safeZoneY + safeZoneH * 0.08;
			w = safeZoneW * 0.55875;
			h = safeZoneH * 0.84;
			style = 48;
			text = "pictures\interfaces\menu_achats\marcher_general\menumagasin.paa";
			colorBackground[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
        class fond_bouton_inventaire
		{
			type = 0;
			idc = 200011;
			x = safeZoneX + safeZoneW * 0.5125;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_magasin
		{
			type = 0;
			idc = 200041;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.09625;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class inventaire
		{
			type = 1;
			idc = 20001;
			x = safeZoneX + safeZoneW * 0.5125;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_marcher_general_bouton_inventaire;";
		};
		class magasin
		{
			type = 1;
			idc = 20004;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.09625;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_marcher_general_bouton_magasin;";
		};
		class acheter_vendre
		{
			type = 1;
			idc = 20002;
			x = safeZoneX + safeZoneW * 0.4475;
			y = safeZoneY + safeZoneH * 0.71555556;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_marcher_general_bouton_acheter;";
		};
		class fermer
		{
			type = 1;
			idc = 20003;
			x = safeZoneX + safeZoneW * 0.600625;
			y = safeZoneY + safeZoneH * 0.25333334;
			w = safeZoneW * 0.02125;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
		class liste
		{
			type = 5;
			idc = 20005;
			x = safeZoneX + safeZoneW * 0.428125;
			y = safeZoneY + safeZoneH * 0.36555556;
			w = safeZoneW * 0.131875;
			h = safeZoneH * 0.31333334;
			style = 16;
			colorBackground[] = {1,1,1,0};
			colorDisabled[] = {1,1,1,0};
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
			onLBSelChanged = "[] call mission_fnc_marcher_general_liste_objets;";
            onLBDblClick = "playSound 'button'; [] call mission_fnc_marcher_general_bouton_acheter;";
		};
	};
};

class menu_boucherie
{
	idd = 20000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
	class Controls
	{
		class image_fond
		{
			type = 0;
			idc = 20050;
			x = safeZoneX + safeZoneW * 0.220625;
			y = safeZoneY + safeZoneH * 0.08;
			w = safeZoneW * 0.55875;
			h = safeZoneH * 0.84;
			style = 48;
			text = "pictures\interfaces\menu_achats\boucherie\menuboucherie.paa";
			colorBackground[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
        class fond_bouton_inventaire
		{
			type = 0;
			idc = 200011;
			x = safeZoneX + safeZoneW * 0.5125;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_magasin
		{
			type = 0;
			idc = 200041;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.09625;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class inventaire
		{
			type = 1;
			idc = 20001;
			x = safeZoneX + safeZoneW * 0.5125;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_boucherie_bouton_inventaire;";
		};
		class magasin
		{
			type = 1;
			idc = 20004;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.09625;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_boucherie_bouton_magasin;";
		};
		class acheter_vendre
		{
			type = 1;
			idc = 20002;
			x = safeZoneX + safeZoneW * 0.4475;
			y = safeZoneY + safeZoneH * 0.71555556;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_boucherie_bouton_acheter;";
		};
		class fermer
		{
			type = 1;
			idc = 20003;
			x = safeZoneX + safeZoneW * 0.600625;
			y = safeZoneY + safeZoneH * 0.25333334;
			w = safeZoneW * 0.02125;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
		class liste
		{
			type = 5;
			idc = 20005;
			x = safeZoneX + safeZoneW * 0.428125;
			y = safeZoneY + safeZoneH * 0.36555556;
			w = safeZoneW * 0.131875;
			h = safeZoneH * 0.31333334;
			style = 16;
			colorBackground[] = {1,1,1,0};
			colorDisabled[] = {1,1,1,0};
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
			onLBSelChanged = "[] call mission_fnc_boucherie_liste_objets;";
            onLBDblClick = "playSound 'button'; [] call mission_fnc_boucherie_bouton_acheter;";
		};
	};
};

class menu_poissonerie
{
	idd = 20000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
	class Controls
	{
		class image_fond
		{
			type = 0;
			idc = 20050;
			x = safeZoneX + safeZoneW * 0.220625;
			y = safeZoneY + safeZoneH * 0.08;
			w = safeZoneW * 0.55875;
			h = safeZoneH * 0.84;
			style = 48;
			text = "pictures\interfaces\menu_achats\poissonerie\menupoissonnerie.paa";
			colorBackground[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
        class fond_bouton_inventaire
		{
			type = 0;
			idc = 200011;
			x = safeZoneX + safeZoneW * 0.5125;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_magasin
		{
			type = 0;
			idc = 200041;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.09625;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class inventaire
		{
			type = 1;
			idc = 20001;
			x = safeZoneX + safeZoneW * 0.5125;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_poissonerie_bouton_inventaire;";
		};
		class magasin
		{
			type = 1;
			idc = 20004;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.09625;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_poissonerie_bouton_magasin;";
		};
		class acheter_vendre
		{
			type = 1;
			idc = 20002;
			x = safeZoneX + safeZoneW * 0.4475;
			y = safeZoneY + safeZoneH * 0.71555556;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_poissonerie_bouton_acheter;";
		};
		class fermer
		{
			type = 1;
			idc = 20003;
			x = safeZoneX + safeZoneW * 0.600625;
			y = safeZoneY + safeZoneH * 0.25333334;
			w = safeZoneW * 0.02125;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
		class liste
		{
			type = 5;
			idc = 20005;
			x = safeZoneX + safeZoneW * 0.428125;
			y = safeZoneY + safeZoneH * 0.36555556;
			w = safeZoneW * 0.131875;
			h = safeZoneH * 0.31333334;
			style = 16;
			colorBackground[] = {1,1,1,0};
			colorDisabled[] = {1,1,1,0};
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
			onLBSelChanged = "[] call mission_fnc_poissonerie_liste_objets;";
            onLBDblClick = "playSound 'button'; [] call mission_fnc_poissonerie_bouton_acheter;";
		};
	};
};

class menu_dealer
{
	idd = 20000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
	class Controls
	{
		class image_fond
		{
			type = 0;
			idc = 20050;
			x = safeZoneX + safeZoneW * 0.220625;
			y = safeZoneY + safeZoneH * 0.08;
			w = safeZoneW * 0.55875;
			h = safeZoneH * 0.84;
			style = 48;
			text = "pictures\interfaces\menu_achats\dealer\menumarchernoir_goauld.paa";
			colorBackground[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
        class fond_bouton_inventaire
		{
			type = 0;
			idc = 200011;
			x = safeZoneX + safeZoneW * 0.5125;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_magasin
		{
			type = 0;
			idc = 200041;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.09625;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class inventaire
		{
			type = 1;
			idc = 20001;
			x = safeZoneX + safeZoneW * 0.5125;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_dealer_bouton_inventaire;";
		};
		class magasin
		{
			type = 1;
			idc = 20004;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.09625;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_dealer_bouton_magasin;";
		};
		class acheter_vendre
		{
			type = 1;
			idc = 20002;
			x = safeZoneX + safeZoneW * 0.4475;
			y = safeZoneY + safeZoneH * 0.71555556;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_dealer_bouton_acheter;";
		};
		class fermer
		{
			type = 1;
			idc = 20003;
			x = safeZoneX + safeZoneW * 0.600625;
			y = safeZoneY + safeZoneH * 0.25333334;
			w = safeZoneW * 0.02125;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
		class liste
		{
			type = 5;
			idc = 20005;
			x = safeZoneX + safeZoneW * 0.428125;
			y = safeZoneY + safeZoneH * 0.36555556;
			w = safeZoneW * 0.131875;
			h = safeZoneH * 0.31333334;
			style = 16;
			colorBackground[] = {1,1,1,0};
			colorDisabled[] = {1,1,1,0};
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
			onLBSelChanged = "[] call mission_fnc_dealer_liste_objets;";
            onLBDblClick = "playSound 'button'; [] call mission_fnc_dealer_bouton_acheter;";
		};
	};
};

class menu_modulaire
{
	idd = 20000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
	class Controls
	{
		class image_fond
		{
			type = 0;
			idc = 20050;
			x = safeZoneX + safeZoneW * 0.220625;
			y = safeZoneY + safeZoneH * 0.08;
			w = safeZoneW * 0.55875;
			h = safeZoneH * 0.84;
			style = 48;
			text = "pictures\interfaces\menu_achats\marcher_general\menumagasin.paa";
			colorBackground[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
        class fond_bouton_inventaire
		{
			type = 0;
			idc = 200011;
			x = safeZoneX + safeZoneW * 0.5125;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_magasin
		{
			type = 0;
			idc = 200041;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.09625;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class inventaire
		{
			type = 1;
			idc = 20001;
			x = safeZoneX + safeZoneW * 0.5125;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_marcher_modulaire_bouton_inventaire;";
		};
		class magasin
		{
			type = 1;
			idc = 20004;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.29;
			w = safeZoneW * 0.09625;
			h = safeZoneH * 0.05111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_marcher_modulaire_bouton_magasin;";
		};
		class acheter_vendre
		{
			type = 1;
			idc = 20002;
			x = safeZoneX + safeZoneW * 0.4475;
			y = safeZoneY + safeZoneH * 0.71555556;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.05222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_marcher_modulaire_bouton_acheter;";
		};
		class fermer
		{
			type = 1;
			idc = 20003;
			x = safeZoneX + safeZoneW * 0.600625;
			y = safeZoneY + safeZoneH * 0.25333334;
			w = safeZoneW * 0.02125;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {1,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,0};
			colorFocused[] = {0.2,0.2,0.2,0};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.3608,0.5255,0.4039,0};
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
		class liste
		{
			type = 5;
			idc = 20005;
			x = safeZoneX + safeZoneW * 0.428125;
			y = safeZoneY + safeZoneH * 0.36555556;
			w = safeZoneW * 0.131875;
			h = safeZoneH * 0.31333334;
			style = 16;
			colorBackground[] = {1,1,1,0};
			colorDisabled[] = {1,1,1,0};
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
			onLBSelChanged = "[] call mission_fnc_marcher_modulaire_liste_objets;";
            onLBDblClick = "playSound 'button'; [] call mission_fnc_marcher_modulaire_bouton_acheter;";
		};
	};
};

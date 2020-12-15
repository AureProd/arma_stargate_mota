
class menu_planetes
{
	idd = 60000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
	class Controls
	{
		class fond_image
		{
			type = 0;
			idc = 60001;
			x = safeZoneX + safeZoneW * 0.16375;
			y = safeZoneY + safeZoneH * 0.03;
			w = safeZoneW * 0.6875;
			h = safeZoneH * 0.89222223;
			style = 48;
			text = "pictures\interfaces\menu_planetes\menuplanete.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_fermer
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.63125;
			y = safeZoneY + safeZoneH * 0.21444445;
			w = safeZoneW * 0.02625;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
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
		class liste
		{
			type = 5;
			idc = 60002;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.28333334;
			w = safeZoneW * 0.236875;
			h = safeZoneH * 0.48888889;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = 0.06;
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
			onLBDblClick = "playSound 'button'; [] call mission_fnc_interface_planetes_db_clicks;";
		};
	};
};

class menu_docs
{
	idd = 60000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
	class Controls
	{
		class fond_image
		{
			type = 0;
			idc = 60001;
			x = safeZoneX + safeZoneW * 0.16375;
			y = safeZoneY + safeZoneH * 0.03;
			w = safeZoneW * 0.6875;
			h = safeZoneH * 0.89222223;
			style = 48;
			text = "pictures\interfaces\menu_documents\menudoc.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_fermer
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.63125;
			y = safeZoneY + safeZoneH * 0.21444445;
			w = safeZoneW * 0.02625;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.5};
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
		class liste
		{
			type = 5;
			idc = 60002;
			x = safeZoneX + safeZoneW * 0.379375;
			y = safeZoneY + safeZoneH * 0.28333334;
			w = safeZoneW * 0.236875;
			h = safeZoneH * 0.48888889;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = 0.06;
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
			onLBDblClick = "playSound 'button'; [] call mission_fnc_interface_docs_db_clicks;";
		};
	};
};

class menu_maps
{
	idd = 61000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
	class Controls
	{
		class image
		{
			type = 0;
			idc = 61001;
			x = safeZoneX + safeZoneW * 0.16875;
			y = safeZoneY + safeZoneH * 0.00444445;
			w = safeZoneW * 0.6625;
			h = safeZoneH * 0.99;
			style = 48;
			text = "pictures\planetes\terre.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
	};
};



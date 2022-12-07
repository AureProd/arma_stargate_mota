
class enigma_interface
{
	idd = 11100;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	class Controls
	{
		class background_picture
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.11875;
			y = safeZoneY + safeZoneH * -0.02;
			w = safeZoneW * 0.7625;
			h = safeZoneH * 0.99;
			style = 48;
			text = "pictures\interfaces\documents_interfaces\enigma_interface.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class close_button
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.841875;
			y = safeZoneY + safeZoneH * 0.06777778;
			w = safeZoneW * 0.03125;
			h = safeZoneH * 0.03333334;
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
		class documents_list
		{
			type = 5;
			idc = 11101;
			x = safeZoneX + safeZoneW * 0.65125;
			y = safeZoneY + safeZoneH * 0.15;
			w = safeZoneW * 0.210625;
			h = safeZoneH * 0.77555556;
			style = 16;
			colorBackground[] = {0,0,0.0235,0};
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
			onLBSelChanged = "playSound 'button'; [] call mission_fnc_interface_docs_db_clicks;";
		};
		class document_picture
		{
			type = 0;
			idc = 11102;
			x = safeZoneX + safeZoneW * 0.239375;
			y = safeZoneY + safeZoneH * 0.55111112;
			w = safeZoneW * 0.28;
			h = safeZoneH * 0.36888889;
			style = 48;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class enigma_picture
		{
			type = 0;
			idc = 11103;
			x = safeZoneX + safeZoneW * 0.24125;
			y = safeZoneY + safeZoneH * 0.15;
			w = safeZoneW * 0.279375;
			h = safeZoneH * 0.37333334;
			style = 48;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
	};
};
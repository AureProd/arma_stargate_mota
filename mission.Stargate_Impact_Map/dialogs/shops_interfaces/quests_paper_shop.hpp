
class quests_paper_shop
{
	idd = 13400;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	class Controls
	{
		class background_picture
		{
			type = 0;
			idc = 13401;
			x = safeZoneX + safeZoneW * 0.22875;
			y = safeZoneY + safeZoneH * 0.11555556;
			w = safeZoneW * 0.54375;
			h = safeZoneH * 0.82555556;
			style = 48;
			text = "pictures\interfaces\quests_papers_interfaces\quests_papers_tauri.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class close_button
		{
			type = 1;
			idc = 13402;
			x = safeZoneX + safeZoneW * 0.731875;
			y = safeZoneY + safeZoneH * 0.25444445;
			w = safeZoneW * 0.019375;
			h = safeZoneH * 0.02666667;
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
		class quests_list
		{
			type = 5;
			idc = 13403;
			x = safeZoneX + safeZoneW * 0.26;
			y = safeZoneY + safeZoneH * 0.35;
			w = safeZoneW * 0.198125;
			h = safeZoneH * 0.37333334;
			style = 16;
			colorBackground[] = {0,0,0,0};
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
			onLBSelChanged = "[] call mission_fnc_liste_quetes_journal_quetes_perso";
		};
		class description_text
		{
			type = 0;
			idc = 13404;
			x = safeZoneX + safeZoneW * 0.5425;
			y = safeZoneY + safeZoneH * 0.35888889;
			w = safeZoneW * 0.188125;
			h = safeZoneH * 0.20777778;
			style = 2+16;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			lineSpacing = 1;
		};
		class reward_text
		{
			type = 0;
			idc = 13405;
			x = safeZoneX + safeZoneW * 0.5425;
			y = safeZoneY + safeZoneH * 0.67666667;
			w = safeZoneW * 0.188125;
			h = safeZoneH * 0.02888889;
			style = 2+16;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,1,0,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			lineSpacing = 1;
		};
		class objective_text
		{
			type = 0;
			idc = 13406;
			x = safeZoneX + safeZoneW * 0.5425;
			y = safeZoneY + safeZoneH * 0.60333334;
			w = safeZoneW * 0.188125;
			h = safeZoneH * 0.06111112;
			style = 2+16;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,0,0,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			lineSpacing = 1;
		};
	};
};


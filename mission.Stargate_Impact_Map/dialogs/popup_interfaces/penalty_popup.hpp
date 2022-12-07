
class penalty_popup
{
	idd = 12000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 120;
	onUnload = "[false] call mission_fnc_amende;";
	class Controls
	{
		class background_picture
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.25625;
			y = safeZoneY + safeZoneH * 0.12;
			w = safeZoneW * 0.5;
			h = safeZoneH * 0.70333334;
			style = 48;
			text = "pictures\interfaces\others\empty_popup_1.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class accept_button
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.505;
			y = safeZoneY + safeZoneH * 0.54666667;
			w = safeZoneW * 0.07;
			h = safeZoneH * 0.02;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,1,0,0.25};
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
			onButtonClick = "playSound 'button'; closeDialog 1; [true] call mission_fnc_amende;";
		};
		class deny_button
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.6175;
			y = safeZoneY + safeZoneH * 0.54555556;
			w = safeZoneW * 0.069375;
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
			onButtonClick = "playSound 'button'; closeDialog 1; [false] call mission_fnc_amende;";
		};
		class text
		{
			type = 0;
			idc = 12001;
			x = safeZoneX + safeZoneW * 0.49375;
			y = safeZoneY + safeZoneH * 0.43444445;
			w = safeZoneW * 0.2275;
			h = safeZoneH * 0.09555556;
			style = 16+0;
			text = $STR_erreur;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			lineSpacing = 1;
		};
	};
};

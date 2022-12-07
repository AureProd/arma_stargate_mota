class skip_button
{
	idd = 10600;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	class Controls
	{
		class background_picture
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.63476563;
			y = safeZoneY + safeZoneH * 0.64409723;
			w = safeZoneW * 0.4609375;
			h = safeZoneH * 0.69444445;
			style = 48;
			text = "pictures\interfaces\others\skip.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class skip_button
		{
			type = 1;
			idc = 10601;
			x = safeZoneX + safeZoneW * 0.77832032;
			y = safeZoneY + safeZoneH * 0.90104167;
			w = safeZoneW * 0.19921875;
			h = safeZoneH * 0.06944445;
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
			soundClick[] = {"",0.1,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1; missionNamespace setVariable [nomVarSkip, true];"; // TODO: strange
		};
	};
};

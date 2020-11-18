
class popup_specialites_archeologue
{
	idd = 4050;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	class Controls
	{
		class image_fond
		{
			type = 0;
			idc = 4054;
			x = safeZoneX + safeZoneW * 0.269375;
			y = safeZoneY + safeZoneH * 0.14444445;
			w = safeZoneW * 0.46125;
			h = safeZoneH * 0.67888889;
			style = 48;
			text = "pictures\interfaces\autres\pop-up-vierge.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_accepter
		{
			type = 1;
			idc = 4051;
			x = safeZoneX + safeZoneW * 0.49875;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.064375;
			h = safeZoneH * 0.02111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,1,0,0.2};
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
			onButtonClick = "playSound 'button'; closeDialog 1; [false] call mission_fnc_quete_specialite;";
		};
		class bouton_refuser
		{
			type = 1;
			idc = 4052;
			x = safeZoneX + safeZoneW * 0.6025;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.064375;
			h = safeZoneH * 0.02111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.2};
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
		class texte
		{
			type = 0;
			idc = 4053;
			x = safeZoneX + safeZoneW * 0.47875;
			y = safeZoneY + safeZoneH * 0.44777778;
			w = safeZoneW * 0.221875;
			h = safeZoneH * 0.07111112;
			style = 2;
			text = "Recrutement Archeologue";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.9,0.9,0.9,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			
		};
	};
};

class popup_specialites_scientifique
{
	idd = 4050;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	class Controls
	{
		class image_fond
		{
			type = 0;
			idc = 4054;
			x = safeZoneX + safeZoneW * 0.269375;
			y = safeZoneY + safeZoneH * 0.14444445;
			w = safeZoneW * 0.46125;
			h = safeZoneH * 0.67888889;
			style = 48;
			text = "pictures\interfaces\autres\pop-up-vierge.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_accepter
		{
			type = 1;
			idc = 4051;
			x = safeZoneX + safeZoneW * 0.49875;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.064375;
			h = safeZoneH * 0.02111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,1,0,0.2};
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
			onButtonClick = "playSound 'button'; closeDialog 1; [false] call mission_fnc_quete_specialite;";
		};
		class bouton_refuser
		{
			type = 1;
			idc = 4052;
			x = safeZoneX + safeZoneW * 0.6025;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.064375;
			h = safeZoneH * 0.02111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.2};
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
		class texte
		{
			type = 0;
			idc = 4053;
			x = safeZoneX + safeZoneW * 0.47875;
			y = safeZoneY + safeZoneH * 0.44777778;
			w = safeZoneW * 0.221875;
			h = safeZoneH * 0.07111112;
			style = 2;
			text = "Recrutement Scientifique";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.9,0.9,0.9,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			
		};
	};
};

class popup_specialites_soldat
{
	idd = 4050;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	class Controls
	{
		class image_fond
		{
			type = 0;
			idc = 4054;
			x = safeZoneX + safeZoneW * 0.269375;
			y = safeZoneY + safeZoneH * 0.14444445;
			w = safeZoneW * 0.46125;
			h = safeZoneH * 0.67888889;
			style = 48;
			text = "pictures\interfaces\autres\pop-up-vierge.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_accepter
		{
			type = 1;
			idc = 4051;
			x = safeZoneX + safeZoneW * 0.49875;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.064375;
			h = safeZoneH * 0.02111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,1,0,0.2};
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
			onButtonClick = "playSound 'button'; closeDialog 1; [false] call mission_fnc_quete_specialite;";
		};
		class bouton_refuser
		{
			type = 1;
			idc = 4052;
			x = safeZoneX + safeZoneW * 0.6025;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.064375;
			h = safeZoneH * 0.02111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.2};
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
		class texte
		{
			type = 0;
			idc = 4053;
			x = safeZoneX + safeZoneW * 0.47875;
			y = safeZoneY + safeZoneH * 0.44777778;
			w = safeZoneW * 0.221875;
			h = safeZoneH * 0.07111112;
			style = 2;
			text = "Recrutement Gendarme";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.9,0.9,0.9,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			
		};
	};
};

class popup_cyber_cafe
{
	idd = 4050;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	class Controls
	{
		class image_fond
		{
			type = 0;
			idc = 4054;
			x = safeZoneX + safeZoneW * 0.269375;
			y = safeZoneY + safeZoneH * 0.14444445;
			w = safeZoneW * 0.46125;
			h = safeZoneH * 0.67888889;
			style = 48;
			text = "pictures\interfaces\autres\pop-up-vierge.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_accepter
		{
			type = 1;
			idc = 4051;
			x = safeZoneX + safeZoneW * 0.49875;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.064375;
			h = safeZoneH * 0.02111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,1,0,0.2};
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
			onButtonClick = "playSound 'button'; closeDialog 1; [true] call mission_fnc_quete_cyber_cafe;";
		};
		class bouton_refuser
		{
			type = 1;
			idc = 4052;
			x = safeZoneX + safeZoneW * 0.6025;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.064375;
			h = safeZoneH * 0.02111112;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {1,0,0,0.2};
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
		class texte
		{
			type = 0;
			idc = 4053;
			x = safeZoneX + safeZoneW * 0.47875;
			y = safeZoneY + safeZoneH * 0.44777778;
			w = safeZoneW * 0.221875;
			h = safeZoneH * 0.07111112;
			style = 2;
			text = "Cyber Café";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.9,0.9,0.9,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			
		};
	};
};

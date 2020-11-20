
class menu_spawn
{
	idd = 1000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	onKeyDown = "if (param[1] == 1) then {true};";
	class Controls
	{
		class fondnoir
		{
			type = 0;
			idc = 1007;
			x = safeZoneX + safeZoneW * -0.01625;
			y = safeZoneY + safeZoneH * -0.04555555;
			w = safeZoneW * 1.0225;
			h = safeZoneH * 1.23;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,1};
			colorText[] = {0,0,0,0};
			font = "TahomaB";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class fondbleu
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.2175;
			y = safeZoneY + safeZoneH * 0.30111112;
			w = safeZoneW * 0.559375;
			h = safeZoneH * 0.44111112;
			style = 0;
			text = "";
			colorBackground[] = {0.702,0.8,1,1};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class imagefond
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.17875;
			y = safeZoneY + safeZoneH * 0.04;
			w = safeZoneW * 0.6425;
			h = safeZoneH * 1.01444445;
			style = 48;
			text = "pictures\interfaces\menu_spawn\interface_spawn.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = 0;
			
		};
		class fondboutonarcheologue
		{
			type = 0;
			idc = 1011;
			x = safeZoneX + safeZoneW * 0.24609375;
			y = safeZoneY + safeZoneH * 0.375;
			w = safeZoneW * 0.15722657;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			colorBackground[] = {0.6,0,0,1};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fondboutonscientifique
		{
			type = 0;
			idc = 1012;
			x = safeZoneX + safeZoneW * 0.24609375;
			y = safeZoneY + safeZoneH * 0.41840278;
			w = safeZoneW * 0.15722657;
			h = safeZoneH * 0.03993056;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fondboutonsoldat
		{
			type = 0;
			idc = 1013;
			x = safeZoneX + safeZoneW * 0.24609375;
			y = safeZoneY + safeZoneH * 0.46180556;
			w = safeZoneW * 0.15722657;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fondboutongoauld
		{
			type = 0;
			idc = 1015;
			x = safeZoneX + safeZoneW * 0.58691407;
			y = safeZoneY + safeZoneH * 0.38541667;
			w = safeZoneW * 0.15722657;
			h = safeZoneH * 0.04340278;
			style = 0;
			text = "";
			colorBackground[] = {0.6,0,0,1};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fondboutontauri
		{
			type = 0;
			idc = 1016;
			x = safeZoneX + safeZoneW * 0.58691407;
			y = safeZoneY + safeZoneH * 0.42708334;
			w = safeZoneW * 0.15722657;
			h = safeZoneH * 0.04513889;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class imageclasses
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.12402344;
			y = safeZoneY + safeZoneH * 0.09375;
			w = safeZoneW * 0.42285157;
			h = safeZoneH * 0.75520834;
			style = 48;
			text = "pictures\interfaces\menu_spawn\image_classes_spawn.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = 0;
			
		};
		class imagetribus
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.09548612;
			w = safeZoneW * 0.64257813;
			h = safeZoneH * 0.78472223;
			style = 48;
			text = "pictures\interfaces\menu_spawn\image_tribus_spawn.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = 0;
			
		};
		class imagespawn
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.22949219;
			y = safeZoneY + safeZoneH * 0.34027778;
			w = safeZoneW * 0.53222657;
			h = safeZoneH * 0.78472223;
			style = 48;
			text = "pictures\interfaces\menu_spawn\image_bouton_spawn.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = 0;
			
		};
		class boutonarcheologue
		{
			type = 1;
			idc = 1001;
			x = safeZoneX + safeZoneW * 0.24609375;
			y = safeZoneY + safeZoneH * 0.375;
			w = safeZoneW * 0.15722657;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [1] call mission_fnc_spawn_bouton_classes;";
		};
		class boutonscientifique
		{
			type = 1;
			idc = 1002;
			x = safeZoneX + safeZoneW * 0.24609375;
			y = safeZoneY + safeZoneH * 0.41840278;
			w = safeZoneW * 0.15722657;
			h = safeZoneH * 0.03993056;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [2] call mission_fnc_spawn_bouton_classes;";
		};
		class boutonsoldat
		{
			type = 1;
			idc = 1003;
			x = safeZoneX + safeZoneW * 0.24609375;
			y = safeZoneY + safeZoneH * 0.46180556;
			w = safeZoneW * 0.15722657;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [3] call mission_fnc_spawn_bouton_classes;";
		};
		class boutonspawn
		{
			type = 1;
			idc = 1004;
			x = safeZoneX + safeZoneW * 0.43375;
			y = safeZoneY + safeZoneH * 0.6;
			w = safeZoneW * 0.1325;
			h = safeZoneH * 0.09222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_spawn_bouton_spawn;";
		};
		class boutongoauld
		{
			type = 1;
			idc = 1005;
			x = safeZoneX + safeZoneW * 0.58691407;
			y = safeZoneY + safeZoneH * 0.38541667;
			w = safeZoneW * 0.15722657;
			h = safeZoneH * 0.04340278;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [4] call mission_fnc_spawn_bouton_classes;";
		};
		class boutontauri
		{
			type = 1;
			idc = 1006;
			x = safeZoneX + safeZoneW * 0.58691407;
			y = safeZoneY + safeZoneH * 0.42708334;
			w = safeZoneW * 0.15722657;
			h = safeZoneH * 0.04513889;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.25};
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
			onButtonClick = "playSound 'button'; [5] call mission_fnc_spawn_bouton_classes;";
		};
	};
};

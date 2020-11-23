
class menu_medical
{
	idd = 5000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
    class Controls
	{
		class fond_image
		{
			type = 0;
			idc = 5050;
			x = safeZoneX + safeZoneW * 0.21875;
			y = safeZoneY + safeZoneH * 0.15925926;
			w = safeZoneW * 0.5625;
			h = safeZoneH * 0.6962963;
			style = 48;
			text = "pictures\interfaces\menu_medical\menu_sante.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_maladie
		{
			type = 0;
			idc = 5022;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.29444445;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04351852;
			style = 0;
			text = "";
			// coloreBackground = {1,0,0,0.25};
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_blessure
		{
			type = 0;
			idc = 5023;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.34907408;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_nourriture
		{
			type = 0;
			idc = 5024;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.40370371;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};

        /*  couleurs des logos :
			colorBackground[] = {0,0,0,0}; <-- transparent
            colorBackground[] = {0,1,0,0.1}; <-- color green
            colorBackground[] = {1,0.5,0,0.1}; <-- color orange
            colorBackground[] = {1,0,0,0.1}; <-- color rouge        */
		class tete_logo
		{
			type = 0;
			idc = 5009;
			x = safeZoneX + safeZoneW * 0.48697917;
			y = safeZoneY + safeZoneH * 0.3712963;
			w = safeZoneW * 0.02135417;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class ventre_logo
		{
			type = 0;
			idc = 5010;
			x = safeZoneX + safeZoneW * 0.4875;
			y = safeZoneY + safeZoneH * 0.47314815;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bras_droit_logo
		{
			type = 0;
			idc = 5011;
			x = safeZoneX + safeZoneW * 0.52239584;
			y = safeZoneY + safeZoneH * 0.4712963;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bras_gauche_logo
		{
			type = 0;
			idc = 5012;
			x = safeZoneX + safeZoneW * 0.44427084;
			y = safeZoneY + safeZoneH * 0.40833334;
			w = safeZoneW * 0.0203125;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class mollet_droit_logo
		{
			type = 0;
			idc = 5015;
			x = safeZoneX + safeZoneW * 0.49791667;
			y = safeZoneY + safeZoneH * 0.57962963;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class mollet_gauche_logo
		{
			type = 0;
			idc = 5016;
			x = safeZoneX + safeZoneW * 0.47552084;
			y = safeZoneY + safeZoneH * 0.58055556;
			w = safeZoneW * 0.01979167;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};

		class bouton_tete_logo
		{
			type = 1;
			idc = 5031;
			x = safeZoneX + safeZoneW * 0.48697917;
			y = safeZoneY + safeZoneH * 0.3712963;
			w = safeZoneW * 0.02135417;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [1] call mission_fnc_utiliser_blessure;";
		};
		class bouton_ventre_logo
		{
			type = 1;
			idc = 5032;
			x = safeZoneX + safeZoneW * 0.4875;
			y = safeZoneY + safeZoneH * 0.47314815;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [2] call mission_fnc_utiliser_blessure;";
		};
		class bouton_bras_droit_logo
		{
			type = 1;
			idc = 5033;
			x = safeZoneX + safeZoneW * 0.52239584;
			y = safeZoneY + safeZoneH * 0.4712963;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [3] call mission_fnc_utiliser_blessure;";
		};
		class bouton_bras_gauche_logo
		{
			type = 1;
			idc = 5034;
			x = safeZoneX + safeZoneW * 0.44427084;
			y = safeZoneY + safeZoneH * 0.40833334;
			w = safeZoneW * 0.0203125;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [4] call mission_fnc_utiliser_blessure;";
		};
		class bouton_mollet_droit_logo
		{
			type = 1;
			idc = 5035;
			x = safeZoneX + safeZoneW * 0.49791667;
			y = safeZoneY + safeZoneH * 0.57962963;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [5] call mission_fnc_utiliser_blessure;";
		};
		class bouton_mollet_gauche_logo
		{
			type = 1;
			idc = 5036;
			x = safeZoneX + safeZoneW * 0.47552084;
			y = safeZoneY + safeZoneH * 0.58055556;
			w = safeZoneW * 0.01979167;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [6] call mission_fnc_utiliser_blessure;";
		};

		class sante_bar
		{
			type = 8;
			idc = 5006;
			x = safeZoneX + safeZoneW * 0.27083334;
			y = safeZoneY + safeZoneH * 0.525;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.0425926;
			style = 0;
			colorBar[] = {1,0,0,0.25};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			
		};
		class faim_bar
		{
			type = 8;
			idc = 5007;
			x = safeZoneX + safeZoneW * 0.27083334;
			y = safeZoneY + safeZoneH * 0.57777778;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.0425926;
			style = 0;
			colorBar[] = {1,1,0,0.2};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			
		};
		class soif_bar
		{
			type = 8;
			idc = 5008;
			x = safeZoneX + safeZoneW * 0.27083334;
			y = safeZoneY + safeZoneH * 0.63055556;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.0425926;
			style = 0;
			colorBar[] = {0,0,0.5,0.3};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			
		};
		class liste_objects
		{
			type = 5;
			idc = 5005;
			x = safeZoneX + safeZoneW * 0.603125;
			y = safeZoneY + safeZoneH * 0.37222223;
			w = safeZoneW * 0.13229167;
			h = safeZoneH * 0.25925926;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorSelectBackground[] = {1,1,1,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			colorPicture[] = {1,1,1,1};
			colorPictureSelected[] = {1,1,1,1};
    		colorPictureDisabled[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.15);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.2};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
			//onLBSelChanged = "";
            onLBDblClick = "[] call mission_fnc_medical_liste_objets;";
		};
		class bouton_fermer
		{
			type = 1;
			idc = 5001;
			x = safeZoneX + safeZoneW * 0.73854167;
			y = safeZoneY + safeZoneH * 0.27592593;
			w = safeZoneW * 0.02135417;
			h = safeZoneH * 0.02222223;
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
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1;";
		};
		class bouton_maladie
		{
			type = 1;
			idc = 5002;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.29444445;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04351852;
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
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_medical_bouton_maladie;";
		};
		class bouton_blessure
		{
			type = 1;
			idc = 5003;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.34907408;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
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
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_medical_bouton_blessure;";
		};
		class bouton_nourriture
		{
			type = 1;
			idc = 5004;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.40370371;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
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
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_medical_bouton_nourriture;";
		};
	};
};

class menu_medical_goauld
{
	idd = 5000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
    class Controls
	{
		class fond_image
		{
			type = 0;
			idc = 5050;
			x = safeZoneX + safeZoneW * 0.21875;
			y = safeZoneY + safeZoneH * 0.15925926;
			w = safeZoneW * 0.5625;
			h = safeZoneH * 0.6962963;
			style = 48;
			text = "pictures\interfaces\menu_medical\menu_etat_santer_goauld.paa";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_maladie
		{
			type = 0;
			idc = 5022;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.29444445;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04351852;
			style = 0;
			text = "";
			// coloreBackground = {1,0,0,0.25};
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_blessure
		{
			type = 0;
			idc = 5023;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.34907408;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_bouton_nourriture
		{
			type = 0;
			idc = 5024;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.40370371;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};

        /*  couleurs des logos :
			colorBackground[] = {0,0,0,0}; <-- transparent
            colorBackground[] = {0,1,0,0.1}; <-- color green
            colorBackground[] = {1,0.5,0,0.1}; <-- color orange
            colorBackground[] = {1,0,0,0.1}; <-- color rouge        */
		class tete_logo
		{
			type = 0;
			idc = 5009;
			x = safeZoneX + safeZoneW * 0.48072917;
			y = safeZoneY + safeZoneH * 0.38240741;
			w = safeZoneW * 0.0203125;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class ventre_logo
		{
			type = 0;
			idc = 5010;
			x = safeZoneX + safeZoneW * 0.48385417;
			y = safeZoneY + safeZoneH * 0.48148149;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bras_droit_logo
		{
			type = 0;
			idc = 5011;
			x = safeZoneX + safeZoneW * 0.521875;
			y = safeZoneY + safeZoneH * 0.46666667;
			w = safeZoneW * 0.0203125;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bras_gauche_logo
		{
			type = 0;
			idc = 5012;
			x = safeZoneX + safeZoneW * 0.44375;
			y = safeZoneY + safeZoneH * 0.48425926;
			w = safeZoneW * 0.0203125;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class mollet_droit_logo
		{
			type = 0;
			idc = 5015;
			x = safeZoneX + safeZoneW * 0.503125;
			y = safeZoneY + safeZoneH * 0.59074075;
			w = safeZoneW * 0.01979167;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class mollet_gauche_logo
		{
			type = 0;
			idc = 5016;
			x = safeZoneX + safeZoneW * 0.46354167;
			y = safeZoneY + safeZoneH * 0.58703704;
			w = safeZoneW * 0.01979167;
			h = safeZoneH * 0.02037038;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};

		class bouton_tete_logo
		{
			type = 1;
			idc = 5031;
			x = safeZoneX + safeZoneW * 0.48072917;
			y = safeZoneY + safeZoneH * 0.38240741;
			w = safeZoneW * 0.0203125;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [1] call mission_fnc_utiliser_blessure;";
		};
		class bouton_ventre_logo
		{
			type = 1;
			idc = 5032;
			x = safeZoneX + safeZoneW * 0.48385417;
			y = safeZoneY + safeZoneH * 0.48148149;
			w = safeZoneW * 0.02083334;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [2] call mission_fnc_utiliser_blessure;";
		};
		class bouton_bras_droit_logo
		{
			type = 1;
			idc = 5033;
			x = safeZoneX + safeZoneW * 0.521875;
			y = safeZoneY + safeZoneH * 0.46666667;
			w = safeZoneW * 0.0203125;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [3] call mission_fnc_utiliser_blessure;";
		};
		class bouton_bras_gauche_logo
		{
			type = 1;
			idc = 5034;
			x = safeZoneX + safeZoneW * 0.44375;
			y = safeZoneY + safeZoneH * 0.48425926;
			w = safeZoneW * 0.0203125;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [4] call mission_fnc_utiliser_blessure;";
		};
		class bouton_mollet_droit_logo
		{
			type = 1;
			idc = 5035;
			x = safeZoneX + safeZoneW * 0.503125;
			y = safeZoneY + safeZoneH * 0.59074075;
			w = safeZoneW * 0.01979167;
			h = safeZoneH * 0.0212963;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [5] call mission_fnc_utiliser_blessure;";
		};
		class bouton_mollet_gauche_logo
		{
			type = 1;
			idc = 5036;
			x = safeZoneX + safeZoneW * 0.46354167;
			y = safeZoneY + safeZoneH * 0.58703704;
			w = safeZoneW * 0.01979167;
			h = safeZoneH * 0.02037038;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [6] call mission_fnc_utiliser_blessure;";
		};

		class sante_bar
		{
			type = 8;
			idc = 5006;
			x = safeZoneX + safeZoneW * 0.27083334;
			y = safeZoneY + safeZoneH * 0.525;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.0425926;
			style = 0;
			colorBar[] = {1,0,0,0.25};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			
		};
		class faim_bar
		{
			type = 8;
			idc = 5007;
			x = safeZoneX + safeZoneW * 0.27083334;
			y = safeZoneY + safeZoneH * 0.57777778;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.0425926;
			style = 0;
			colorBar[] = {1,1,0,0.2};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			
		};
		class soif_bar
		{
			type = 8;
			idc = 5008;
			x = safeZoneX + safeZoneW * 0.27083334;
			y = safeZoneY + safeZoneH * 0.63055556;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.0425926;
			style = 0;
			colorBar[] = {0,0,0.5,0.3};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			
		};
		class liste_objects
		{
			type = 5;
			idc = 5005;
			x = safeZoneX + safeZoneW * 0.603125;
			y = safeZoneY + safeZoneH * 0.37222223;
			w = safeZoneW * 0.13229167;
			h = safeZoneH * 0.25925926;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorSelectBackground[] = {1,1,1,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			colorPicture[] = {1,1,1,1};
			colorPictureSelected[] = {1,1,1,1};
    		colorPictureDisabled[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.15);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.2};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
			//onLBSelChanged = "";
            onLBDblClick = "[] call mission_fnc_medical_liste_objets;";
		};
		class bouton_fermer
		{
			type = 1;
			idc = 5001;
			x = safeZoneX + safeZoneW * 0.73854167;
			y = safeZoneY + safeZoneH * 0.27592593;
			w = safeZoneW * 0.02135417;
			h = safeZoneH * 0.02222223;
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
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1;";
		};
		class bouton_maladie
		{
			type = 1;
			idc = 5002;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.29444445;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04351852;
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
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_medical_bouton_maladie;";
		};
		class bouton_blessure
		{
			type = 1;
			idc = 5003;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.34907408;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
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
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_medical_bouton_blessure;";
		};
		class bouton_nourriture
		{
			type = 1;
			idc = 5004;
			x = safeZoneX + safeZoneW * 0.26979167;
			y = safeZoneY + safeZoneH * 0.40370371;
			w = safeZoneW * 0.096875;
			h = safeZoneH * 0.04166667;
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
			soundClick[] = {"",0.5,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_medical_bouton_nourriture;";
		};
	};
};

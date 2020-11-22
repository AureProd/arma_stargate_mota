
class interface_soldat
{
	idd = 12000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
    class Controls
	{
		class fond_contour
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.154375;
			y = safeZoneY + safeZoneH * 0.07666667;
			w = safeZoneW * 0.690625;
			h = safeZoneH * 0.84555556;
			style = 0;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.16875;
			y = safeZoneY + safeZoneH * 0.10222223;
			w = safeZoneW * 0.6625;
			h = safeZoneH * 0.28222223;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.8,0.8,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_fermer
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.825625;
			y = safeZoneY + safeZoneH * 0.07666667;
			w = safeZoneW * 0.019375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = "X";
			borderSize = 0;
			colorBackground[] = {1,0,0,1};
			colorBackgroundActive[] = {0,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1;";
			
		};
		class liste_joueurs_proche
		{
			type = 5;
			idc = 12001;
			x = safeZoneX + safeZoneW * 0.176875;
			y = safeZoneY + safeZoneH * 0.11444445;
			w = safeZoneW * 0.2225;
			h = safeZoneH * 0.25666667;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			onLBSelChanged = "[] call mission_fnc_interface_soldat_liste_joueurs_proches;";
		};
		class liste_objets_illegals
		{
			type = 5;
			idc = 12002;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.16888889;
			w = safeZoneW * 0.189375;
			h = safeZoneH * 0.20111112;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			onLBSelChanged = "[] call mission_fnc_interface_soldat_liste_items_illegals;";
		};
		class items_illegals
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.11777778;
			w = safeZoneW * 0.189375;
			h = safeZoneH * 0.03888889;
			style = 2;
			text = $STR_admin_titre_items_illegals;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			
		};
		class bouton_detruire
		{
			type = 1;
			idc = 12010;
			x = safeZoneX + safeZoneW * 0.53625;
			y = safeZoneY + safeZoneH * 0.32777778;
			w = safeZoneW * 0.08625;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_admin_bouton_detruire;
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; [] call mission_fnc_interface_soldat_bouton_detruire;";
		};
	};
};

class interface_admin_1
{
	idd = 12000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
    class Controls
	{
		class fond_contour
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.154375;
			y = safeZoneY + safeZoneH * 0.07666667;
			w = safeZoneW * 0.690625;
			h = safeZoneH * 0.84555556;
			style = 0;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.16875;
			y = safeZoneY + safeZoneH * 0.10222223;
			w = safeZoneW * 0.6625;
			h = safeZoneH * 0.28222223;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.8,0.8,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
        class fond_bis
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.16875;
			y = safeZoneY + safeZoneH * 0.41333334;
			w = safeZoneW * 0.41375;
			h = safeZoneH * 0.48333334;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.8,0.8,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_fermer
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.825625;
			y = safeZoneY + safeZoneH * 0.07666667;
			w = safeZoneW * 0.019375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = "X";
			borderSize = 0;
			colorBackground[] = {1,0,0,1};
			colorBackgroundActive[] = {0,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1;";
			
		};
		class liste_joueurs_proche
		{
			type = 5;
			idc = 12001;
			x = safeZoneX + safeZoneW * 0.176875;
			y = safeZoneY + safeZoneH * 0.11444445;
			w = safeZoneW * 0.2225;
			h = safeZoneH * 0.25666667;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			onLBSelChanged = "";
		};
		class liste_objets_illegals
		{
			type = 5;
			idc = 12002;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.16888889;
			w = safeZoneW * 0.189375;
			h = safeZoneH * 0.20111112;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class items_illegals
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.11777778;
			w = safeZoneW * 0.189375;
			h = safeZoneH * 0.03888889;
			style = 2;
			text = $STR_admin_titre_items_illegals;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			
		};
		class bouton_detruire
		{
			type = 1;
			idc = 12010;
			x = safeZoneX + safeZoneW * 0.53625;
			y = safeZoneY + safeZoneH * 0.32777778;
			w = safeZoneW * 0.08625;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_admin_bouton_detruire;
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class liste_joueurs
		{
			type = 5;
			idc = 12003;
			x = safeZoneX + safeZoneW * 0.1775;
			y = safeZoneY + safeZoneH * 0.43111112;
			w = safeZoneW * 0.2225;
			h = safeZoneH * 0.25444445;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			onLBSelChanged = "";
		};
		class bouton_on_off_wl_soldat
		{
			type = 1;
			idc = 12005;
			x = safeZoneX + safeZoneW * 0.41125;
			y = safeZoneY + safeZoneH * 0.43111112;
			w = safeZoneW * 0.159375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_erreur; // $STR_admin_bouton_wl_soldat
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
	};
};

class interface_admin_5
{
	idd = 12000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	//onUnload = "";
    class Controls
	{
		class fond_contour
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.154375;
			y = safeZoneY + safeZoneH * 0.07666667;
			w = safeZoneW * 0.690625;
			h = safeZoneH * 0.84555556;
			style = 0;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.16875;
			y = safeZoneY + safeZoneH * 0.10222223;
			w = safeZoneW * 0.6625;
			h = safeZoneH * 0.28222223;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.8,0.8,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
        class fond_bis
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.16875;
			y = safeZoneY + safeZoneH * 0.41333334;
			w = safeZoneW * 0.41375;
			h = safeZoneH * 0.48333334;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.8,0.8,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class fond_ters
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.601875;
			y = safeZoneY + safeZoneH * 0.41333334;
			w = safeZoneW * 0.23;
			h = safeZoneH * 0.48333334;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.8,0.8,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_fermer
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.825625;
			y = safeZoneY + safeZoneH * 0.07666667;
			w = safeZoneW * 0.019375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = "X";
			borderSize = 0;
			colorBackground[] = {1,0,0,1};
			colorBackgroundActive[] = {0,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; closeDialog 1;";
			
		};
		class liste_joueurs_proche
		{
			type = 5;
			idc = 12001;
			x = safeZoneX + safeZoneW * 0.176875;
			y = safeZoneY + safeZoneH * 0.11444445;
			w = safeZoneW * 0.2225;
			h = safeZoneH * 0.25666667;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			onLBSelChanged = "";
		};
		class liste_objets_illegals
		{
			type = 5;
			idc = 12002;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.16888889;
			w = safeZoneW * 0.189375;
			h = safeZoneH * 0.20111112;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class items_illegals
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.630625;
			y = safeZoneY + safeZoneH * 0.11777778;
			w = safeZoneW * 0.189375;
			h = safeZoneH * 0.03888889;
			style = 2;
			text = $STR_admin_titre_items_illegals;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			
		};
		class bouton_detruire
		{
			type = 1;
			idc = 12010;
			x = safeZoneX + safeZoneW * 0.53625;
			y = safeZoneY + safeZoneH * 0.32777778;
			w = safeZoneW * 0.08625;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_admin_bouton_detruire;
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class liste_joueurs
		{
			type = 5;
			idc = 12003;
			x = safeZoneX + safeZoneW * 0.1775;
			y = safeZoneY + safeZoneH * 0.43111112;
			w = safeZoneW * 0.2225;
			h = safeZoneH * 0.25444445;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			onLBSelChanged = "";
		};
		class bouton_on_off_wl_soldat
		{
			type = 1;
			idc = 12005;
			x = safeZoneX + safeZoneW * 0.41125;
			y = safeZoneY + safeZoneH * 0.43111112;
			w = safeZoneW * 0.159375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_erreur; // $STR_admin_bouton_wl_soldat
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class bouton_on_off_invisible
		{
			type = 1;
			idc = 12008;
			x = safeZoneX + safeZoneW * 0.61625;
			y = safeZoneY + safeZoneH * 0.43111112;
			w = safeZoneW * 0.20125;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_erreur; // $STR_admin_bouton_invisible
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class bouton_on_off_invincible
		{
			type = 1;
			idc = 12009;
			x = safeZoneX + safeZoneW * 0.61625;
			y = safeZoneY + safeZoneH * 0.50111112;
			w = safeZoneW * 0.20125;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_erreur; // $STR_admin_bouton_invinsible
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class bouton_sauvegarde_position
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.61625;
			y = safeZoneY + safeZoneH * 0.64111112;
			w = safeZoneW * 0.20125;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_admin_bouton_sauvegarde_position;
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class bouton_tp_position_sauvegarder
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.61625;
			y = safeZoneY + safeZoneH * 0.57111112;
			w = safeZoneW * 0.20125;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_admin_bouton_tp_to_position_sauvegardee;
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class liste_planetes_joueur
		{
			type = 5;
			idc = 12004;
			x = safeZoneX + safeZoneW * 0.1775;
			y = safeZoneY + safeZoneH * 0.74888889;
			w = safeZoneW * 0.2225;
			h = safeZoneH * 0.13222223;
			style = 16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.3);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class planetes_debloquees
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.1775;
			y = safeZoneY + safeZoneH * 0.69777778;
			w = safeZoneW * 0.223125;
			h = safeZoneH * 0.04;
			style = 2;
			text = $STR_admin_titre_planetes_debloquees;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			
		};
		class bouton_tuer_player
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.41125;
			y = safeZoneY + safeZoneH * 0.50111112;
			w = safeZoneW * 0.159375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_admin_bouton_tuer_joueur;
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class xp_player
		{
			type = 0;
			idc = 12006;
			x = safeZoneX + safeZoneW * 0.41125;
			y = safeZoneY + safeZoneH * 0.57111112;
			w = safeZoneW * 0.159375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_erreur; // $STR_admin_text_xp_joueur
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			
		};
		class ajout_xp
		{
			type = 2;
			idc = 12007;
			x = safeZoneX + safeZoneW * 0.41125;
			y = safeZoneY + safeZoneH * 0.64444445;
			w = safeZoneW * 0.159375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = "0";
			autocomplete = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			
		};
		class bouton_add_xp
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.41125;
			y = safeZoneY + safeZoneH * 0.69;
			w = safeZoneW * 0.0775;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_admin_bouton_add_xp;
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class bouton_del_xp
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.491875;
			y = safeZoneY + safeZoneH * 0.69;
			w = safeZoneW * 0.07875;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_admin_bouton_delete_xp;
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class bouton_TP_joueur_admin
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.41125;
			y = safeZoneY + safeZoneH * 0.76;
			w = safeZoneW * 0.159375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_admin_bouton_tp_joueur_admin;
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
		class bouton_TP_admin_joueur
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.41125;
			y = safeZoneY + safeZoneH * 0.83;
			w = safeZoneW * 0.159375;
			h = safeZoneH * 0.04111112;
			style = 2;
			text = $STR_admin_bouton_tp_admin_joueur;
			borderSize = 0;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "playSound 'button'; ";
		};
	};
};

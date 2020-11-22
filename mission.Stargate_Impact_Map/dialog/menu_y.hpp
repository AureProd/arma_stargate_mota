
class menu_y
{
	idd = 3000;
	movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
	onUnload = "menu_y_ok = true;";
	class Controls
	{
		class fond_image
		{
			type = 0;
			idc = 3017;
			x = safeZoneX + safeZoneW * 0.19375;
			y = safeZoneY + safeZoneH * 0.11666667;
			w = safeZoneW * 0.6375;
			h = safeZoneH * 0.84333334;
			style = 48;
			text = "";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bouton_groupe
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.28111112;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; [] spawn mission_fnc_interface_groupe;";
		};
		class bouton_documents
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.34666667;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; [] call mission_fnc_interface_docs;";
		};
		class bouton_medical
		{
			type = 1;
			idc = 3016;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.41222223;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; [] spawn mission_fnc_interface_medical;";
		};
		class bouton_liste_planetes
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.47888889;
			w = safeZoneW * 0.11;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; [] call mission_fnc_interface_planetes;";
		};
		class bouton_liste_quetes
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.54333334;
			w = safeZoneW * 0.11;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; [] call mission_fnc_interface_journal_quetes_perso;";
		};
		class bouton_classes
		{
			type = 1;
			idc = 3009;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.60777778;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true; ['popup'] call mission_fnc_interface_open;";
		};
		class bouton_sync_data
		{
			type = 1;
			idc = 3010;
			x = safeZoneX + safeZoneW * 0.251875;
			y = safeZoneY + safeZoneH * 0.75777778;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.05;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_syns_data; hint localize 'STR_sauvegarde_syns_data';";
		};
		class bouton_utiliser
		{
			type = 1;
			idc = 3011;
			x = safeZoneX + safeZoneW * 0.61302084;
			y = safeZoneY + safeZoneH * 0.75;
			w = safeZoneW * 0.06614584;
			h = safeZoneH * 0.02592593;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_menuY_bouton_utiliser;";
		};
		class bouton_donner
		{
			type = 1;
			idc = 3012;
			x = safeZoneX + safeZoneW * 0.73802084;
			y = safeZoneY + safeZoneH * 0.74907408;
			w = safeZoneW * 0.059375;
			h = safeZoneH * 0.02685186;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_menuY_bouton_donner;";
		};
		class bouton_supprimer
		{
			type = 1;
			idc = 3013;
			x = safeZoneX + safeZoneW * 0.665625;
			y = safeZoneY + safeZoneH * 0.78611112;
			w = safeZoneW * 0.0890625;
			h = safeZoneH * 0.02592593;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; [] call mission_fnc_menuY_bouton_supprimer;";
		};
		class bouton_admin
		{
			type = 1;
			idc = 3014;
			x = safeZoneX + safeZoneW * 0.71822917;
			y = safeZoneY + safeZoneH * 0.25833334;
			w = safeZoneW * 0.05833334;
			h = safeZoneH * 0.02685186;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
			//colorBackgroundActive[] = {0,0,0,0};
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
			onButtonClick = "playSound 'button'; [] call menuY_open_admin;";
		};
		class bouton_fermer
		{
			type = 1;
			idc = 3015;
			x = safeZoneX + safeZoneW * 0.78333334;
			y = safeZoneY + safeZoneH * 0.25833334;
			w = safeZoneW * 0.02291667;
			h = safeZoneH * 0.02685186;
			style = 0;
			text = "";
			borderSize = 0;
			colorBackground[] = {0,0,0,0};
			colorBackgroundActive[] = {0.6,0,0,0.5};
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
			onButtonClick = "playSound 'button'; closeDialog 1; menu_y_ok = true;";
		};
		class liste_competences
		{
			type = 5;
			idc = 3001;
			x = safeZoneX + safeZoneW * 0.434375;
			y = safeZoneY + safeZoneH * 0.37444445;
			w = safeZoneW * 0.150625;
			h = safeZoneH * 0.31555556;
			style = 16;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.5);
			soundSelect[] = {"",0,0};
			class ListScrollBar
			{
				color[] = {0,0,0,0};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
			onLBSelChanged = "if ((lbCurSel ((findDisplay 3000) displayCtrl 3001)) != -1) then {((findDisplay 3000) displayCtrl 3001) lbSetCurSel -1;};";
		};
		class liste_objets
		{
			type = 5;
			idc = 3002;
			x = safeZoneX + safeZoneW * 0.629375;
			y = safeZoneY + safeZoneH * 0.37333334;
			w = safeZoneW * 0.150625;
			h = safeZoneH * 0.31555556;
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
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
			onLBSelChanged = "[] call mission_fnc_menuY_liste_objets;";
			onLBDblClick = "playSound 'button'; [] call mission_fnc_menuY_bouton_utiliser;";
		};
		class bar_xp
		{
			type = 8;
			idc = 3003;
			x = safeZoneX + safeZoneW * 0.22875;
			y = safeZoneY + safeZoneH * 0.71444445;
			w = safeZoneW * 0.155625;
			h = safeZoneH * 0.03111112;
			style = 0;
			colorBar[] = {0.6,0,0,0.5};
			colorFrame[] = {0,0,0,0};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			tooltipColorBox[] = {0,0,0,0};
			tooltipColorShade[] = {0,0,0,0};
			tooltipColorText[] = {0,0,0,0};
			
		};
		class texte_xp
		{
			type = 0;
			idc = 3004;
			x = safeZoneX + safeZoneW * 0.2734375;
			y = safeZoneY + safeZoneH * 0.67222223;
			w = safeZoneW * 0.06197917;
			h = safeZoneH * 0.03148149;
			style = 2+192;
			text = $STR_erreur;
			colorBackground[] = {0,0,0,0};
			colorText[] = {0.702,0.702,0.702,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.25);
			
		};
		class nb_items
		{
			type = 2;
			idc = 3005;
			x = safeZoneX + safeZoneW * 0.695;
			y = safeZoneY + safeZoneH * 0.74555556;
			w = safeZoneW * 0.026875;
			h = safeZoneH * 0.03222223;
			style = 192+2;
			text = "1";
			autocomplete = "";
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelection[] = {0,0,0,0};
			colorText[] = {0.702,0.702,0.702,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.25);
			
		};
		class liste_joueurs
		{
			type = 5;
			idc = 3006;
			x = safeZoneX + safeZoneW * 0.629375;
			y = safeZoneY + safeZoneH * 0.71;
			w = safeZoneW * 0.151875;
			h = safeZoneH * 0.03222223;
			style = 16+2;
			colorBackground[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorSelect[] = {1,1,1,1};
			colorText[] = {0.6,0.6,0.6,1};
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
			onLBSelChanged = "[] call mission_fnc_menuY_liste_joueurs;";
		};
		class text_bar_xp
		{
			type = 0;
			idc = 3018;
			x = safeZoneX + safeZoneW * 0.22875;
			y = safeZoneY + safeZoneH * 0.71222223;
			w = safeZoneW * 0.155625;
			h = safeZoneH * 0.03111112;
			style = 2;
			text = "";
			colorBackground[] = {0.0549,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
	};
};

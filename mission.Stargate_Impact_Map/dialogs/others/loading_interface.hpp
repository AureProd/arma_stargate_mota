
class loading_interface
{
	idd = -1; // 10500
	duration = 1000;
	onLoad = "uiNamespace setVariable ['loading_interface', _this select 0]"; // TODO: strange
	onUnload = "uiNamespace setVariable ['loading_interface', objNull]";
	onDestroy = "uiNamespace setVariable ['loading_interface', objNull]";
	class controls
	{
		class loading_5
		{
			type = 0;
			idc = 10501;
			x = safeZoneX + safeZoneW * 0.438125;
			y = safeZoneY + safeZoneH * 0.41111112;
			w = safeZoneW * 0.125;
			h = safeZoneH * 0.21333334;
			style = 48;
			text = "pictures\stargate_loading\stargate_loading_5.paa";
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class loading_4
		{
			type = 0;
			idc = 10502;
			x = safeZoneX + safeZoneW * 0.438125;
			y = safeZoneY + safeZoneH * 0.41111112;
			w = safeZoneW * 0.125;
			h = safeZoneH * 0.21333334;
			style = 48;
			text = "pictures\stargate_loading\stargate_loading_4.paa";
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class loading_3
		{
			type = 0;
			idc = 10503;
			x = safeZoneX + safeZoneW * 0.438125;
			y = safeZoneY + safeZoneH * 0.41111112;
			w = safeZoneW * 0.125;
			h = safeZoneH * 0.21333334;
			style = 48;
			text = "pictures\stargate_loading\stargate_loading_3.paa";
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		}; 
		class loading_2
		{
			type = 0;
			idc = 10504;
			x = safeZoneX + safeZoneW * 0.438125;
			y = safeZoneY + safeZoneH * 0.41111112;
			w = safeZoneW * 0.125;
			h = safeZoneH * 0.21333334;
			style = 48;
			text = "pictures\stargate_loading\stargate_loading_2.paa";
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class loading_1
		{
			type = 0;
			idc = 10505;
			x = safeZoneX + safeZoneW * 0.43875;
			y = safeZoneY + safeZoneH * 0.41555556;
			w = safeZoneW * 0.125625;
			h = safeZoneH * 0.20333334;
			style = 48;
			text = "pictures\stargate_loading\stargate_loading_1.paa";
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
	};
};








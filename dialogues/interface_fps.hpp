
class interface_fps
{
	idd = -1;
	duration = 10e10;
	movingEnable = 0;
	onLoad = "uiNamespace setVariable ['interface_fps', _this select 0]";
	onUnload = "uiNamespace setVariable ['interface_fps', objNull]";
	onDestroy = "uiNamespace setVariable ['interface_fps', objNull]";
	class Controls
	{
		class bar_bleu
		{
			type = 0;
			idc = 1001;
			x = safeZoneX + safeZoneW * 0.3;
			y = safeZoneY + safeZoneH * 0.02111112;
			w = safeZoneW * 0;
			h = safeZoneH * 0.03111112;
			style = 0;
			text = "";
			colorBackground[] = {0.102,0.2,0.6,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class bar_red
		{
			type = 0;
			idc = 1002;
			x = safeZoneX + safeZoneW * 0.7;
			y = safeZoneY + safeZoneH * 0.02111112;
			w = safeZoneW * 0;
			h = safeZoneH * 0.03111112;
			style = 0;
			text = "";
			colorBackground[] = {0.702,0.702,0.102,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class image_fond
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.083125;
			y = safeZoneY + safeZoneH * -0.04444444;
			w = safeZoneW * 0.833125;
			h = safeZoneH * 1.06333334;
			style = 48;
			text = "images\bar_fps.paa";
			colorBackground[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
	};
};
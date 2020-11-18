
class blackout
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	fadeout = 0;
	fadein = 0;
	duration = 999999999;
	class controls
	{
		class blackbackground
		{
            type = 0;
			idc = -1;
			x = 0 * safezoneW + safezoneX;
			y = 0 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
			colorBackground[] = {0,0,0,2};
            style = 0;
            text = "";
            colorText[] = {0,0,0,0};
            font = "PuristaMedium";
            sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
	};
};

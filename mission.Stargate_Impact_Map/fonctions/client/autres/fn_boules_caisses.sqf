
player setVariable ["earplugs", 0];

waituntil {!(IsNull (findDisplay 46))};  

(findDisplay 46) displayAddEventHandler ["KeyDown", 
{
	if ((_this select 1) == 59) then 
	{
		private _temp = player getVariable "earplugs";

		switch (_temp) do 
		{
			case 30: 
			{
				player setvariable ["earplugs", 0];
				1 fadeSound 1;
				[(parseText format ["<t align='center' shadow='2' size='4'><t color='#F6A821'>%1</t></t><br/>", (localize "STR_boules_caises_1")]), [0,0.7,1,0.5], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
			};
			case 50: 
			{
				player setvariable ["earplugs", 30];
				1 fadeSound 0.7;
				[(parseText format ["<t align='center' shadow='2' size='4'><t color='#F6A821'>%1</t></t><br/>", (localize "STR_boules_caises_2")]), [0,0.7,1,0.5], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
			};
			case 80: 
			{
				player setvariable ["earplugs", 50];
				1 fadeSound 0.5;
				[(parseText format ["<t align='center' shadow='2' size='4'><t color='#F6A821'>%1</t></t><br/>", (localize "STR_boules_caises_3")]), [0,0.7,1,0.5], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
			};
			case 90: 
			{
				player setvariable ["earplugs", 80];
				1 fadeSound 0.2;
				[(parseText format ["<t align='center' shadow='2' size='4'><t color='#F6A821'>%1</t></t><br/>", (localize "STR_boules_caises_4")]), [0,0.7,1,0.5], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
			};
			case 95: 
			{
				player setvariable ["earplugs", 90];
				1 fadeSound 0.1;
				[(parseText format ["<t align='center' shadow='2' size='4'><t color='#F6A821'>%1</t></t><br/>", (localize "STR_boules_caises_5")]), [0,0.7,1,0.5], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
			};
			case 0: 
			{
				player setvariable ["earplugs", 95];
				1 fadeSound 0.01;
				[(parseText format ["<t align='center' shadow='2' size='4'><t color='#F6A821'>%1</t></t><br/>", (localize "STR_boules_caises_6")]), [0,0.7,1,0.5], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
			};
		};	
	};
}];
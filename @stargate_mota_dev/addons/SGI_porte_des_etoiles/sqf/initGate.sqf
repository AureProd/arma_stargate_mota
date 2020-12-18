
private _porte = param [0];

private _light = {
	private _porte = param [0];
	private _toON = param [1, false];

	if ((typeOf _porte) == "SGI_gate") then {
		if (_toON) then {
			_porte setObjectTexture [1, "#(rgb,8,8,3)color(1,0,0,1)"];
			_porte setObjectTexture [3, "#(rgb,8,8,3)color(1,0,0,1)"];
			_porte setObjectTexture [5, "#(rgb,8,8,3)color(1,0,0,1)"];
			_porte setObjectTexture [7, "#(rgb,8,8,3)color(1,0,0,1)"];
			// _porte setObjectTexture [9, "#(rgb,8,8,3)color(1,0,0,1)"];
			// _porte setObjectTexture [11, "#(rgb,8,8,3)color(1,0,0,1)"];
			_porte setObjectTexture [13, "#(rgb,8,8,3)color(1,0,0,1)"];
			_porte setObjectTexture [15, "#(rgb,8,8,3)color(1,0,0,1)"];
			_porte setObjectTexture [17, "#(rgb,8,8,3)color(1,0,0,1)"];
		} else {
			_porte setObjectTexture [1, "#(rgb,8,8,3)color(0.05,0,0,1)"];
			_porte setObjectTexture [3, "#(rgb,8,8,3)color(0.05,0,0,1)"];
			_porte setObjectTexture [5, "#(rgb,8,8,3)color(0.05,0,0,1)"];
			_porte setObjectTexture [7, "#(rgb,8,8,3)color(0.05,0,0,1)"];
			//_porte setObjectTexture [9, "#(rgb,8,8,3)color(0.05,0,0,1)"];
			//_porte setObjectTexture [11, "#(rgb,8,8,3)color(0.05,0,0,1)"];
			_porte setObjectTexture [13, "#(rgb,8,8,3)color(0.05,0,0,1)"];
			_porte setObjectTexture [15, "#(rgb,8,8,3)color(0.05,0,0,1)"];
			_porte setObjectTexture [17, "#(rgb,8,8,3)color(0.05,0,0,1)"];
		};
	} else {
		if (_toON) then {
			_porte setObjectTexture [0, "#(rgb,8,8,3)color(0,0.5,1,1)"];
			_porte setObjectTexture [1, "#(rgb,8,8,3)color(0,0.5,1,1)"];
			_porte setObjectTexture [2, "#(rgb,8,8,3)color(0,0.5,1,1)"];
			_porte setObjectTexture [3, "#(rgb,8,8,3)color(0,0.5,1,1)"];
			// _porte setObjectTexture [4, "#(rgb,8,8,3)color(0,0,1,1)"];
			// _porte setObjectTexture [5, "#(rgb,8,8,3)color(0,0,1,1)"];
			_porte setObjectTexture [6, "#(rgb,8,8,3)color(0,0.5,1,1)"];
			_porte setObjectTexture [7, "#(rgb,8,8,3)color(0,0.5,1,1)"];
			_porte setObjectTexture [8, "#(rgb,8,8,3)color(0,0.5,1,1)"];
		} else {
			_porte setObjectTexture [0, "#(rgb,8,8,3)color(0,0,0.05,1)"];
			_porte setObjectTexture [1, "#(rgb,8,8,3)color(0,0,0.05,1)"];
			_porte setObjectTexture [2, "#(rgb,8,8,3)color(0,0,0.05,1)"];
			_porte setObjectTexture [3, "#(rgb,8,8,3)color(0,0,0.05,1)"];
			// _porte setObjectTexture [4, "#(rgb,8,8,3)color(0,0,0.05,1)"];
			// _porte setObjectTexture [5, "#(rgb,8,8,3)color(0,0,0.05,1)"];
			_porte setObjectTexture [6, "#(rgb,8,8,3)color(0,0,0.05,1)"];
			_porte setObjectTexture [7, "#(rgb,8,8,3)color(0,0,0.05,1)"];
			_porte setObjectTexture [8, "#(rgb,8,8,3)color(0,0,0.05,1)"];
		};
	};
};

if ((typeOf _porte) == "SGI_gate") then {
	[_porte, false] call _light;

	_porte setObjectTexture [20, "\sga_dhd\tex\glyphs.paa"];
	_porte setObjectTexture [21, "\sga_dhd\tex\innerr.paa"];
} else {
	[_porte, false] call _light;
	
	_porte setObjectTexture [10, "\SGI_porte_des_etoiles\Texture\SGI_portedesetoiles_co.paa"];
};

{
	private _position = getPos _x;
	_position set [2, (_position select 2) + 8];

	if ((_x distance player) < 2000) then {
		switch (_x getVariable "etat_drapeau") do {
			case 0: { 
				drawIcon3D ["\A3\ui_f\data\map\markers\military\warning_CA.paa", [1, 1, 1, 1], _position, 1, 1, 0, "", 1, 0.035, "PuristaMedium"]; // blanc
			};
			case 1: { 
				drawIcon3D ["\A3\ui_f\data\map\markers\military\warning_CA.paa", [0, 0, 1, 1], _position, 1, 1, 0, "", 1, 0.035, "PuristaMedium"]; // bleu
			};
			case 2: { 
				drawIcon3D ["\A3\ui_f\data\map\markers\military\warning_CA.paa", [1, 1, 0, 1], _position, 1, 1, 0, "", 1, 0.035, "PuristaMedium"]; // doré
			};
		};
	};
} forEach tableau_drapeaux;
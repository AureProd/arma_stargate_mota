// nom fichier : mission_fnc_ajout_vehicle
// paramettres : [id vehicle, position, direction, isLocation, joueur]

private _getPos = {
	private _joueur = param [0];
	private _posJoueur = (getPos _joueur);
	private _dirJoueur = (getDir _joueur);
	private _pos = [(_posJoueur select 0), (_posJoueur select 1), (_posJoueur select 2)];
	
	if (((_dirJoueur > 315) or (_dirJoueur <= 45)) or ((_dirJoueur > 135) and (_dirJoueur <= 225))) then {
		if ((_dirJoueur > 315) or (_dirJoueur <= 45)) then {
			_pos set [1, ((_pos select 1) + 5)];
		} else {
			_pos set [1, ((_pos select 1) - 5)];
		};
	} else {
		if ((_dirJoueur > 45) and (_dirJoueur <= 135)) then {
			_pos set [0, ((_pos select 0) + 5)];
		} else {
			_pos set [0, ((_pos select 0) - 5)];
		};
	};

	_pos;
};

private _vehicleId = param [0, "C_Offroad_02_unarmed_black_F"];
private _isLocation = param [3, true];
private _joueur = param [4, player];
private _spawnPosition = param [1, ([_joueur] call _getPos)];
private _spawnDir = param [2, (getDir _joueur)];

private _joueurUid = (getPlayerUID _joueur);

private _vehicle = createVehicle [_vehicleId, _spawnPosition];
_vehicle setDir _spawnDir;
_vehicle lockInventory true;

_vehicle setVariable ["imatriculation", [true, _joueurUid, _isLocation], true];


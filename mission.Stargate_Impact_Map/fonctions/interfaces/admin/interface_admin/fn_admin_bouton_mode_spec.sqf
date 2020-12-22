
private _bouton_mode_spec = (findDisplay 12000) displayCtrl 12023;

private _player = [] call mission_fnc_admin_get_player;

if (SPECMODE) then {
	//private _camera = SPECMODE select 1;

	if (!((isObjectHidden player) and ISINVISIBLE)) then {
		[player, false] remoteExec ["hideObject", -2, true];
	};

	detach player;

	SPECMODE = false;
} else {
	SPECMODE = true;

	if (!((isObjectHidden player) and ISINVISIBLE)) then {
		[player, true] remoteExec ["hideObject", -2, true];
	};

	player attachTo [_player, [0, 0, 0.4]];

	[_player] spawn {
		private _player = param [0];

		while {SPECMODE} do {
			waitUntil { (vehicle _player) != _player }; 

			detach player;
			player attachTo [(vehicle _player), [0, 0, 0.4]];

			waitUntil { (vehicle _player) == _player }; 

			detach player;
			player attachTo [_player, [0, 0, 0.4]];
		};
	};

	[_player] spawn {
		while {SPECMODE} do {
			waitUntil { SPECMODE and (isNull attachedTo player) };

			if (SPECMODE) then {
				if (!((isObjectHidden player) and ISINVISIBLE)) then {
					[player, false] remoteExec ["hideObject", -2, true];
				};

				SPECMODE = false;
			};
		};
	};
};

if (SPECMODE) then {
	_bouton_mode_spec ctrlSetText format [localize "STR_admin_on_off_spec_mode", "ON"];
} else {
	_bouton_mode_spec ctrlSetText format [localize "STR_admin_on_off_spec_mode", "OFF"];
};

/* 
	SYSTEME SPEC DIFFERENT MAIS NUL CAR PAS SON

if (SPECMODE select 0) then {
	private _camera = SPECMODE select 1;

	_camera cameraEffect ["terminate", "back"];
	camDestroy _camera;

	SPECMODE = [false, nil];
} else {
	private _camera = "camera" camCreate (eyePos _player);
	SPECMODE = [true, _camera];

	_camera attachTo [_player, [0, 0, 0], 'head'];
	_camera cameraEffect ["internal", "back"];
}; */
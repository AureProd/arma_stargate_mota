
private _bouton_mode_spec = (findDisplay 12000) displayCtrl 12023;

if (SPECMODE select 0) then {
	private _camera = SPECMODE select 1;

	_camera cameraEffect ["terminate", "back"];
	camDestroy _camera;

	SPECMODE = [false, nil];
} else {
	private _camera = "camera" camCreate (eyePos player);
	SPECMODE = [true, _camera];

	_camera attachTo [player, [0, 0, 0], 'head'];

	[_camera] spawn {
		private _camera = param [0];

		sleep 5;

		_camera cameraEffect ["internal", "back"];
	};
};

if (SPECMODE select 0) then {
	_bouton_mode_spec ctrlSetText format [localize "STR_admin_on_off_spec_mode", "ON"];
} else {
	_bouton_mode_spec ctrlSetText format [localize "STR_admin_on_off_spec_mode", "OFF"];
};
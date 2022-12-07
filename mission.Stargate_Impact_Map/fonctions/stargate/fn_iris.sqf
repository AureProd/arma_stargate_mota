// mission_fnc_iris
// params = [porte]

private _porte = param [0]; // porte

private _animation = 0;

if ((_porte animationPhase "anim_iris1") == 0) then {
	_animation = 1;

	_porte say3D ["close_iris", 50];
} else {
	_porte say3D ["open_iris", 50];
};

for "_i" from 1 to 22 do {
	_porte animate [format ["anim_iris%1", _i], _animation];
};

sleep 1.5;

if (_animation == 0) then {
	if ((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 0) then {
		private _lightBis = ((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 3);

		if (isNil "_lightBis") then {
			private _var = (_porte getVariable ['isOpen', [false, nil, false, false, false]]);

			[_porte] remoteExec ["mission_fnc_createLight", 0];
		};
	};
} else {
	if ((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 0) then {
		private _lightBis = ((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 3);

		if (!(isNil "_lightBis")) then {
			private _var = (_porte getVariable ['isOpen', [false, nil, false, false, false]]);

			{ 
				if((typeOf _x) == "#lightpoint") then {
					deleteVehicle _x;
				};
			} forEach (attachedObjects _porte);
		};
	};
};
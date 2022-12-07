// mission_fnc_ring
// params = [porte]

private _porte = param [0];
private _porteDistante = param [1];

// bleu foncé [0,0,0.153,1]
// bleu clair [0,0,1,1]

// rouge foncé [0.198,0,0,1]
// rouge clair [1,0,0,1]

private _ring_porte_sga = {
	private _porte = param [0];
	private _numAnimLogo = param [1];
	private _numLight = param [2];

	private _son = "#particlesource" createVehicle ASLToAGL getPosWorld _porte;
	
	[_son, ["gate_ring", 50]] remoteExec ["say3D", 0];
	[_porte, ["anim_ring", _numAnimLogo]] remoteExec ["animate", 0];

	if ((_porte animationPhase "anim_ring") > _numAnimLogo) then {
		sleep ((10 * ((_porte animationPhase "anim_ring") - _numAnimLogo)));
	} else {
		sleep ((10 * (_numAnimLogo - (_porte animationPhase "anim_ring"))));
	};

	deleteVehicle _son;

	sleep 1;

	[_porte, ["sg_chevron_lock", 50]] remoteExec ["say3D", 0];
	[_porte, ["lock_chevron", 1]] remoteExec ["animate", 0];
	[_porte, [1, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0];

	sleep 0.1;
	
	if (_numLight != 1) then {
		[_porte, [_numLight, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0];
	};

	sleep 0.5;

	[_porte, ["lock_chevron", 0]] remoteExec ["animate", 0];
	
	if (_numLight != 1) then {
		[_porte, [1, "#(rgb,8,8,3)color(0.05,0,0,1)"]] remoteExec ["setObjectTexture", 0];

		sleep 1;
	};
};

private _ring_porte_sgi = {
	private _porte = param [0];
	private _numAnimLogo = param [1];
	private _numLight = param [2];

	private _son = "#particlesource" createVehicle ASLToAGL getPosWorld _porte;
	
	[_son, ["gate_ring", 50]] remoteExec ["say3D", 0];
	[_porte, ["anim_ring", _numAnimLogo]] remoteExec ["animate", 0];
	
	if ((_porte animationPhase "anim_ring") > _numAnimLogo) then {
		sleep ((10 * ((_porte animationPhase "anim_ring") - _numAnimLogo)));
	} else {
		sleep ((10 * (_numAnimLogo - (_porte animationPhase "anim_ring"))));
	};

	deleteVehicle _son;

	sleep 1;

	[_porte, ["chevron_lock", 50]] remoteExec ["say3D", 0];
	[_porte, [0, "#(rgb,8,8,3)color(0,0.5,1,1)"]] remoteExec ["setObjectTexture", 0];

	if (_numLight != 0) then {
		sleep 0.2;

		[_porte, [_numLight, "#(rgb,8,8,3)color(0,0.5,1,1)"]] remoteExec ["setObjectTexture", 0];

		sleep 0.5;

		[_porte, [0, "#(rgb,8,8,3)color(0,0,0.05,1)"]] remoteExec ["setObjectTexture", 0];
	};
};

private _light = {
	private _porteDistante = param [0];
	private _numLight = param [1];
	private _numLight_bis = param [2];

	if ((typeOf _porteDistante) == "SGI_gate") then {
		[_porteDistante, ["sg_chevron_lock", 50]] remoteExec ["say3D", 0];
		[_porteDistante, [_numLight, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0];
	} else {
		[_porteDistante, ["chevron_lock", 50]] remoteExec ["say3D", 0];
		[_porteDistante, [_numLight_bis, "#(rgb,8,8,3)color(0,0.5,1,1)"]] remoteExec ["setObjectTexture", 0];
	};
};

private _listePlanetes = (getArray (missionConfigFile >> "docs_planetes" >> "planetes" >> "liste"));
private _listeLogos = (getArray (missionConfigFile >> "docs_planetes" >> "planetes" >> "liste_logos"));

private _listeLogoPlanete = [];

if (!(isNil "_porteDistante")) then {
	private _indexPlanete = _listePlanetes findIf {
		(call compile (_x select 3)) == _porteDistante
	};

	if (_indexPlanete != -1) then {
		private _planete = _listePlanetes select _indexPlanete;

		{
			private _indexPlaneteTableau = _x;

			private _indexLogo = _listeLogos findIf {
				_indexPlaneteTableau == (_x select 0)
			};

			_listeLogoPlanete pushBack (_listeLogos select _indexLogo);
		} forEach (_planete select 5);
	};
};

if ((typeOf _porte) == "SGI_gate") then {
	if (!((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 0)) then {
		sleep 0.5;

		_porte setVariable ["isOpen", [true, _porteDistante, true, false, false], true];
		_porteDistante setVariable ["isOpen", [true, _porte, false, false, false], true];

		[_porte, ((_listeLogoPlanete select 0) select 2), 3] call _ring_porte_sga;
		[_porteDistante, 3, 8] call _light;
		sleep 1;
		[_porte, ((_listeLogoPlanete select 1) select 2), 5] call _ring_porte_sga;
		[_porteDistante, 5, 7] call _light;
		sleep 1;
		[_porte, ((_listeLogoPlanete select 2) select 2), 7] call _ring_porte_sga;
		[_porteDistante, 7, 6] call _light;
		sleep 1;

		[_porte, ((_listeLogoPlanete select 3) select 2), 13] call _ring_porte_sga;
		[_porteDistante, 13, 3] call _light;
		sleep 1;
		[_porte, ((_listeLogoPlanete select 4) select 2), 15] call _ring_porte_sga;
		[_porteDistante, 15, 2] call _light;
		sleep 1;
		[_porte, ((_listeLogoPlanete select 5) select 2), 17] call _ring_porte_sga;
		[_porteDistante, 17, 1] call _light;
		sleep 1;

		[_porte, ((_listeLogoPlanete select 6) select 2), 1] call _ring_porte_sga;
		[_porteDistante, 1, 0] call _light;
	} else {
		[_porte, false] call mission_fnc_light;
	};
} else {
	if (!((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 0)) then {
		sleep 0.5;

		_porte setVariable ["isOpen", [true, _porteDistante, true, false, false], true];
		_porteDistante setVariable ["isOpen", [true, _porte, false, false, false], true];

		[_porte, ((_listeLogoPlanete select 0) select 1), 8] call _ring_porte_sgi;
		[_porteDistante, 3, 8] call _light;
		sleep 1;
		[_porte, ((_listeLogoPlanete select 1) select 1), 7] call _ring_porte_sgi;
		[_porteDistante, 5, 7] call _light;
		sleep 1;
		[_porte, ((_listeLogoPlanete select 2) select 1), 6] call _ring_porte_sgi;
		[_porteDistante, 7, 6] call _light;
		sleep 1;
			
		[_porte, ((_listeLogoPlanete select 3) select 1), 3] call _ring_porte_sgi;
		[_porteDistante, 13, 3] call _light;
		sleep 1;
		[_porte, ((_listeLogoPlanete select 4) select 1), 2] call _ring_porte_sgi;
		[_porteDistante, 15, 2] call _light;
		sleep 1;
		[_porte, ((_listeLogoPlanete select 5) select 1), 1] call _ring_porte_sgi;
		[_porteDistante, 17, 1] call _light;
		sleep 1;

		[_porte, ((_listeLogoPlanete select 6) select 1), 0] call _ring_porte_sgi;
		[_porteDistante, 1, 0] call _light;
	} else {
		[_porte, false] call mission_fnc_light;
	};
};


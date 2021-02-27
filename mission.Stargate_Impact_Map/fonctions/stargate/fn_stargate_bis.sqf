// mission_fnc_stargate_bis
// params = [porte, porte distante]

private _porte = param [0]; // porte
private _porteDistante = param [1, nil]; // porte distante

if (isNil "_porteDistante") then {
	_porteDistante = ((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 1);
};

if (!((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 0) and !((_porteDistante getVariable ['isOpen', [false, nil, false, false, false]]) select 0)) then {
	[_porte, {
		[param [0], param [2]] call mission_fnc_ring_bis;
	}, _porteDistante] call mission_fnc_dhd;

	sleep 0.3;

	[_porte, ["gate_open", 50]] remoteExec ["say3D", 0];
	[_porteDistante, ["gate_open", 50]] remoteExec ["say3D", 0];

	[_porte] remoteExec ["mission_fnc_kawoosh", 0];
	[_porteDistante] remoteExec ["mission_fnc_kawoosh", 0];

	if ((_porte animationPhase 'anim_iris1') == 0) then {
		[_porte] remoteExec ["mission_fnc_createLight", 0];

		// variable "isOpen" --> [true si ouverte, porte distante, is porte principale, true pour dhd de lancé, true si horizon ouvert]
		_porte setVariable ["isOpen", [true, _porteDistante, true, false, true], true];
	} else {
		_porte setVariable ["isOpen", [true, _porteDistante, true, false, true], true];
	};

	if ((_porteDistante animationPhase 'anim_iris1') == 0) then {
		[_porteDistante] remoteExec ["mission_fnc_createLight", 0];

		_porteDistante setVariable ["isOpen", [true, _porte, false, false, true], true];
	} else {
		_porteDistante setVariable ["isOpen", [true, _porte, false, false, true], true];
	};

	//missionNamespace setVariable ["skipPorteVar", false];

	for "_i" from 1 to 17 step 1 do {
		if ((typeOf _porte) == "SGI_gate") then {
			//_porte setObjectTexture [18, format ["photos\init%1.paa", _i]]; // remote exec
			[_porte, [18, format ["photos\init%1.paa", _i]]] remoteExec ["setObjectTexture", 0];
		} else {
			//_porte setObjectTexture [9, format ["photos\init%1.paa", _i]];
			[_porte, [9, format ["photos\init%1.paa", _i]]] remoteExec ["setObjectTexture", 0];
		};

		if ((typeOf _porteDistante) == "SGI_gate") then {
			//_porteDistante setObjectTexture [18, format ["photos\init%1.paa", _i]];
			[_porteDistante, [18, format ["photos\init%1.paa", _i]]] remoteExec ["setObjectTexture", 0];
		} else {
			//_porteDistante setObjectTexture [9, format ["photos\init%1.paa", _i]];
			[_porteDistante, [9, format ["photos\init%1.paa", _i]]] remoteExec ["setObjectTexture", 0];
		};

		sleep 0.05;
	};

	if ((typeOf _porte) == "SGI_gate") then {
		//_porte setObjectTexture [18, "videos\horison_events.ogv"];
		[_porte, [18, "videos\horison_events.ogv"]] remoteExec ["setObjectTexture", 0];
	} else {
		//_porte setObjectTexture [9, "videos\horison_events.ogv"];
		[_porte, [9, "videos\horison_events.ogv"]] remoteExec ["setObjectTexture", 0];
	};

	if ((typeOf _porteDistante) == "SGI_gate") then {
		//_porteDistante setObjectTexture [18, "videos\horison_events.ogv"];
		[_porteDistante, [18, "videos\horison_events.ogv"]] remoteExec ["setObjectTexture", 0];
	} else {
		//_porteDistante setObjectTexture [9, "videos\horison_events.ogv"];
		[_porteDistante, [9, "videos\horison_events.ogv"]] remoteExec ["setObjectTexture", 0];
	};

	// variable "isOpen" --> [true si ouverte, porte distante, is porte principale, nil, true si horizon ouvert]
	private _varPorte = _porte getVariable "isOpen";
	private _varPorteDistante = _porteDistante getVariable "isOpen";
	_varPorte set [4, true];
	_varPorteDistante set [4, true];
	_porte getVariable ["isOpen", _varPorte];
	_porteDistante getVariable ["isOpen", _varPorteDistante];

	while { (((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 0) and ((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 4)) } do {
		if (missionNamespace getVariable ["skipPorteVarBis", true]) then {
			["videos\horison_events.ogv", [10, 10], [1,1,1,1], "skipPorteVar", [0,0,0,0], false] remoteExec ["BIS_fnc_playVideo", 0]; 
			// ["videos\horison_events.ogv", [10, 10], [1,1,1,1], "skipPorteVar", [0,0,0,0], false] spawn BIS_fnc_playVideo;
		};

		sleep (60 * 4);
	}; 
} else {
	if (!((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 0)) then {
		[_porte, {
			[param [0], param [2]] call mission_fnc_ring;
		}, _porteDistante] call mission_fnc_dhd;

		sleep 1;
		
		_porte setVariable ["isOpen", [false, nil, false, false, false], true];

		//_porte say3D ["gate_stop", 50];
		[_porte, ["gate_close", 50]] remoteExec ["say3D", 0];

		[_porte, false] call mission_fnc_light;

		hint localize "STR_porte_distante_deja_ouverte";
	} else {
		sleep 0.5;

		//deleteVehicle ((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 3);
		//deleteVehicle ((_porteDistante getVariable ['isOpen', [false, nil, false, false, false]]) select 3);

		{ 
			if((typeOf _x) == "#lightpoint") then {
				deleteVehicle _x;
			};
		} forEach (attachedObjects _porte);

		{ 
			if((typeOf _x) == "#lightpoint") then {
				deleteVehicle _x;
			};
		} forEach (attachedObjects _porteDistante);

		//missionNamespace setVariable ["skipPorteVar", true];

		private _inpos = _porte selectionPosition ["ring", "Memory"];
		private _inposBis = _porteDistante selectionPosition ["ring", "Memory"];
		private _light = nil;
		private _lightBis = nil;

		if ((_porte animationPhase 'anim_iris1') == 0) then {
			_light = "#lightpoint" createVehicleLocal (getPos _porte);  
			_light setLightBrightness 0.1;  
			_light setLightAmbient [1, 1, 1];  
			_light setLightColor [1, 1, 1];  
			_light setLightDayLight true;
			_light lightAttachObject [_porte, _inpos];
		};

		if ((_porteDistante animationPhase 'anim_iris1') == 0) then {
			_lightBis = "#lightpoint" createVehicleLocal (getPos _porteDistante);  
			_lightBis setLightBrightness 0.1;  
			_lightBis setLightAmbient [1, 1, 1];  
			_lightBis setLightColor [1, 1, 1];  
			_lightBis setLightDayLight true;
			_lightBis lightAttachObject [_porteDistante, _inposBis];
		};

		//_porte say3D ["gate_close", 50];
		[_porte, ["gate_close", 50]] remoteExec ["say3D", 0];
		//_porteDistante say3D ["gate_close", 50];
		[_porteDistante, ["gate_close", 50]] remoteExec ["say3D", 0];

		for "_i" from 17 to 1 step -1 do {
			if ((typeOf _porte) == "SGI_gate") then {
				//_porte setObjectTexture [18, format ["photos\init%1.paa", _i]];
				[_porte, [18, format ["photos\init%1.paa", _i]]] remoteExec ["setObjectTexture", 0];
			} else {
				//_porte setObjectTexture [9, format ["photos\init%1.paa", _i]];
				[_porte, [9, format ["photos\init%1.paa", _i]]] remoteExec ["setObjectTexture", 0];
			};

			if ((typeOf _porteDistante) == "SGI_gate") then {
				//_porteDistante setObjectTexture [18, format ["photos\init%1.paa", _i]];
				[_porteDistante, [18, format ["photos\init%1.paa", _i]]] remoteExec ["setObjectTexture", 0];
			} else {
				//_porteDistante setObjectTexture [9, format ["photos\init%1.paa", _i]];
				[_porteDistante, [9, format ["photos\init%1.paa", _i]]] remoteExec ["setObjectTexture", 0];
			};

			sleep 0.1;
		};

		if (!(isNil "_light")) then {
			deleteVehicle _light;
		};

		if (!(isNil "_lightBis")) then {
			deleteVehicle _lightBis;
		};

		[_porte] call mission_fnc_ring;
		[_porteDistante] call mission_fnc_ring;

		if ((typeOf _porte) == "SGI_gate") then {
			//_porte setObjectTexture [18, ""]; // #(rgb,8,8,3)color(1,0,0,1)
			[_porte, [18, ""]] remoteExec ["setObjectTexture", 0];
		} else {
			//_porte setObjectTexture [9, ""]; // #(rgb,8,8,3)color(1,0,0,1)
			[_porte, [9, ""]] remoteExec ["setObjectTexture", 0];
		};

		if ((typeOf _porteDistante) == "SGI_gate") then {
			//_porteDistante setObjectTexture [18, ""]; // #(rgb,8,8,3)color(1,0,0,1)
			[_porteDistante, [18, ""]] remoteExec ["setObjectTexture", 0];
		} else {
			//_porteDistante setObjectTexture [9, ""]; // #(rgb,8,8,3)color(1,0,0,1)
			[_porteDistante, [9, ""]] remoteExec ["setObjectTexture", 0];
		};

		_porte setVariable ["isOpen", [false, nil, false, false, false], true];
		_porteDistante setVariable ["isOpen", [false, nil, false, false, false], true];
	};
};




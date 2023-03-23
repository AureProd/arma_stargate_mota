// sg_fnc_gate_player_listener
// this function define all add actions in link of the gate system
// params = []

{
	// define all variables from the config file
	private _planet = _x;
	private _planet_id = (_x select 0);
	private _dhd = (call compile (_x select 4));
	private _gate = (call compile (_x select 3));

	[_dhd] call sg_fnc_check_dhd;
	[_gate] call sg_fnc_check_gate;

	if ((typeOf _gate) == "SGI_gate") then { // if the gate is a tauri gate with iris system
        // define the script for the add action
		private _script = {
            private _gate = ((_this select 3) select 0);
			
			[_gate] call sg_fnc_check_gate; // check if the gate is valid

            [_gate] remoteExecCall ["sg_fnc_on_off_iris", 2]; // same script for open and close and run on server
        };

		[
            _dhd, 
            (localize "STR_close_iris"), 
            _script, 
            format ["((%1 animationPhase 'anim_iris1') == 0)", _gate], 
            [_gate]
        ] call sg_fnc_create_add_action; // define the add action for close the iris

        [
            _dhd, 
            (localize "STR_open_iris"), 
            _script, 
            format ["((%1 animationPhase 'anim_iris1') == 1)", _gate], 
            [_gate]
        ] call sg_fnc_create_add_action; // define the add action for open the iris
	};

    [
        _dhd, 
        (localize "STR_close_stargate"), 
        {
            private _gate = ((_this select 3) select 0);
            
			[_gate] call sg_fnc_check_gate; // check if the gate is valid

			[_gate] remoteExecCall ["sg_fnc_stargate_controller", 2];
        }, 
        format ["(%1 getVariable ['is_open_gate', false]) and !(%1 getVariable ['is_in_setup_gate', false])", _gate], 
        [_gate]
    ] call sg_fnc_create_add_action; // define the add action for run the stargate system for close the gate

	{
		// define all variables from the config file for the remote gate
		private _remote_gate = (call compile (_x select 3));
		private _remote_planet_id = (_x select 0);
		private _remote_planet_name = (_x select 1);

		[_remote_gate] call sg_fnc_check_gate; // check if the remote gate is valid

		if (_remote_planet_id != _planet_id) then { // if the planet of remote gate is not the same as the planet of current gate
			[
				_dhd, 
				(format [(localize "STR_open_stargate_to"), _remote_planet_name]), 
				{
					private _gate = ((_this select 3) select 0);
					private _remote_gate = ((_this select 3) select 1);
					
					[_gate] call sg_fnc_check_gate; // check if the gate is valid
					[_remote_gate] call sg_fnc_check_gate; // check if the remote gate is valid

					[_gate, _remote_gate] remoteExecCall ["sg_fnc_stargate_controller", 2]; // run the stargate system for open the gate
				}, 
				format ["(%1 getVariable ['is_open_gate', false]) and !(%1 getVariable ['is_in_setup_gate', false]) and ([%2] call mission_fnc_has_planetes)", _gate, _remote_planet_id], // TODO: function name -> ([%2] call mission_fnc_has_planetes)
				[_gate, _remote_gate]
			] call sg_fnc_create_add_action; // define the add action for run the stargate system for open the gate
		};
	} forEach (getArray (missionConfigFile >> "planets" >> "gates" >> "planets")); // for each remote gate planet from the config file

	[_gate] spawn sg_fnc_player_transport_detection; // run in asynchronous the detection of transport is a infinite loop

	if (_gate getVariable ['is_open_gate', false]) { // if the gate is open
		// TODO: check this if is necessary
		// recreate all objects of the gate because the gate is open before player join the server

		[_gate] call sg_fnc_create_gate_light;
		[_gate] call sg_fnc_enabled_chevrons_lights;

		if ((typeOf _gate) == "SGI_gate") then {
			_gate setObjectTexture [18, "videos\horison_events.ogv"];
		} else {
			_gate setObjectTexture [9, "videos\horison_events.ogv"];
		};

		private _remote_gate = (_gate getVariable ['remote_gate', objNull]);

		[_remote_gate] call sg_fnc_check_gate; // check if the remote gate is valid
	}
} forEach (getArray (missionConfigFile >> "planets" >> "gates" >> "planets")); // for each gate planet from the config file

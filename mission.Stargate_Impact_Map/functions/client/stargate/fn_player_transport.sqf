// sg_fnc_player_transport
// this function is called when player enter in a gate and transport him to the other gate with a video during the transport
// params = [gate, player]

private _gate = param [0];

[_gate] call sg_fnc_check_gate; // check if gate is defined and is an object

is_in_gate_transport = true; // set the variable to true to prevent the player from being teleported multiple times

[_gate, ["player_tp", 50]] remoteExec ["say3D", 0]; // play the sound of the player teleporting in the gate in for all players

if (_gate getVariable ['is_entry_gate', false]) then { // if player enter in the gate by the bad direction
	titleText [(localize "STR_mort_porte_mauvais_sens"), "BLACK OUT"]; // display text if player enter in the gate by the bad direction

	playSound "player_damage"; // play sound of player damage

	[player, true] remoteExec ["hideObject", 0]; // hide player

	sleep 5; // wait 5 seconds

	[player, false] remoteExec ["hideObject", 0]; // show player

	if (!invincibility_enabled) then { // TODO: change that -> invincibility of player
		player setDamage 1; // kill player
	};

	titleFadeOut 1; // hide display text
} 
else { // if player enter in the gate by the good direction
	[player, true] remoteExec ["hideObject", 0]; // hide player

	missionNamespace setVariable ["stop_video_gate_tunnel", false]; // set variable for tunnel video

	["videos\tunnel.ogv", [safeZoneX, safeZoneY, safeZoneW, safeZoneH], [1,1,1,1], "stop_video_gate_tunnel"] spawn BIS_fnc_playVideo; // play tunnel video in player screen

	sleep 14; // wait time of the video in the gate transport (14 seconds)

	private _remote_gate = _gate getVariable ["remote_gate", nil]; // get remote gate

	if (isNil "_remote_gate") then { // if remote gate is undefined so open
		titleText [(localize "STR_mort_porte_refermee"), "BLACK OUT"]; // display text if remote gate is closed

		player setDamage 1; // kill player

		[player, false] remoteExec ["hideObject", 0]; // show player

		sleep 1; // wait 1 second

		playSound "player_damage"; // play sound of player damage

		missionNamespace setVariable ["stop_video_gate_tunnel", true];

		["videos\horison_events.ogv", [10, 10], [1,1,1,1], "stop_video_gate_event_horizon", [0,0,0,0], false] spawn BIS_fnc_playVideo; // play event horizon video in gate

		sleep 5; // wait 5 seconds

		titleFadeOut 1; // hide display text
	} 
	else { // if remote gate is defined and open
		private _remote_gate_location = (getPos _remote_gate); // get remote gate location
		private _remote_gate_direction = (getDir _remote_gate); // get remote gate direction
		private _remote_gate_x_location = (_remote_gate_location select 0); // get remote gate x location
		private _remote_gate_y_location  = (_remote_gate_location select 1); // get remote gate y location
		private _remote_gate_z_location  = (_remote_gate_location select 2); // get remote gate z location
		_remote_gate_z_location = _remote_gate_z_location + 1.5; // add 1.5m to up direction

		// define the position of the player when he exit the gate
		if (((_remote_gate_direction > 315) or (_remote_gate_direction <= 45)) or ((_remote_gate_direction > 135) and (_remote_gate_direction <= 225))) then {
			if ((_remote_gate_direction > 315) or (_remote_gate_direction <= 45)) then {
				_remote_gate_y_location = _remote_gate_y_location - 1.5; // add 1.5m to nord direction
			} 
			else {
				_remote_gate_y_location = _remote_gate_y_location + 1.5; // add 1.5m to sud direction
			};
		} 
		else {
			if ((_remote_gate_direction > 45) and (_remote_gate_direction <= 135)) then {
				_remote_gate_x_location = _remote_gate_x_location - 1.5; // add 1.5m to ouest direction
			} 
			else {
				_remote_gate_x_location = _remote_gate_x_location + 1.5; // add 1.5m to est direction
			};
		};

		player setPos [_remote_gate_x_location, _remote_gate_y_location, _remote_gate_z_location]; // set player position to outside of the gate

		// wait player touch the ground
		waitUntil {
			isTouchingGround player 
		};

		// define the direction of the player when he exit the gate
		_remote_gate_direction = _remote_gate_direction + 180;
		if (_remote_gate_direction > 360) then {
			_remote_gate_direction = _remote_gate_direction - 360;
		};

		player setDir _remote_gate_direction; // set player direction

		if ((_remote_gate animationPhase 'anim_iris1') == 1) then { // if iris of remote gate is closed
			titleText [(localize "STR_mort_iris_fermee"), "BLACK OUT"]; // display text if remote gate is closed

			player setDamage 1; // kill player

			[player, false] remoteExec ["hideObject", 0]; // show player

			sleep 1; // wait 1 second

			playSound "player_damage"; // play sound of player damage

			missionNamespace setVariable ["stop_video_gate_tunnel", true]; // set variable for tunnel video

			["videos\horison_events.ogv", [10, 10], [1,1,1,1], "stop_video_gate_event_horizon", [0,0,0,0], false] spawn BIS_fnc_playVideo; // play event horizon video in gate

			sleep 5;

			titleFadeOut 1;
		} 
		else { // if iris of remote gate is open
			[player, false] remoteExec ["hideObject", 0]; // show player

			sleep 1.25; // wait 1.25 seconds

			missionNamespace setVariable ["stop_video_gate_tunnel", true]; // set variable for tunnel video

			["videos\horison_events.ogv", [10, 10], [1,1,1,1], "stop_video_gate_event_horizon", [0,0,0,0], false] spawn BIS_fnc_playVideo; // play event horizon video in gate

			sleep 1; // wait 1 second

			[_gate, ["player_tp", 50]] remoteExec ["say3D", 0]; // play the sound of the player teleporting in the gate in for all players	
		};
	};
};

is_in_gate_transport = false; // set variable for gate transport
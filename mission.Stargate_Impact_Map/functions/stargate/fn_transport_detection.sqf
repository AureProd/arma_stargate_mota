// sg_fnc_transport_detection
// params = [gate]

private _gate = param [0];
		
while {true} do {
	// wait until the gate is open and the player is in the gate
	waitUntil {
		private _gate_x_location = ((getPos _gate) select 0); // get the x location of the gate
		private _gate_y_location = ((getPos _gate) select 1); // get the y location of the gate

		private _player_x_location = ((getPos player) select 0); // get the x location of the player
		private _player_y_location = ((getPos player) select 1); // get the y location of the player

		private _boolean_return = false;

		if ((_gate getVariable ['is_open_gate', false]) and ((_porte animationPhase 'anim_iris1') == 0)) then {
			// calculate the location of the player relative to the gate for determining if the player is in the gate
			if ((((getDir _porte) > 315) or ((getDir _porte) <= 45)) or (((getDir _porte) > 135) and ((getDir _porte) <= 225))) then { // if the gate is facing north or south
				if (((getDir _porte) > 315) or ((getDir _porte) <= 45)) then { // if the gate is facing north
					if ((_player_x_location < (_gate_x_location + 3)) and (_player_x_location > (_gate_x_location - 3)) and (_player_y_location > (_gate_y_location - 0.9)) and (_player_y_location < (_gate_y_location + 0.1))) then {
						_boolean_return = true; // if the player is in the gate
					};
				} 
				else { // if the gate is facing south
					if ((_player_x_location < (_gate_x_location + 3)) and (_player_x_location > (_gate_x_location - 3)) and (_player_y_location < (_gate_y_location + 0.9)) and (_player_y_location > (_gate_y_location - 0.1))) then {
						_boolean_return = true; // if the player is in the gate
					};
				};
			} 
			else { // if the gate is facing east or west
				if (((getDir _porte) > 45) and ((getDir _porte) <= 135)) then { // if the gate is facing east
					if ((_player_x_location > (_gate_x_location - 0.9)) and (_player_x_location < (_gate_x_location + 0.1)) and (_player_y_location < (_gate_y_location + 3) and (_player_y_location > (_gate_y_location - 3)))) then {
						_boolean_return = true; // if the player is in the gate
					};
				} 
				else { // if the gate is facing west
					if ((_player_x_location < (_gate_x_location + 0.9)) and (_player_x_location > (_gate_x_location - 0.1)) and (_player_y_location < (_gate_y_location + 3) and (_player_y_location > (_gate_y_location - 3)))) then {
						_boolean_return = true; // if the player is in the gate
					};
				};
			};
		};

		_boolean_return;
	};

	if (!(player getVariable ["is_in_gate_transport", false])) then {
		player setVariable ["is_in_gate_transport", true, true];

		[_porte, ["player_tp", 50]] remoteExec ["say3D", 0]; // play the sound of the player teleporting in the gate in for all players

		[_porte, player] call sg_fnc_transport; // teleport the player in the gate
	};

	sleep 0.5; // wait 0.5 seconds
};
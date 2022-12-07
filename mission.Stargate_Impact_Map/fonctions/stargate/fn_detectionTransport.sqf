// mission_fnc_detectionTransport
// params = [porte]

private _porte = param [0];
		
while {true} do {
	waitUntil { 
		private _portePosX = ((getPos _porte) select 0);
		private _portePosY = ((getPos _porte) select 1);

		private _playerPosX = ((getPos player) select 0);
		private _playerPosY = ((getPos player) select 1);

		private _boolean = false;

		if (((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 0) and ((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 4) and ((_porte animationPhase 'anim_iris1') == 0)) then {
			if ((((getDir _porte) > 315) or ((getDir _porte) <= 45)) or (((getDir _porte) > 135) and ((getDir _porte) <= 225))) then {
				if (((getDir _porte) > 315) or ((getDir _porte) <= 45)) then {
					if ((_playerPosX < (_portePosX + 3)) and (_playerPosX > (_portePosX - 3)) and (_playerPosY > (_portePosY - 0.9)) and (_playerPosY < (_portePosY + 0.1))) then {
						_boolean = true;
					};
				} else {
					if ((_playerPosX < (_portePosX + 3)) and (_playerPosX > (_portePosX - 3)) and (_playerPosY < (_portePosY + 0.9)) and (_playerPosY > (_portePosY - 0.1))) then {
						_boolean = true;
					};
				};
			} else {
				if (((getDir _porte) > 45) and ((getDir _porte) <= 135)) then {
					if ((_playerPosX > (_portePosX - 0.9)) and (_playerPosX < (_portePosX + 0.1)) and (_playerPosY < (_portePosY + 3) and (_playerPosY > (_portePosY - 3)))) then {
						_boolean = true;
					};
				} else {
					if ((_playerPosX < (_portePosX + 0.9)) and (_playerPosX > (_portePosX - 0.1)) and (_playerPosY < (_portePosY + 3) and (_playerPosY > (_portePosY - 3)))) then {
						_boolean = true;
					};
				};
			};
		};

		_boolean;
	};

	if (!(player getVariable ["notInTransport", false])) then {
		player setVariable ["notInTransport", true, true];

		[_porte, ["tp_joueur", 50]] remoteExec ["say3D", 0];

		[_porte, player] spawn mission_fnc_transport;
	};

	sleep 0.5;
};
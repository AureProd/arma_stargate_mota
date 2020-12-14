// mission_fnc_detectionTransport
// params = [porte]

private _porte = param [0];
		
while {true} do {
	private _players = nearestObjects [_porte, ["CAManBase"], 10];

	private _varLight = ((_porte getVariable ['isOpen', [false, nil, false, nil, false]]) select 3);

	if (((count _players) > 0) and ((_porte getVariable ['isOpen', [false, nil, false, nil, false]]) select 0) and ((_porte animationPhase 'anim_iris1') == 0) and (!(isNil "_varLight"))) then {
		private _player = _players select 0;

		private _portePos = (getPos _porte);
		private _playerPos = (getPos _player);

		private _portePosX = (_portePos select 0);
		private _portePosY = (_portePos select 1);

		private _playerPosX = (_playerPos select 0);
		private _playerPosY = (_playerPos select 1);

		private _boolean = false;

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

		if (_boolean && !(_player getVariable ["notInTransport", false])) then {
			_player setVariable ["notInTransport", true, true];

			[_porte, ["tp_joueur", 50]] remoteExec ["say3D", 0];

			[_porte, _player] spawn mission_fnc_transport;
		};
	};

	sleep 0.05;
};
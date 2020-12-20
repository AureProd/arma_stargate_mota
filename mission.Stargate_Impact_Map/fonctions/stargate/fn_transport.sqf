// mission_fnc_transport
// params = [porte, player]

private _porte = param [0];
private _player = param [1];

if (!((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 2)) then {
	titleText [(localize "STR_mort_porte_mauvais_sens"), "BLACK OUT"];

	playSound "degat_payer";

	[_player, true] remoteExec ["hideObject", 0];

	//_player setDamage 1;

	sleep 5;

	[_player] spawn {
		_player = param [0];

		[_player, false] remoteExec ["hideObject", 0];

		if (!ISINVINCIBLE_BIS) then {
			_player setDamage 1;
		};
	};

	titleFadeOut 1;
} else {
	[_player, true] remoteExec ["hideObject", 0];

	missionNamespace setVariable ["skipPorteVarBis", false];

	["video\tunnel.ogv", [safeZoneX, safeZoneY, safeZoneW, safeZoneH], [1,1,1,1], "skipPorteVarBis"] spawn BIS_fnc_playVideo;

	sleep 14;

	private _porteDistante = (_porte getVariable ["isOpen", [false, nil, false, false, false]] select 1);
	private _porteDistantePos = (getPos _porteDistante);
	private _porteDistanteDir = (getDir _porteDistante);
	private _porteDistantePosX = (_porteDistantePos select 0);
	private _porteDistantePosY = (_porteDistantePos select 1);
	private _porteDistantePosZ = ((_porteDistantePos select 2) + 1.5);

	if (((_porteDistanteDir > 315) or (_porteDistanteDir <= 45)) or ((_porteDistanteDir > 135) and (_porteDistanteDir <= 225))) then {
		if (((_porteDistanteDir > 315) or (_porteDistanteDir <= 45))) then {
			_porteDistantePosY = _porteDistantePosY - 1.5;
		} else {
			_porteDistantePosY = _porteDistantePosY + 1.5;
		};
	} else {
		if (((_porteDistanteDir > 45) and (_porteDistanteDir <= 135))) then {
			_porteDistantePosX = _porteDistantePosX - 1.5;
		} else {
			_porteDistantePosX = _porteDistantePosX + 1.5;
		};
	};

	_player setPos [_porteDistantePosX, _porteDistantePosY, _porteDistantePosZ];
	ISINVINCIBLE_BIS = true;

	[_player] spawn {
		_player = param [0];

		waitUntil { isTouchingGround _player };

		ISINVINCIBLE_BIS = false;
	};

	_porteDistanteDir = _porteDistanteDir + 180;

	if (_porteDistanteDir > 360) then {
		_porteDistanteDir = _porteDistanteDir - 360;
	};

	_player setDir _porteDistanteDir;

	if ((_porteDistante animationPhase 'anim_iris1') == 1) then {
		titleText [(localize "STR_mort_iris_fermee"), "BLACK OUT"];

		[_player] spawn {
			_player = param [0];

			if (!ISINVINCIBLE_BIS) then {
				_player setDamage 1;
			};
		};

		[_player, false] remoteExec ["hideObject", 0];

		sleep 1;

		playSound "degat_payer";

		missionNamespace setVariable ["skipPorteVarBis", true];

		["video\horison_events.ogv", [10, 10], [1,1,1,1], "skipPorteVar", [0,0,0,0], false] spawn BIS_fnc_playVideo;

		sleep 5;

		titleFadeOut 1;
	} else {
		[_player, false] remoteExec ["hideObject", 0];

		sleep 1.25;

		missionNamespace setVariable ["skipPorteVarBis", true];

		["video\horison_events.ogv", [10, 10], [1,1,1,1], "skipPorteVar", [0,0,0,0], false] spawn BIS_fnc_playVideo;

		playSound "tp_joueur";

		sleep 1;
	};
};

_player setVariable ["notInTransport", false, true];












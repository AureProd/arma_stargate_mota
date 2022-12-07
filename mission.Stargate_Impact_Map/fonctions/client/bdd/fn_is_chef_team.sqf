
// fonction name : mission_fnc_is_chef_team
// parmettres : [player uid]

private _playerUID = param [0, (getPlayerUID player)];

private _return = false;

if ([_playerUID] call mission_fnc_is_in_team) then {
	private _team = [_playerUID] call mission_fnc_get_team;

	if ((_team select 0) == _playerUID) then {
		_return = true;
	};
};

_return;
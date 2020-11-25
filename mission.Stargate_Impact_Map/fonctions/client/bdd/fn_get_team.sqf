
// fonction name : mission_fnc_get_team
// parmettres : [player uid]

private _playerUID = param [0, (getPlayerUID player)];

private _teams = missionNamespace getVariable ["team", []];

private _indexTeam = _teams findIf {
	_playerUID in _x
};

private _team = [_playerUID];

if (_indexTeam != -1) then {
	_team = _teams select _indexTeam;
};

_team;
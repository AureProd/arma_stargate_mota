
// fonction name : mission_fnc_set_team
// parmettres : [team]

private _new_teams = param [0]; // []

private _teams = missionNamespace getVariable ["team", []];

private _indexTeam = _teams findIf {
	private _tab = _x;
	private _ok = false;

	{
		if (_x in _tab) then {
			_ok = true;
		};
	} forEach _new_teams;

	_ok
};

if (_indexTeam != -1) then {
	_teams set [_indexTeam, _new_teams];

	missionNamespace setVariable ["team", _teams, true];
};


// fonction name : mission_fnc_delete_team
// parmettres : [team]

private _new_teams = param [0]; // []

private _teams = missionNamespace getVariable ["team", []];

private _indexTeam = _teams findIf {
	private _tab = _x;
	private _ok = true;

	{
		if (!(_x in _tab)) then {
			_ok = false;
		};
	} forEach _new_teams;

	_ok
};

if (_indexTeam != -1) then {
	_teams deleteAt _indexTeam;

	missionNamespace setVariable ["team", _teams, true];
};

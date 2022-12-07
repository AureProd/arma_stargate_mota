
// fonction name : mission_fnc_add_team
// parmettres : [team]

private _new_teams = param [0]; // []

private _teams = missionNamespace getVariable ["team", []];

_teams pushBack _new_teams;

missionNamespace setVariable ["team", _teams, true];

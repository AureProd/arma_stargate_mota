
// fonction name : mission_fnc_is_in_team
// parmettres : []

private _retour = [] call mission_fnc_is_in_team;

private _return = false;

if ((count _retour) > 1) then {
	_return = true;
};

_return;
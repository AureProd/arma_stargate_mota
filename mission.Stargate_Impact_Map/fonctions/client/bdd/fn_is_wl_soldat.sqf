
// fonction name : mission_fnc_is_wl_soldat
// parmettres : []

private _retour = ["wl soldat"] call mission_fnc_getBDD;

private _return = false;

if ((count _retour) == 1) then {
	_return = true;
};

_return;
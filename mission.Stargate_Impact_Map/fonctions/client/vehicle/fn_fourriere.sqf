// nom fichier : mission_fnc_fourriere
// paramettres : [vehicle]

private _vehicle = param [0];

/* if ((_vehicle getVariable ["imatriculation", [false, nil, nil]]) select 0) then {
	if (!((_vehicle getVariable ["imatriculation", [false, nil, nil]]) select 2)) then {
		//deleteVehicle _vehicle;
	} else {
		//deleteVehicle _vehicle;
	};
} else {
	deleteVehicle _vehicle;
}; */

deleteVehicle _vehicle;

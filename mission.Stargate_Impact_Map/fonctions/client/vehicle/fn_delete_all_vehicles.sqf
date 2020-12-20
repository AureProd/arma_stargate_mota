
{
	if (((_x getVariable ['imatriculation', [false, nil, nil]]) select 0) and (((_x getVariable ['imatriculation', [false, nil, nil]]) select 1) == (getPlayerUID player)) and ((_x getVariable ['imatriculation', [false, nil, nil]]) select 2)) then {
		private _var = _x getVariable ['imatriculation', [false, nil, nil]];

		_var set [1, "rien"];

		_x setVariable ['imatriculation', [false, nil, nil]];
	};

	if (((_x getVariable ['imatriculation', [false, nil, nil]]) select 0) and (((_x getVariable ['imatriculation', [false, nil, nil]]) select 1) == (getPlayerUID player)) and !((_x getVariable ['imatriculation', [false, nil, nil]]) select 2)) then {
		deleteVehicle _x;
	};
} forEach vehicles;
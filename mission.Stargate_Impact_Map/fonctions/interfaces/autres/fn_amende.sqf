
private _type = param [0, false];

private _prix = (amende select 0);
private _joueur = (amende select 1);

private _time = getNumber(missionConfigFile >> "stargate" >> "prisons" >> "temp_prison");
_time = _time / 60;

if (_type) then {
	if (!([_prix] call mission_fnc_paiement)) then {
		[(format [localize "STR_admin_amende_non_payer", (name player), _time])] remoteExec ["hint", _joueur];

		hint format [localize "STR_admin_prison_car_pas_argent", _time];

		[3] call mission_fnc_add_licence;
		[true] spawn mission_fnc_prison;
	} else {
		[(format [localize "STR_admin_amende_payer", (name player)])] remoteExec ["hint", _joueur];
		
		hint format [localize "STR_admin_joueur_amende_payer", _time];
	};
} else {
	[(format [localize "STR_admin_amende_non_payer", (name player), _time])] remoteExec ["hint", _joueur];

	hint format [localize "STR_admin_debut_prison", (name player), _time];

	[3] call mission_fnc_add_licence;
	[true] spawn mission_fnc_prison;
};


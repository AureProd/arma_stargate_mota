
private _prix = param [0];
private _joueur = param [1];

createDialog "popup_amende";
waitUntil {dialog};

private _text_popup = (findDisplay 4010) displayCtrl 4011;
_text_popup ctrlSetText format [localize "STR_admin_popup_amende", (name _joueur), _prix];

amende = [false, 1];

waitUntil { amende select 0 };

private _time = getNumber(missionConfigFile >> "stargate" >> "prisons" >> "temp_prison");
_time = _time / 60;

if ((amende select 1) == 2) then {
	[(format [localize "STR_admin_amende_payer", (name player)])] remoteExec ["hint", _joueur];

	if (![_prix] call mission_fnc_paiement) then {
		[(format [localize "STR_admin_amende_non_payer", (name player), _time])] remoteExec ["hint", _joueur];

		hint format [localize "STR_admin_prison_car_pas_argent", _time];

		[3] call mission_fnc_add_licence;
		[] spawn mission_fnc_prison;
	};
} else {
	[(format [localize "STR_admin_amende_non_payer", (name player), _time])] remoteExec ["hint", _joueur];

	hint format [localize "STR_admin_debut_prison", (name player), _time];

	[3] call mission_fnc_add_licence;
	[] spawn mission_fnc_prison;
};


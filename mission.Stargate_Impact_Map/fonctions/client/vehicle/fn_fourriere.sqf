// nom fichier : mission_fnc_fourriere
// paramettres : [param, vehicle]

private _param = param [0, false];
private _vehicle = param [1, nil];
private _param_bis = param [2, nil];

if (!_param) then {
	createDialog "popup_fourriere";
	waitUntil {dialog};

	private _text_popup = (findDisplay 4010) displayCtrl 4011;
	
	if (_param_bis) then {
		_text_popup ctrlSetText (localize "STR_popup_fouriere");	
	} else {
		_text_popup ctrlSetText (localize "STR_popup_fouriere_bis");
	};

	amende = _vehicle;
} else {
	deleteVehicle amende;
};
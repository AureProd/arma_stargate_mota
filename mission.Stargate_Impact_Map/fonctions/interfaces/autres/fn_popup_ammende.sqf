
private _prix = param [0];
private _joueur = param [1];

createDialog "popup_amende";
waitUntil {dialog};

private _text_popup = (findDisplay 4010) displayCtrl 4011;
_text_popup ctrlSetText format [localize "STR_admin_popup_amende", (name _joueur), _prix];

amende = [_prix, _joueur];



private _bouton_invisibilite = (findDisplay 12000) displayCtrl 12008;

if (isObjectHidden player) then {
	[player, false] remoteExec ["hideObject", -2, true];
	player hideObject false;
} else {
	[player, true] remoteExec ["hideObject", -2, true];
	player hideObject true;
};

if (isObjectHidden player) then {
	_bouton_invisibilite ctrlSetText format [localize "STR_admin_bouton_invisible", "ON"];
} else {
	_bouton_invisibilite ctrlSetText format [localize "STR_admin_bouton_invisible", "OFF"];
};
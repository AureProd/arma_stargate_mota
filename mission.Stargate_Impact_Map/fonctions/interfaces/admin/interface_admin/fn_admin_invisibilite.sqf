
private _bouton_invisibilite = (findDisplay 12000) displayCtrl 12008;

if (isObjectHidden player) then {
	[player, false] remoteExec ["hideObject", -2, true];
	//player hideObjectGlobal false;

	_bouton_invisibilite ctrlSetText format [localize "STR_admin_bouton_invisible", "OFF"];
} else {
	[player, true] remoteExec ["hideObject", -2, true];
	//player hideObjectGlobal true;

	_bouton_invisibilite ctrlSetText format [localize "STR_admin_bouton_invisible", "ON"];
};
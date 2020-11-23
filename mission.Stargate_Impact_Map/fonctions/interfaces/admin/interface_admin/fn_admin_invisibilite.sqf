
private _bouton_invisibilite = (findDisplay 12000) displayCtrl 12008;

if (SPECMODE select 0) then {
	if ((isObjectHidden player) and ISINVISIBLE) then {
		//[player, false] remoteExec ["hideObject", -2, true];
		player hideObject false;

		ISINVISIBLE = false;
	} else {
		//[player, true] remoteExec ["hideObject", -2, true];
		player hideObject true;

		ISINVISIBLE = true;
	};
} else {
	if ((isObjectHidden player) and ISINVISIBLE) then {
		[player, false] remoteExec ["hideObject", -2, true];
		player hideObject false;

		ISINVISIBLE = false;
	} else {
		[player, true] remoteExec ["hideObject", -2, true];
		player hideObject true;

		ISINVISIBLE = true;
	};
};




if ((isObjectHidden player) and ISINVISIBLE) then {
	_bouton_invisibilite ctrlSetText format [localize "STR_admin_bouton_invisible", "ON"];
} else {
	_bouton_invisibilite ctrlSetText format [localize "STR_admin_bouton_invisible", "OFF"];
};

private _bouton_invincibilite = (findDisplay 12000) displayCtrl 12009;

if (ISINVICIBLE) then {
	ISINVICIBLE = false;
} else {
	ISINVICIBLE = true;
};

if (ISINVICIBLE) then {
	_bouton_invincibilite ctrlSetText format [localize "STR_admin_bouton_invinsible", "ON"];
} else {
	_bouton_invincibilite ctrlSetText format [localize "STR_admin_bouton_invinsible", "OFF"];
};

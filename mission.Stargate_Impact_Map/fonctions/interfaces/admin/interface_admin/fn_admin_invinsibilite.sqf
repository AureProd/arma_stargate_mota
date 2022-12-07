
private _bouton_invincibilite = (findDisplay 12000) displayCtrl 12009;

if (ISINVINCIBLE) then {
	ISINVINCIBLE = false;
} else {
	ISINVINCIBLE = true;
};

if (ISINVINCIBLE) then {
	_bouton_invincibilite ctrlSetText format [localize "STR_admin_bouton_invinsible", "ON"];
} else {
	_bouton_invincibilite ctrlSetText format [localize "STR_admin_bouton_invinsible", "OFF"];
};

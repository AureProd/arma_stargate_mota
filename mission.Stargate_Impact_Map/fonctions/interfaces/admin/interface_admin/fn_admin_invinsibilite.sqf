
private _bouton_invincibilite = (findDisplay 12000) displayCtrl 12009;

if (isDamageAllowed player) then {
	player allowDamage false;

	_bouton_invincibilite ctrlSetText format [localize "STR_admin_bouton_invinsible", "ON"];
} else {
	player allowDamage true;

	_bouton_invincibilite ctrlSetText format [localize "STR_admin_bouton_invinsible", "OFF"];
};
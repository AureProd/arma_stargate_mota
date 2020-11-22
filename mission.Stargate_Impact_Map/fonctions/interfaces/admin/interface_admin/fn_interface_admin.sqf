
createDialog "interface_admin_5";
waitUntil {dialog};

private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;
private _bouton_detruire = (findDisplay 12000) displayCtrl 12010;
private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;
private _bouton_white_liste = (findDisplay 12000) displayCtrl 12005;

lbClear _liste_joueurs_proches;
lbClear _liste_items_illegals;
lbClear _liste_joueurs;

liste_joueurs_groupe = [];

{
	if (((_x distance2D player) < 30) and (_x != player)) then {
		_liste_joueurs_proches lbAdd (name _x);
		liste_joueurs_groupe pushBack _x;
	};

	_liste_joueurs lbAdd (name _x);
} forEach allPlayers;

_liste_joueurs_proches lbSetCurSel -1;
_liste_items_illegals lbSetCurSel -1;
_liste_joueurs lbSetCurSel -1;

_bouton_detruire ctrlEnable false;
_bouton_white_liste ctrlEnable false;

private _bouton_invisibilite = (findDisplay 12000) displayCtrl 12008;
private _bouton_invincibilite = (findDisplay 12000) displayCtrl 12009;

if (isDamageAllowed player) then {
	//player allowDamage false;

	_bouton_invincibilite ctrlSetText format [localize "STR_admin_bouton_invinsible", "OFF"];
} else {
	//player allowDamage true;

	_bouton_invincibilite ctrlSetText format [localize "STR_admin_bouton_invinsible", "ON"];
};

if (isObjectHidden player) then {
	//[player, false] remoteExec ["hideObject", -2, true];
	//player hideObjectGlobal true;

	_bouton_invisibilite ctrlSetText format [localize "STR_admin_bouton_invisible", "ON"];
} else {
	//[player, true] remoteExec ["hideObject", -2, true];
	//player hideObjectGlobal false;

	_bouton_invisibilite ctrlSetText format [localize "STR_admin_bouton_invisible", "OFF"];
};

private _bouton_tuer_player = (findDisplay 12000) displayCtrl 12011;
private _text_xp = (findDisplay 12000) displayCtrl 12006;
private _enter_xp = (findDisplay 12000) displayCtrl 12007;
private _bouton_add_xp = (findDisplay 12000) displayCtrl 12012;
private _bouton_delete_xp = (findDisplay 12000) displayCtrl 12013;
private _bouton_tp_joueur_admin = (findDisplay 12000) displayCtrl 12014;
private _bouton_tp_admin_joueur = (findDisplay 12000) displayCtrl 12015;

_bouton_tuer_player ctrlEnable false;
_text_xp ctrlShow false;
_enter_xp ctrlShow false;
_bouton_add_xp ctrlEnable false;
_bouton_delete_xp ctrlEnable false;
_bouton_tp_joueur_admin ctrlEnable false;
_bouton_tp_admin_joueur ctrlEnable false;


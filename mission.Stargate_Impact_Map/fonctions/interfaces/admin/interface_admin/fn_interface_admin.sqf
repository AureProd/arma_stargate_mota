
createDialog "interface_admin_5";
waitUntil {dialog};

private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;
private _bouton_detruire = (findDisplay 12000) displayCtrl 12010;
private _select_item_licences = (findDisplay 12000) displayCtrl 12034;
private _bouton_amende = (findDisplay 12000) displayCtrl 12032;
private _prix_amende = (findDisplay 12000) displayCtrl 12033;

private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;
private _bouton_white_liste = (findDisplay 12000) displayCtrl 12005;

private _liste_pos = (findDisplay 12000) displayCtrl 12022;

lbClear _liste_joueurs_proches;
lbClear _liste_items_illegals;
lbClear _select_item_licences;

lbClear _liste_joueurs;

lbClear _liste_pos;

_select_item_licences lbAdd (localize "STR_admin_titre_items_illegals"); // 0
_select_item_licences lbAdd (localize "STR_admin_licences"); // 1

liste_joueurs_groupe = [];

{
	if ((_x distance2D player) < 30) then {
		_liste_joueurs_proches lbAdd (name _x);
		liste_joueurs_groupe pushBack _x;
	};

	_liste_joueurs lbAdd (name _x);
} forEach allPlayers;

{
	if (((getMarkerType _x) == "flag_France") and ((markerText _x) != "")) then {
		_liste_pos lbAdd (markerText _x);
	};
} forEach allMapMarkers;

_liste_joueurs_proches lbSetCurSel -1;
_liste_items_illegals lbSetCurSel -1;
_select_item_licences lbSetCurSel 0; 

_liste_joueurs lbSetCurSel -1;

_liste_pos lbSetCurSel 0;

_bouton_detruire ctrlEnable false;
_bouton_amende ctrlEnable false;
_prix_amende ctrlShow false;

_bouton_white_liste ctrlEnable false;

private _bouton_invisibilite = (findDisplay 12000) displayCtrl 12008;
private _bouton_invincibilite = (findDisplay 12000) displayCtrl 12009;

private _select_liste_bdd = (findDisplay 12000) displayCtrl 12035;

if (ISINVINCIBLE) then {
	_bouton_invincibilite ctrlSetText format [localize "STR_admin_bouton_invinsible", "ON"];
} else {
	_bouton_invincibilite ctrlSetText format [localize "STR_admin_bouton_invinsible", "OFF"];
};

if ((isObjectHidden player) and ISINVISIBLE) then {
	_bouton_invisibilite ctrlSetText format [localize "STR_admin_bouton_invisible", "ON"];
} else {
	_bouton_invisibilite ctrlSetText format [localize "STR_admin_bouton_invisible", "OFF"];
};

lbClear _select_liste_bdd;

_select_liste_bdd lbAdd (localize "STR_admin_titre_planetes_debloquees"); // 0
_select_liste_bdd lbAdd (localize "STR_admin_licences"); // 1
_select_liste_bdd lbAdd (localize "STR_admin_items"); // 2

_select_liste_bdd lbSetCurSel 0;

private _bouton_tuer_player = (findDisplay 12000) displayCtrl 12011;
private _text_xp = (findDisplay 12000) displayCtrl 12006;
private _enter_xp = (findDisplay 12000) displayCtrl 12007;
private _bouton_add_xp = (findDisplay 12000) displayCtrl 12012;
private _bouton_delete_xp = (findDisplay 12000) displayCtrl 12013;
private _bouton_tp_joueur_admin = (findDisplay 12000) displayCtrl 12014;
private _bouton_tp_admin_joueur = (findDisplay 12000) displayCtrl 12015;
private _bouton_reset_bdd = (findDisplay 12000) displayCtrl 12021;
private _select_liste_bdd = (findDisplay 12000) displayCtrl 12020;
private _bouton_mode_spec = (findDisplay 12000) displayCtrl 12023;
private _bouton_kick = (findDisplay 12000) displayCtrl 12031;

_bouton_tuer_player ctrlEnable false;
_text_xp ctrlShow false;
_enter_xp ctrlShow false;
_bouton_add_xp ctrlEnable false;
_bouton_delete_xp ctrlEnable false;
_bouton_tp_joueur_admin ctrlEnable false;
_bouton_tp_admin_joueur ctrlEnable false;
_bouton_reset_bdd ctrlEnable false;
_select_liste_bdd ctrlShow false;
_bouton_mode_spec ctrlShow false;
_bouton_kick ctrlShow false;


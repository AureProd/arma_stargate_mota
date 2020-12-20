
createDialog "interface_admin_1";
waitUntil {dialog};

private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;
private _bouton_detruire = (findDisplay 12000) displayCtrl 12010;
private _select_item_licences = (findDisplay 12000) displayCtrl 12034;
private _bouton_amende = (findDisplay 12000) displayCtrl 12032;
private _prix_amende = (findDisplay 12000) displayCtrl 12033;

private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;
private _bouton_white_liste = (findDisplay 12000) displayCtrl 12005;

lbClear _liste_joueurs_proches;
lbClear _liste_items_illegals;
lbClear _select_item_licences;

lbClear _liste_joueurs;

_select_item_licences lbAdd (localize "STR_admin_titre_items_illegals"); // 0
_select_item_licences lbAdd (localize "STR_admin_licences"); // 1

liste_joueurs_groupe = [];

{
	if (((_x distance2D player) < 30) and ((["race", player] call mission_fnc_getBDD) == (["race", _x] call mission_fnc_getBDD))) then {
		_liste_joueurs_proches lbAdd (name _x);
		liste_joueurs_groupe pushBack _x;
	};

	_liste_joueurs lbAdd (name _x);
} forEach allPlayers;

_liste_joueurs_proches lbSetCurSel -1;
_liste_items_illegals lbSetCurSel -1;
_select_item_licences lbSetCurSel 0; 

_liste_joueurs lbSetCurSel -1;

_bouton_detruire ctrlEnable false;
_bouton_amende ctrlEnable false;
_prix_amende ctrlShow false;

_bouton_white_liste ctrlEnable false;


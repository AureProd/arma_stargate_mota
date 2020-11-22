
createDialog "interface_admin_1";
waitUntil {dialog};

private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;
private _bouton_detruire = (findDisplay 12000) displayCtrl 12010;
private _liste_joueurs = (findDisplay 12000) displayCtrl 12003;

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





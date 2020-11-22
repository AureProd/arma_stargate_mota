
createDialog "interface_soldat";
waitUntil {dialog};

private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;
private _bouton_detruire = (findDisplay 12000) displayCtrl 12010;

lbClear _liste_joueurs_proches;
lbClear _liste_items_illegals;

liste_joueurs_groupe = [];

{
	if (((_x distance2D player) < 30) and (_x != player)) then {
		_liste_joueurs_proches lbAdd (name _x);
		liste_joueurs_groupe pushBack _x;
	};
} forEach allPlayers;

_liste_joueurs_proches lbSetCurSel -1;
_liste_items_illegals lbSetCurSel -1;

_bouton_detruire ctrlEnable false;



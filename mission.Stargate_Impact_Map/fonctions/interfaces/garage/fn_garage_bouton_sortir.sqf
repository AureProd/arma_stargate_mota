
private _liste_vehicules = (findDisplay 30000) displayCtrl 30001;
private _bouton_louer = (findDisplay 30000) displayCtrl 30004;
private _bouton_sortir = (findDisplay 30000) displayCtrl 30005;
private _bouton_acheter = (findDisplay 30000) displayCtrl 30006;

// liste_joueurs_groupe = [[valeur_action, (tableau du vehicule)], [valeur_action, (tableau du vehicule)]]
// |--> valeur_action = (0 pour louer, 1 pour achat, 2 pour sortir, 3 pour pas level)
private _index = lbCurSel _liste_vehicules;

if (_index == -1) exitWith {};

private _tab = liste_joueurs_groupe select _index;

private _vehicules = vehicles;

private _indexVehicule = _vehicules findIf {
	((_x getVariable ['imatriculation', [false, nil, nil]]) select 0) and 
	(((_x getVariable ['imatriculation', [false, nil, nil]]) select 1) == (getPlayerUID player)) and
	!((_x getVariable ['imatriculation', [false, nil, nil]]) select 2) and
	((typeOf _x) == ((_tab select 1) select 2))
};

if (_indexVehicule != -1) then {
	private _vehicule = _vehicules select _indexVehicule;
	deleteVehicle _vehicule;
};

[
	((_tab select 1) select 2), 
	(getPos pts_spawn), 
	(getDir pts_spawn), 
	false, 
	player
] call mission_fnc_ajout_vehicle;


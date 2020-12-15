
private _liste_vehicules = (findDisplay 30000) displayCtrl 30001;

if (!([1] call mission_fnc_has_licence)) exitWith {
	if ((lbCurSel _liste_vehicules) != -1) then {
		_liste_vehicules lbSetCurSel -1;

		hint localize "STR_pas_licences_permis_conduire";
	};
};

private _bouton_louer = (findDisplay 30000) displayCtrl 30004;
private _bouton_sortir = (findDisplay 30000) displayCtrl 30005;
private _bouton_acheter = (findDisplay 30000) displayCtrl 30006;

_bouton_louer ctrlEnable false;
_bouton_sortir ctrlEnable false;
_bouton_acheter ctrlEnable false;

// liste_joueurs_groupe = [[valeur_action, (tableau du vehicule)], [valeur_action, (tableau du vehicule)]]
// |--> valeur_action = (0 pour louer, 1 pour achat, 2 pour sortir, 3 pour pas level)
private _index = lbCurSel _liste_vehicules;

if (_index != -1) then {
	private _tab = liste_joueurs_groupe select _index;

	switch (_tab select 0) do {
		case 0: { 
			_bouton_louer ctrlEnable true;
		};
		case 1: { 
			_bouton_acheter ctrlEnable true;
		};
		case 2: { 
			_bouton_sortir ctrlEnable true;
		};
		case 3: { 
			_liste_vehicules lbSetCurSel -1;
		};
	};
};
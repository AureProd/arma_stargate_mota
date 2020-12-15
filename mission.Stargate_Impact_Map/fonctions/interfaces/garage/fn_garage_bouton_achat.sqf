
private _liste_vehicules = (findDisplay 30000) displayCtrl 30001;
private _fond_bouton_location = (findDisplay 30000) displayCtrl 30012;
private _fond_bouton_achat = (findDisplay 30000) displayCtrl 30013;
private _bouton_louer = (findDisplay 30000) displayCtrl 30004;
private _bouton_sortir = (findDisplay 30000) displayCtrl 30005;
private _bouton_acheter = (findDisplay 30000) displayCtrl 30006;

_fond_bouton_location ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_achat ctrlSetBackgroundColor [0.6,0,0,0.25];
bouton_A_OK = false; // true = location / false = achat

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _nomConfigVehicules = "vehicules_goauld";

if ([] call mission_fnc_is_tauri) then {
	_nomConfigVehicules = "vehicules_tauri";
};

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_vehicules_config = getArray(missionConfigFile >> "stargate_vehicules" >> _nomConfigVehicules >> "vehicules");

lbClear _liste_vehicules;

private _garageJoueur = ["garage"] call mission_fnc_getBDD;

// [[valeur_action, (tableau du vehicule)], [valeur_action, (tableau du vehicule)]]
// |--> valeur_action = (0 pour louer, 1 pour achat, 2 pour sortir, 3 pour pas level)
liste_joueurs_groupe = [];

{
	if (isMilitaire == (_x select 6)) then 
	{
		if ((_x select 0) in _garageJoueur) then {
			liste_joueurs_groupe pushBack [2, _x]; 

			_picture_arme_id = getText(configFile >>  "CfgVehicles" >> (_x select 2) >> "picture");
			private _index = _liste_vehicules lbAdd format ["%1", (_x select 1)];
			_liste_vehicules lbSetPicture [_index, _picture_arme_id];
		} else {
			if ((_x select 5) <= (_playerBdd select 4)) then {
				liste_joueurs_groupe pushBack [1, _x];

				_picture_arme_id = getText(configFile >>  "CfgVehicles" >> (_x select 2) >> "picture");
				private _index = _liste_vehicules lbAdd format ["%1 (%2XP)", (_x select 1), (_x select 3)];
				_liste_vehicules lbSetPicture [_index, _picture_arme_id];
			} else {
				liste_joueurs_groupe pushBack [3, _x];

				_picture_arme_id = getText(configFile >>  "CfgVehicles" >> (_x select 2) >> "picture");
				private _index = _liste_vehicules lbAdd format ["%1 ((level %2)", (_x select 1), (_x select 5)];
				_liste_vehicules lbSetPicture [_index, _picture_arme_id];
				_liste_vehicules lbSetColor [_index, [1,0,0,1]];
			};
		};
	};
} forEach _liste_vehicules_config;

_liste_vehicules lbSetCurSel -1;

_bouton_louer ctrlEnable false;
_bouton_sortir ctrlEnable false;
_bouton_acheter ctrlEnable false;
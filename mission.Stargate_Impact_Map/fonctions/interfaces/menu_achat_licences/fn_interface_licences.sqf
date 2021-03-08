
if (!(param [0, false])) then {
	createDialog "menu_achat_licences";
	waitUntil {dialog};
};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 60000) displayCtrl 60001;

if ((_playerBdd select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_documents\menudoc_goauld.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_documents\menudoc.paa";
};

private _liste = (findDisplay 60000) displayCtrl 60002;

// liste_joueurs_groupe = [[valeur_liste, licences config], [valeur_liste, licences config]]
// |--> valeur_liste = (0 si deja possede, 1 si achetable, 2 si pas level) 
liste_joueurs_groupe = [];

lbClear _liste;

{
	if ((_x select 3) == 1) then {
		if ([(_x select 0)] call mission_fnc_has_licence) then {
			private _index = _liste lbAdd (_x select 1);
			_liste lbSetPicture [_index, (_x select 2)];
			_liste lbSetColor [_index, [1,0,0,1]];

			liste_joueurs_groupe pushBack [0, _x];
		} else {
			if ((_x select 6) <= (_playerBdd select 4)) then {
				private _index = _liste lbAdd format ["%1 (%2XP)", (_x select 1), (_x select 5)];
				_liste lbSetPicture [_index, (_x select 2)];

				liste_joueurs_groupe pushBack [1, _x];
			} else {
				private _index = _liste lbAdd format ["%1 ((level %2)", (_x select 1), (_x select 6)];
				_liste lbSetPicture [_index, (_x select 2)];
				_liste lbSetColor [_index, [1,0,0,1]];

				liste_joueurs_groupe pushBack [2, _x];
			};
		};
	};
} forEach (getArray(missionConfigFile >> "stargate" >> "licences" >> "licences_tableau"));

_liste lbSetCurSel -1;
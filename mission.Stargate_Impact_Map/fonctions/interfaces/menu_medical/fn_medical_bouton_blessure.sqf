
bouton_A_OK_bis = 2;

private _fond_bouton_maladie = (findDisplay 5000) displayCtrl 5022;
private _fond_bouton_blessure = (findDisplay 5000) displayCtrl 5023;
private _fond_bouton_nourriture = (findDisplay 5000) displayCtrl 5024;

private _listbox_objets = (findDisplay 5000) displayCtrl 5005;

_fond_bouton_maladie ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_blessure ctrlSetBackgroundColor [0.6,0,0,0.25];
_fond_bouton_nourriture ctrlSetBackgroundColor [0,0,0,0];

lbClear _listbox_objets;

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, garage, vehicules player]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _inventaire_virtuel = _playerBdd select 8;

// liste vies : [ % maladie tete, % maladie ventre, % hit tete, % hit ventre, % hit bras droit, % hit bras gauche, % hit jambe droit, % hit jambe gauche ]
private _liste_vies = _playerBdd select 9;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

liste_joueurs_groupe = [];
{
	private _tab = _x;
	private _index_bis = _forEachIndex;
	{
		if ((_tab select 0) == (_x select 0)) then
		{
			if ((_x select 4) == 3) then 
			{
				private _index = _listbox_objets lbAdd (format ["%1 [x%2]", (_x select 2), (_tab select 1)]);
				_listbox_objets lbSetPicture [_index, (_x select 3)];	

				// [ index / index / index ]
				liste_joueurs_groupe pushBack _index_bis;
			};
		};
	} forEach _liste_objets_config;
} forEach _inventaire_virtuel;

_listbox_objets lbSetCurSel -1;

private _logo_tete = (findDisplay 5000) displayCtrl 5009; 		
private _logo_ventre = (findDisplay 5000) displayCtrl 5010; 		
private _logo_bras_droit = (findDisplay 5000) displayCtrl 5011; 	
private _logo_bras_gauche = (findDisplay 5000) displayCtrl 5012; 	
private _logo_mollet_droit = (findDisplay 5000) displayCtrl 5015;	
private _logo_mollet_gauche = (findDisplay 5000) displayCtrl 5016;	

[_logo_tete, (_liste_vies select 2)] call mission_fnc_change_color_logo;
[_logo_ventre, (_liste_vies select 3)] call mission_fnc_change_color_logo;
[_logo_bras_droit, (_liste_vies select 4)] call mission_fnc_change_color_logo;
[_logo_bras_gauche, (_liste_vies select 5)] call mission_fnc_change_color_logo;
[_logo_mollet_droit, (_liste_vies select 6)] call mission_fnc_change_color_logo;
[_logo_mollet_gauche, (_liste_vies select 7)] call mission_fnc_change_color_logo;


bouton_A_OK_bis = 1;

private _fond_bouton_maladie = (findDisplay 5000) displayCtrl 5022;
private _fond_bouton_blessure = (findDisplay 5000) displayCtrl 5023;
private _fond_bouton_nourriture = (findDisplay 5000) displayCtrl 5024;

private _listbox_objets = (findDisplay 5000) displayCtrl 5005;

_fond_bouton_maladie ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_blessure ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_nourriture ctrlSetBackgroundColor [0.6,0,0,0.25];

lbClear _listbox_objets;

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _inventaire_virtuel = _playerBdd select 8;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

liste_joueurs_groupe = [];
{
	private _tab = _x;
	private _index_bis = _forEachIndex;
	{
		if ((_tab select 0) == (_x select 0)) then
		{
			if (((_x select 4) == 1) or ((_x select 4) == 2) or ((_x select 4) == 6)) then 
			{
				if ((_x select 0) == 4) then 
				{
					private _index = _listbox_objets lbAdd (format ["%1 (%2 %3)", (_x select 2), (_tab select 2), "%"]);
					_listbox_objets lbSetPicture [_index, (_x select 3)];	

					// [ index / index / index ]
					liste_joueurs_groupe pushBack _index_bis;
				}
				else
				{
					private _index = _listbox_objets lbAdd (format ["%1 [x%2]", (_x select 2), (_tab select 1)]);
					_listbox_objets lbSetPicture [_index, (_x select 3)];	

					// [ index / index / index ]
					liste_joueurs_groupe pushBack _index_bis;
				};
			}
			else
			{
				if (((_x select 0) == 2) and (_tab select 2)) then 
				{
					private _index = _listbox_objets lbAdd (format ["purifiée (%1 %2)", (_tab select 3), "%"]);
					_listbox_objets lbSetPicture [_index, (_x select 3)];	

					// [ index / index / index ]
					liste_joueurs_groupe pushBack _index_bis;
				};						
			};
		};
	} forEach _liste_objets_config;
} forEach _inventaire_virtuel;

_listbox_objets lbSetCurSel -1;

/*  
	couleurs des logos :
	[0,0,0,0] <-- transparent
	[0,1,0,0.1] <-- color green
	[1,0.5,0,0.1] <-- color orange
	[1,0,0,0.1] <-- color rouge        
*/
private _logo_tete = (findDisplay 5000) displayCtrl 5009; 		
private _logo_ventre = (findDisplay 5000) displayCtrl 5010; 		
private _logo_bras_droit = (findDisplay 5000) displayCtrl 5011; 	
private _logo_bras_gauche = (findDisplay 5000) displayCtrl 5012; 	
private _logo_mollet_droit = (findDisplay 5000) displayCtrl 5015;	
private _logo_mollet_gauche = (findDisplay 5000) displayCtrl 5016;	

_logo_tete ctrlSetBackgroundColor [0,0,0,0];
_logo_ventre ctrlSetBackgroundColor [0,0,0,0];
_logo_bras_droit ctrlSetBackgroundColor [0,0,0,0];
_logo_bras_gauche ctrlSetBackgroundColor [0,0,0,0];
_logo_mollet_droit ctrlSetBackgroundColor [0,0,0,0];
_logo_mollet_gauche ctrlSetBackgroundColor [0,0,0,0];

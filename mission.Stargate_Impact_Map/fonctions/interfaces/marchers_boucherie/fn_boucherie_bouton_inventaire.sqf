
private _param_actualisation = param [0, false];

private _liste_objets = (findDisplay 20000) displayCtrl 20005;
private _fond_bouton_inventaire = (findDisplay 20000) displayCtrl 200011;
private _fond_bouton_magasin = (findDisplay 20000) displayCtrl 200041;
private _bouton_acheter = (findDisplay 20000) displayCtrl 20002;

_fond_bouton_inventaire ctrlSetBackgroundColor [0.6,0,0,0.25];
_fond_bouton_magasin ctrlSetBackgroundColor [0,0,0,0];
bouton_A_OK = false;

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _inventaire_virtuel = _playerBdd select 8;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

private _index_liste = lbCurSel _liste_objets;

lbClear _liste_objets;

{
	private _tab = _x;
	{
		if ((_tab select 0) == (_x select 0)) then
		{
			if (((_x select 0) == 2) or ((_x select 0) == 4) or ((_x select 4) == 7)) then 
			{
				private _index = nil;

				switch (_x select 0) do 
				{
					case 2: 
					{ 
						if (_tab select 2) then 
						{
							_index = _liste_objets lbAdd (format ["eau purifiée (%1 %2)", (_tab select 3), "%"]);
						} 
						else 
						{
							if ((_tab select 3) == 0) then 
							{
								_index = _liste_objets lbAdd ("gourde vide");
							}
							else
							{
								_index = _liste_objets lbAdd (format ["eau sale (%1 %2)", (_tab select 3), "%"]);
							};
						};
					};
					case 4: 
					{ 
						_index = _liste_objets lbAdd (format ["%1 (%2 %3)", (_x select 2), (_tab select 2), "%"]);
					};
					default : 
					{ 
						_index = _liste_objets lbAdd (format ["%1", (_x select 2)]);
					};
				};
				
				_liste_objets lbSetPicture [_index, (_x select 3)];
			} 
			else 
			{
				private _index = _liste_objets lbAdd (format ["%1 [x%2]", (_x select 2), (_tab select 1)]);
				_liste_objets lbSetPicture [_index, (_x select 3)];
			};
		};
	} forEach _liste_objets_config;
} forEach _inventaire_virtuel;

if (_param_actualisation) then {
	_liste_objets lbSetCurSel _index_liste;
	_bouton_acheter ctrlEnable true;
} else {
	_liste_objets lbSetCurSel -1;
	_bouton_acheter ctrlEnable false;
};

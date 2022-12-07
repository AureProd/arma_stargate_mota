

private _fn_add_item_to_liste = 
{
	private _liste_objets = param [0];
	private _playerBdd = param [1];

	if ((_x select 1) <= (_playerBdd select 4)) then 
	{
		if ((_x select 7) == 0) then 
		{
			private _index = _liste_objets lbAdd (format ["%1 (gratuit)", (_x select 2)]);
			_liste_objets lbSetPicture [_index, (_x select 3)];
		} 
		else 
		{
			private _index = _liste_objets lbAdd (format ["%1 (%2XP)", (_x select 2), (_x select 7)]);
			_liste_objets lbSetPicture [_index, (_x select 3)];
		};
	} 
	else 
	{
		private _index = _liste_objets lbAdd (format ["%1 (level %2)", (_x select 2), (_x select 1)]);
		_liste_objets lbSetPicture [_index, (_x select 3)];
		_liste_objets lbSetColor [_index, [1,0,0,1]];
	};
};

private _liste_objets = (findDisplay 6000) displayCtrl 6005;
private _fond_bouton_magasin = (findDisplay 6000) displayCtrl 6006;
private _fond_bouton_inventaire = (findDisplay 6000) displayCtrl 6007;
private _bouton_acheter = (findDisplay 6000) displayCtrl 6003;

_fond_bouton_inventaire ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_magasin ctrlSetBackgroundColor [0.6,0,0,0.25];
bouton_A_OK = true;

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

lbClear _liste_objets;

{
	if ((_playerBdd select 1) == 2) then 
	{
		if (((_x select 8) == 1) or ((_x select 8) == 2)) then 
		{
			if (isMilitaire) then 
			{
				if (((_x select 4) == 1) or ((_x select 4) == 2) or ((_x select 4) == 6) or ((_x select 0) == 2)) then 
				{
					[_liste_objets, _playerBdd] call _fn_add_item_to_liste;
				};
			}
			else 
			{
				if ((_x select 6) == 0) then 
				{
					if (((_x select 4) == 1) or ((_x select 4) == 2) or ((_x select 4) == 6) or ((_x select 0) == 2)) then 
					{
						[_liste_objets, _playerBdd] call _fn_add_item_to_liste;
					};
				};
			};
		};
	}
	else
	{
		if (((_x select 8) == 0) or ((_x select 8) == 2)) then 
		{
			if (isMilitaire) then 
			{
				if (((_x select 4) == 1) or ((_x select 4) == 2) or ((_x select 4) == 6) or ((_x select 0) == 2)) then 
				{
					[_liste_objets, _playerBdd] call _fn_add_item_to_liste;
				};
			}
			else 
			{
				if ((_x select 6) == 0) then 
				{
					if (((_x select 4) == 1) or ((_x select 4) == 2) or ((_x select 4) == 6) or ((_x select 0) == 2)) then 
					{
						[_liste_objets, _playerBdd] call _fn_add_item_to_liste;
					};
				};
			};
		};
	};
} forEach _liste_objets_config;

_liste_objets lbSetCurSel -1;

_bouton_acheter ctrlEnable false;

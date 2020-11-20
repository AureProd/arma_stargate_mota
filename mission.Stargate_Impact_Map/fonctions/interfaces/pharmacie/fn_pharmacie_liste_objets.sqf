
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

private _liste_messages_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "messages_items");

private _liste_objets = (findDisplay 7000) displayCtrl 7005;
private _bouton_acheter = (findDisplay 7000) displayCtrl 7003;
private _index = lbCurSel _liste_objets;

private _tab = [];

{
	if ((_playerBdd select 1) == 2) then 
	{
		if (((_x select 8) == 1) or ((_x select 8) == 2)) then 
		{
			if (isMilitaire) then 
			{
				if (bouton_A_OK) then 
				{
					if ((_x select 4) == 4) then 
					{
						_tab pushBack _x;
					}
					else
					{
						if ((_x select 0) == 3) then 
						{
							_tab pushBack _x;
						};
					};
				} 
				else 
				{
					if ((_x select 4) == 3) then 
					{
						_tab pushBack _x;
					};
				};
			}
			else 
			{
				if ((_x select 6) == 0) then 
				{
					if (bouton_A_OK) then 
					{
						if ((_x select 4) == 4) then 
						{
							_tab pushBack _x;
						}
						else
						{
							if ((_x select 0) == 3) then 
							{
								_tab pushBack _x;
							};
						};
					} 
					else 
					{
						if ((_x select 4) == 3) then 
						{
							_tab pushBack _x;
						};
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
				if (bouton_A_OK) then 
				{
					if ((_x select 4) == 4) then 
					{
						_tab pushBack _x;
					}
					else
					{
						if ((_x select 0) == 3) then 
						{
							_tab pushBack _x;
						};
					};
				} 
				else 
				{
					if ((_x select 4) == 3) then 
					{
						_tab pushBack _x;
					};
				};
			}
			else 
			{
				if ((_x select 6) == 0) then 
				{
					if (bouton_A_OK) then 
					{
						if ((_x select 4) == 4) then 
						{
							_tab pushBack _x;
						}
						else
						{
							if ((_x select 0) == 3) then 
							{
								_tab pushBack _x;
							};
						};
					} 
					else 
					{
						if ((_x select 4) == 3) then 
						{
							_tab pushBack _x;
						};
					};
				};
			};
		};
	};
} forEach _liste_objets_config;

if (_index != -1) then 
{
	private _objet = _tab select _index;

	if ((_objet select 1) <= (_playerBdd select 4)) then 
	{
		_bouton_acheter ctrlEnable true;
	}
	else
	{
		_bouton_acheter ctrlEnable false;
		_liste_objets lbSetCurSel -1;
	};

	{
		if ((_objet select 0) in (_x select 0)) then 
		{
			hint format ["%1", (_x select 1)];
		}; 
	} forEach _liste_messages_objets_config;
}
else
{
	_bouton_acheter ctrlEnable false;
};
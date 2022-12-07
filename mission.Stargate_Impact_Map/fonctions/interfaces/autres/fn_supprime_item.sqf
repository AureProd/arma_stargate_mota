
// [objet_id, is_stackeable, index, player] call mission_fnc_supprime_item

private _objet_id = param [0]; // id de objet (exemple : 1 = bouteille eau)
private _isStackeable = param [1, true];
private _index = param [2]; // seulement pour les items non stackeable (_isStackeable = false) 
private _player = param [3, player];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable format ["variable_%1", getPlayerUID _player];
private _inventaire = _playerBdd select 8;

if (_isStackeable) then 
{
	private _tab_total = [];

	{
		if ((_x select 0) == _objet_id) then 
		{
			private _count = ((_x select 1) - 1);

			if (_count > 0) then 
			{
				_tab_total pushBack [_objet_id, _count];
			};
		}
		else
		{
			_tab_total pushBack _x;
		};
	} forEach _inventaire;

	[[8, _tab_total]] call mission_fnc_modif_var_bdd;
} 
else 
{
	if (_index != -1) then {
		_inventaire deleteAt _index;

		[[8, _inventaire]] call mission_fnc_modif_var_bdd;
	} else {
		hint localize "STR_erreur";
	};
};

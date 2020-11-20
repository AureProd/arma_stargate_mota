
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _inventaire_virtuel = _playerBdd select 8;

private _nb_item_dialogue = (findDisplay 3000) displayCtrl 3005;
private _nb_item = ctrlText _nb_item_dialogue;

_nb_item = [_nb_item] call mission_fnc_to_number;

private _liste_objets = (findDisplay 3000) displayCtrl 3002;
private _index = lbCurSel _liste_objets;

private _tab = (_inventaire_virtuel select _index);

if ((_tab select 1) >= _nb_item) then 
{
	if (((_tab select 0) == 2) or ((_tab select 0) == 4) or ((_tab select 0) == 30) or ((_tab select 0) == 31)) then 
	{
		[(_tab select 0), false, _index] call mission_fnc_supprime_item;
	} 
	else 
	{
		for "_i" from 1 to _nb_item do
		{
			[(_tab select 0)] call mission_fnc_supprime_item;
		};
	};
} 
else 
{
	if (((_tab select 0) == 2) or ((_tab select 0) == 4) or ((_tab select 0) == 30) or ((_tab select 0) == 31)) then 
	{
		if ((_tab select 0) == 2) then 
		{
			hint "On ne peux pas supprimer plus de 1 gourde, car elle a un pourcentage";
		} 
		else 
		{
			if ((_tab select 0) == 4) then 
			{
				hint "On ne peux pas supprimer plus de 1 ration, car elle a un pourcentage";
			} 
			else 
			{
				hint "Vous ne pouvez pas supprimer plus de 1 couteau à la fois";
			};
		};
	}
	else 
	{
		hint "Vous ne pouvez pas supprimer plus d'items que vous en avez";
	};
};

[] call mission_fnc_actualise_menu_y;
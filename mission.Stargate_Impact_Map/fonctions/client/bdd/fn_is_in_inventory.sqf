
// fonction name : mission_fnc_is_in_inventory
// parmettres : [id item, player]

private _idItem = param [0];
private _joueur = param [1, player];

// [[id object, nb object], [id object, nb object]]
private _inventory = ["inventaire virtuel"] call mission_fnc_getBDD;

private _return = false;

{
	if ((_x select 0) == _idItem) then {
		_return = true;
	};
} forEach _inventory;

_return;

// [id_item, count_item, player] call mission_fnc_has_item

private _itemId = param[0];
private _itemCount = param[1, 1];
private _player = param[2, player];

private _variable = missionNamespace getVariable format ["variable_%1", getPlayerUID _player]; 
private _items = _variable select 8;

private _return = false;

private _count = 0;

{
	if ((_x select 0) == _itemId) then {
		_count = _count + (_x select 1);
	};
} forEach _items;

if (_count >=  _itemCount) then {
	_return = true;
};

_return
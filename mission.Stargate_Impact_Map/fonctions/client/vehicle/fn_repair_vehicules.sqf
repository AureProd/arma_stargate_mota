
private _vehicle = param [0];

[] call mission_fnc_chargement;

_vehicle setDamage 0;

hint (localize "STR_reparer_vehicle_fait");

[56] call mission_fnc_supprime_item;
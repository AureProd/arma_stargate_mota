
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _posPlayer = nil;

playMusic "";

closeDialog 1;

if ((_variable select 1) == 1) then 
{
	_posPlayer = getArray(missionConfigFile >> "stargate" >> "coordonnees_spawn" >> "spawn_goauld");

	player setUnitLoadout (missionConfigFile >> "stargate_items" >> "loadout_goauld");
} 
else 
{
	_posPlayer = getArray(missionConfigFile >> "stargate" >> "coordonnees_spawn" >> "spawn_tauri");

	player setUnitLoadout (missionConfigFile >> "stargate_items" >> "loadout_tauri");
};

[_posPlayer] spawn mission_fnc_spawn;


// [] call mission_fnc_syns_data

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, garage, vehicules player]
private _variable_bis = missionNamespace getVariable nomVarPlayerUID;

private _inventaire_virtuel = _variable_bis select 8;

private _licences = [_variable_bis select 0, _variable_bis select 1];

private _loadout = getUnitLoadout player;

// UID player / name player / classes [classe, race] / exp / licences / level / vie / faim / soif / inv reel / inv virtuel / position player / liste quetes faites / planetes visités / quetes actives / garage / white liste soldat / documents
[(getPlayerUID player), (name player), _licences, (_variable_bis select 2), (_variable_bis select 3), (_variable_bis select 4), (_variable_bis select 5), (_variable_bis select 6), (_variable_bis select 7), _loadout, _inventaire_virtuel, (getPos player), (_variable_bis select 10), (_variable_bis select 11), (_variable_bis select 12), (_variable_bis select 13), (_variable_bis select 14), (_variable_bis select 15)] remoteExec ["db_fnc_sauvegardeBdd", 2];

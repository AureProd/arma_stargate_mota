
// fonction name : player_fnc_setLevel
// parmettres : [level]

private _num = param [0];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _bddPlayer = missionNamespace getVariable nomVarPlayerUID;
private _levelPlayer = _bddPlayer select 4;

private _levelMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "level_max");
private _xpMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "xp_max");
private _tableauLevels = getArray(missionConfigFile >> "stargate_xp" >> "xp" >> "tableau_levels");

if (_num < _levelMax) then 
{
	_levelPlayer = _num;
}
else 
{
    _levelPlayer = 60;
};

[[4, _levelPlayer]] call mission_fnc_modif_var_bdd;

["Notif_level", ["LEVEL UP", format ["Vous passez niveau %1", _levelPlayer]]] call BIS_fnc_showNotification; // xp + level

playSound "level_up";

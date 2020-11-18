
// fonction name : player_fnc_setXP
// parmettres : [XP]

private _num = param [0];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _bddPlayer = missionNamespace getVariable nomVarPlayerUID;
private _xpPlayer = _bddPlayer select 2;
private _levelPlayer = _bddPlayer select 4;

private _levelMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "level_max");
private _xpMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "xp_max");
private _tableauLevels = getArray(missionConfigFile >> "stargate_xp" >> "xp" >> "tableau_levels");

if ((_num) <= _xpMax) then 
{
	_xpPlayer = _num;	
}
else
{
	if (_xpPlayer < _xpMax) then 
	{
		_xpPlayer = 300000;
	};
};

private _aGagneLevel = false;

if (_levelPlayer < _levelMax) then 
{
	{
		if ((_x select 0) == (_levelPlayer + 1)) then 
		{
			if ((_x select 1) <= _xpPlayer) then 
			{
				_levelPlayer = _levelPlayer + 1;
				_aGagneLevel = true;
			};
		};
	} forEach _tableauLevels;
};

[[2, _xpPlayer], [4, _levelPlayer]] call mission_fnc_modif_var_bdd;

if ((_xpPlayer == 300000) and (_levelPlayer == 60)) then 
{
	["Notif_max", ["LEVEL MAX / XP MAX", format ["Vous avez atteints le level et l'xp maximum : GG", _levelPlayer, _xpPlayer]]] call BIS_fnc_showNotification; // xp + level

	playSound "level_up";
}
else
{
	if (_aGagneLevel) then 
	{
		["Notif_level", ["LEVEL UP", format ["Vous passez niveau %1 avec %2 d'xp", _levelPlayer, _xpPlayer]]] call BIS_fnc_showNotification; // xp + level

		playSound "level_up";
	};
};

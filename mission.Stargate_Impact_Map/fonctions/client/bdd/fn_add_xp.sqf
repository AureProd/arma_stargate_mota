
// nom fichier : mission_fnc_add_xp
// paramettres : [valeur xp]

private _valeur = param [0];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _bddPlayer = missionNamespace getVariable nomVarPlayerUID;
private _xpPlayer = _bddPlayer select 2;
private _levelPlayer = _bddPlayer select 4;
private _xpPlayer_bis = _xpPlayer;

private _levelMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "level_max");
private _xpMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "xp_max");
private _tableauLevels = getArray(missionConfigFile >> "stargate_xp" >> "xp" >> "tableau_levels");

if ((_xpPlayer + _valeur) <= _xpMax) then 
{
	_xpPlayer = _xpPlayer + _valeur;	
}
else
{
	if (_xpPlayer < _xpMax) then 
	{
		_xpPlayer = _xpMax;
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

if ((_xpPlayer_bis != _xpMax) and (_xpPlayer == _xpMax) and (_levelPlayer == _levelMax)) then 
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
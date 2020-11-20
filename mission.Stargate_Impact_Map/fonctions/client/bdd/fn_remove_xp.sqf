
private _valeur = param [0];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _bddPlayer = missionNamespace getVariable nomVarPlayerUID;
private _xpPlayer = _bddPlayer select 2;

private _xpMin = 0;
private _tableauLevels = getArray(missionConfigFile >> "stargate_xp" >> "xp" >> "tableau_levels");

if ((_xpPlayer - _valeur) >= _xpMin) then 
{
	_xpPlayer = _xpPlayer - _valeur;

	//["Notif_xp", ["XP", format ["Vous avez perdu %1 points d'xp", _valeur]]] call BIS_fnc_showNotification; // xp	
}
else
{
	if (_xpPlayer > _xpMin) then 
	{
		_xpPlayer = 0;

		["Notif_xp", ["XP", format ["Vous avez 0 points d'xp", _valeur]]] call BIS_fnc_showNotification; // xp	
	};
};

[[2, _xpPlayer]] call mission_fnc_modif_var_bdd;

//["Notif_xp", ["XP", format ["Vous avez perdu %1 points d'xp", _valeur]]] call BIS_fnc_showNotification; // xp

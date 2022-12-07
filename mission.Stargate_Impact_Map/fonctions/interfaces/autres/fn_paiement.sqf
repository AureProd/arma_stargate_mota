
private _prix = param [0];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, planete visite]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _return = false;

if (_prix <= (_playerBdd select 2)) then 
{
	[_prix] call mission_fnc_remove_xp;

	_return = true;
} 
else 
{
	hint localize "STR_pas_assez_xp";

	_return = false;
};

_return;

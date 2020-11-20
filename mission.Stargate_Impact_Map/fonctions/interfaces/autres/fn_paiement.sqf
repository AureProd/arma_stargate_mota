
private _prix = param [0];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _return = false;

if (_prix <= (_playerBdd select 2)) then 
{
	[_prix] call mission_fnc_remove_xp;

	_return = true;
} 
else 
{
	hint "Vous n'avez pas assez d'XP pour acheter cet objet";

	_return = false;
};

_return;

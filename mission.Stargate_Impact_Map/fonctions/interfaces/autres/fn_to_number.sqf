
_string = param [0];
_ok = 1;
_valeur = 0;

for "_i" from 0 to ((count _string) - 1) do {
	_car = (_string select [_i, 1]);

	if (_car == "0" || _car == "1" || _car == "2" || _car == "3" || _car == "4" || _car == "5" || _car == "6" || _car == "7" || _car == "8" || _car == "9") then 
	{}
	else
	{
		_ok = 0;
	};
};

if (_ok == 1) then 
{
	for "_i" from 0 to ((count _string) - 1) do {
		_car = (_string select [_i, 1]);

		_num = (count _string) - (_i + 1);

		switch (_car) do {
			case "0": {
				_valeur = _valeur + (0 * (10^(_num)));
			};
			case "1": {
				_valeur = _valeur + (1 * (10^(_num)));
			};
			case "2": {
				_valeur = _valeur + (2 * (10^(_num)));
			};
			case "3": {
				_valeur = _valeur + (3 * (10^(_num)));
			};
			case "4": {
				_valeur = _valeur + (4 * (10^(_num)));
			};
			case "5": {
				_valeur = _valeur + (5 * (10^(_num)));
			};
			case "6": {
				_valeur = _valeur + (6 * (10^(_num)));
			};
			case "7": {
				_valeur = _valeur + (7 * (10^(_num)));
			};
			case "8": {
				_valeur = _valeur + (8 * (10^(_num)));
			};
			case "9": {
				_valeur = _valeur + (9 * (10^(_num)));
			};
		};
	};
} 
else 
{
	hint "ERREUR : Le texte rentré n'est pas un nombre !!!";
};

_valeur;

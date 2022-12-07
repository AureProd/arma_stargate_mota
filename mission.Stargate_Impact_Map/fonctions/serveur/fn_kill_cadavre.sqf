
private _animalList = ["Sheep_random_F", "Goat_random_F", "Hen_random_F", "Rabbit_F"]; // ["Cock_random_F"]

while {true} do 
{
	{
		if ((simulationEnabled _x) && !((typeOf _x) in _animalList)) then {
			deleteVehicle _x;
		};
	} foreach AllDead;

	sleep 0.2;
};
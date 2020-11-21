
while {true} do 
{
	{
		if ((simulationEnabled _x) && !(((typeOf _x) == "Sheep_random_F") or ((typeOf _x) == "Goat_random_F"))) then {
			deleteVehicle _x;
		};
	} foreach AllDead;

	sleep 0.2;
};
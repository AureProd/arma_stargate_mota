
while {true} do 
{
	{
		if ((simulationEnabled _x) && !(((type _x) == "Sheep_random_F") or ((type _x) == "Goat_random_F"))) then {
			deleteVehicle _x;
		};
	} foreach AllDead;

	sleep 0.2;
};
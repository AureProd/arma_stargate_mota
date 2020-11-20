
while {true} do 
{
	{
		if ((simulationEnabled _x) && !(_x in ((missionNamespace getVariable 'animaux_morts') select 0))) then {
			deleteVehicle _x;
		};
	} foreach AllDead;

	sleep 0.2;
};
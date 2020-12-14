
(findDisplay 46) displayAddEventHandler ["KeyDown", 
{
	if ((_this select 1) == 21) then 
	{
		if (menu_y_ok and !(player getVariable ["notInTransport", false])) then 
		{
			closeDialog 1;

			[] spawn 
			{
				sleep 0.1;

				[] call mission_fnc_interface_y;
			};
		} 
		else 
		{
			closeDialog 1;
		};
	};
}];
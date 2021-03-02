
(findDisplay 46) displayAddEventHandler ["KeyDown", 
{
	if (((_this select 1) == 21) and (alive player)) then 
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

	if (((_this select 1) == 22) and (alive player)) then 
	{
		if (((vehicle player) == player) and ((cursorObject distance player) < 5) and ((cursorObject getVariable ['imatriculation', [false, nil, nil]]) select 0) and (((cursorObject getVariable ['imatriculation', [false, nil, nil]]) select 1) == (getPlayerUID player))) then {
			if (((locked cursorObject) == 0) or ((locked cursorObject) == 1)) then {
				cursorObject lock true;

				playSound "lockCarSound";
			} else {
				cursorObject lock false;

				playSound "unlockCarSound";
			};
		};

		if (((vehicle player) != player) and (((vehicle player) getVariable ['imatriculation', [false, nil, nil]]) select 0) and ((((vehicle player) getVariable ['imatriculation', [false, nil, nil]]) select 1) == (getPlayerUID player))) then {
			if (((locked (vehicle player)) == 0) or ((locked (vehicle player)) == 1)) then {
				(vehicle player) lock true;

				playSound "lockCarSound";
			} else {
				(vehicle player) lock false;

				playSound "unlockCarSound";
			};
		};
	};
}];

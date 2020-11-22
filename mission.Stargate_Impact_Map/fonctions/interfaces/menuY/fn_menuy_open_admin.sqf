
switch (LEVELADMIN) do {
	default { 
		if ((["classe"] call mission_fnc_getBDD) == 3) then {
			closeDialog 1;

			[] spawn mission_fnc_interface_soldat;
		};
	};
};
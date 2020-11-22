
switch (LEVELADMIN) do {
	case 5: { 

	};
	case 1: { 
		
	};
	default { 
		if ((["classe"] call mission_fnc_getBDD) == 3) then {
			[] spawn interface_soldat;
		};
	};
};

private _choix = param [0];

switch (_choix) do {
	case 1: { // TP
		if (isNil "LOCADMIN") then {
			hint localize "STR_impossible_tp_sans_location_admin";
		} else {
			player setPos LOCADMIN;
		};
	};
	case 2: { // sauvegarde
		LOCADMIN = getPos player;
	};
};
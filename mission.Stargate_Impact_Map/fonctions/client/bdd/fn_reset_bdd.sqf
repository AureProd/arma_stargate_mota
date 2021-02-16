
private _param_recommencement = param [0, false];

[getPlayerUID player] call mission_fnc_quitter_team;
[] call mission_fnc_create_reset_invitations;

private _isWhiteListe = false;

if (_param_recommencement) then {
	if ([] call mission_fnc_is_wl_soldat) then {
		_isWhiteListe = true;
	};
};

// liste vies : [ % maladie tete, % maladie ventre, % hit tete, % hit ventre, % hit bras droit, % hit bras gauche, % hit jambe droit, % hit jambe gauche ]
private _liste_vies = [100, 100, 100, 100, 100, 100, 100, 100];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, [planetes stargate, maps], quetes actives, garage, white liste soldat, documents]
missionNamespace setVariable [nomVarPlayerUID, [1, 1, 0, [], 1, 100, 100, 100, [], [100, 100, 100, 100, 100, 100, 100, 100], [], [], [[],[]], [], [], 0, []], true];

if (_isWhiteListe) then {
	["wl soldat", 1] call mission_fnc_setBDD;
};

player setDamage 0;

[] call mission_fnc_delete_all_vehicles;

/*	
	classes :
	1 = archeoloque
	2 = scientifique
	3 = soldat 
	races :
	1 = goauld
	2 = tauri	
*/
//player setVariable ["classe", 1, true];
//player setVariable ["race", 1, true];

// supprime tt equipement de unité
player setUnitLoadout (getUnitLoadout (configFile >> "EmptyLoadout"));

[] call mission_fnc_syns_data;

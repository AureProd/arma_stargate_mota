
// liste vies : [ % maladie tete, % maladie ventre, % hit tete, % hit ventre, % hit bras droit, % hit bras gauche, % hit jambe droit, % hit jambe gauche ]
private _liste_vies = [100, 100, 100, 100, 100, 100, 100, 100];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives, garage, white liste soldat, documents]
missionNamespace setVariable [nomVarPlayerUID, [1, 1, 400, [], 1, 100, 100, 100, [], [100, 100, 100, 100, 100, 100, 100, 100], [], [1], [], [], [], 0, []], true];

private _param_recommencement = param [0, false]

if (_param_recommencement) then {
	if ([] call mission_fnc_is_wl_soldat) then {
		["wl soldat", 1] call mission_fnc_setBDD;
	};
};

player setDamage 0;

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

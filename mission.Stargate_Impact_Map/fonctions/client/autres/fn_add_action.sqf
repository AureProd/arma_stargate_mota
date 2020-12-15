
//archeologue_1 / archeologue_2

// params -> [id, image, code, condition, param]
private _fn_addActions = 
{
	private _id = param [0];
	private _image = param [1];
	private _code = param [2, {hint localize "STR_erreur";}];
	private _condition = param [3, "true"];
	private _param = param [4, []];

	private _id_shop = _id addAction ["", _code, _param, 1.5, true, true, "", _condition, 5];
	_id setUserActionText [_id_shop, "", "", format ["<img size='10' image='%1'/>", _image]];
};

/*	
	classes :
	1 = archeoloque
	2 = scientifique
	3 = soldat 
	races :
	1 = goauld
	2 = tauri	
*/

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_marcher}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "marcher_goauld"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_marcher}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "marcher_tauri"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_pharmacie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "pharmacie_goauld"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_pharmacie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "pharmacie_tauri"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[true] call mission_fnc_interface_marcher}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "marcher_goauld_militaire"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[true] call mission_fnc_interface_pharmacie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "pharmacie_goauld_militaire"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[true] call mission_fnc_interface_marcher}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "marcher_tauri_militaire"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[true] call mission_fnc_interface_pharmacie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "pharmacie_tauri_militaire"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_armurerie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "armurerie_tauri"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_armurerie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "armurerie_goauld"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_vetement}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vetement_goauld"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[1] call mission_fnc_interface_vetement}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vetement_goauld_militaire"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[2] call mission_fnc_interface_vetement}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and ((['classe'] call mission_fnc_getBDD) == 3) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vetement_goauld_grades"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_vetement}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vetement_tauri"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[1] call mission_fnc_interface_vetement}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vetement_tauri_militaire"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[2] call mission_fnc_interface_vetement}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and ((['classe'] call mission_fnc_getBDD) == 3) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vetement_tauri_grades"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_marcher_general}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "general_goauld"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_marcher_general}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "general_tauri"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_boucherie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "boucherie_goauld"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_boucherie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "boucherie_tauri"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_poissonerie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "poissonerie_goauld"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_poissonerie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "poissonerie_tauri"));

{
	[(call compile (_x select 0)), "pictures\addActions\popup_interaction_magasin.paa", {[((_this select 3) select 0), 0] call mission_fnc_interface_garage}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)", [(call compile (_x select 1))]] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vehicules_goauld"));

{
	[(call compile (_x select 0)), "pictures\addActions\popup_interaction_magasin.paa", {[((_this select 3) select 0), 0] call mission_fnc_interface_garage}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)", [(call compile (_x select 1))]] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vehicules_tauri"));

{
	[(call compile (_x select 0)), "pictures\addActions\popup_interaction_magasin.paa", {[((_this select 3) select 0), 1] call mission_fnc_interface_garage}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)", [(call compile (_x select 1))]] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vehicules_goauld_militaire"));

{
	[(call compile (_x select 0)), "pictures\addActions\popup_interaction_magasin.paa", {[((_this select 3) select 0), 1] call mission_fnc_interface_garage}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)", [(call compile (_x select 1))]] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vehicules_tauri_militaire"));

{
	[(call compile (_x select 0)), "pictures\addActions\popup_interaction_magasin.paa", {[((_this select 3) select 0), 2] call mission_fnc_interface_garage}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)", [(call compile (_x select 1))]] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vehicules_goauld_bateaux"));

{
	[(call compile (_x select 0)), "pictures\addActions\popup_interaction_magasin.paa", {[((_this select 3) select 0), 2] call mission_fnc_interface_garage}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)", [(call compile (_x select 1))]] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vehicules_tauri_bateaux"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_licences}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "licences_goauld"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_licences}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "licences_tauri"));

// ---------------------------------------------------------------- 

{
	switch (_x select 1) do {
		case 1: { 
			[
				(call compile (_x select 2)), "pictures\addActions\interaction_parler.paa", {[(_this select 3)] call mission_fnc_interface_journal_quetes}, format ["((['classe'] call mission_fnc_getBDD) == 1) and ((['race'] call mission_fnc_getBDD) == 2) and ([%1] call mission_fnc_has_quetes_dispo) and (alive player)", (_x select 0)], _x
			] call _fn_addActions;
			[
				(call compile (_x select 8)), "pictures\addActions\interaction_parler.paa", {call compile (_this select 3)}, format ["((['classe'] call mission_fnc_getBDD) == 1) and ((['race'] call mission_fnc_getBDD) == 2) and ([%1] call mission_fnc_has_quetes_actives) and (alive player)", (_x select 0)], (_x select 10)
			] call _fn_addActions;

			(call compile (_x select 2)) allowDamage false;
			(call compile (_x select 8)) allowDamage false;
		};		
	};
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "archeologue_tauri"));

{
	switch (_x select 1) do {
		case 1: { 
			[
				(call compile (_x select 2)), "pictures\addActions\interaction_parler.paa", {[(_this select 3)] call mission_fnc_interface_journal_quetes}, format ["((['classe'] call mission_fnc_getBDD) == 2) and ((['race'] call mission_fnc_getBDD) == 2) and ([%1] call mission_fnc_has_quetes_dispo) and (alive player)", (_x select 0)], _x
			] call _fn_addActions;
			[
				(call compile (_x select 8)), "pictures\addActions\interaction_parler.paa", {call compile (_this select 3)}, format ["((['classe'] call mission_fnc_getBDD) == 2) and ((['race'] call mission_fnc_getBDD) == 2) and ([%1] call mission_fnc_has_quetes_actives) and (alive player)", (_x select 0)], (_x select 10)
			] call _fn_addActions;

			(call compile (_x select 2)) allowDamage false;
			(call compile (_x select 8)) allowDamage false;
		};		
	};
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "scientifique_tauri"));

{
	switch (_x select 1) do {
		case 1: { 
			[
				(call compile (_x select 2)), "pictures\addActions\interaction_parler.paa", {[(_this select 3)] call mission_fnc_interface_journal_quetes}, format ["((['classe'] call mission_fnc_getBDD) == 3) and ((['race'] call mission_fnc_getBDD) == 2) and ([%1] call mission_fnc_has_quetes_dispo) and (alive player)", (_x select 0)], _x
			] call _fn_addActions;
			[
				(call compile (_x select 8)), "pictures\addActions\interaction_parler.paa", {call compile (_this select 3)}, format ["((['classe'] call mission_fnc_getBDD) == 3) and ((['race'] call mission_fnc_getBDD) == 2) and ([%1] call mission_fnc_has_quetes_actives) and (alive player)", (_x select 0)], (_x select 10)
			] call _fn_addActions;

			(call compile (_x select 2)) allowDamage false;
			(call compile (_x select 8)) allowDamage false;
		};		
	};
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "soldat_tauri"));

{
	switch (_x select 1) do {
		case 1: { 
			[
				(call compile (_x select 2)), "pictures\addActions\interaction_parler.paa", {[(_this select 3)] call mission_fnc_interface_journal_quetes}, format ["((['classe'] call mission_fnc_getBDD) == 1) and ((['race'] call mission_fnc_getBDD) == 1) and ([%1] call mission_fnc_has_quetes_dispo) and (alive player)", (_x select 0)], _x
			] call _fn_addActions;
			[
				(call compile (_x select 8)), "pictures\addActions\interaction_parler.paa", {call compile (_this select 3)}, format ["((['classe'] call mission_fnc_getBDD) == 1) and ((['race'] call mission_fnc_getBDD) == 1) and ([%1] call mission_fnc_has_quetes_actives) and (alive player)", (_x select 0)], (_x select 10)
			] call _fn_addActions;

			(call compile (_x select 2)) allowDamage false;
			(call compile (_x select 8)) allowDamage false;
		};		
	};
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "archeologue_goauld"));

{
	switch (_x select 1) do {
		case 1: { 
			[
				(call compile (_x select 2)), "pictures\addActions\interaction_parler.paa", {[(_this select 3)] call mission_fnc_interface_journal_quetes}, format ["((['classe'] call mission_fnc_getBDD) == 2) and ((['race'] call mission_fnc_getBDD) == 1) and ([%1] call mission_fnc_has_quetes_dispo) and (alive player)", (_x select 0)], _x
			] call _fn_addActions;
			[
				(call compile (_x select 8)), "pictures\addActions\interaction_parler.paa", {call compile (_this select 3)}, format ["((['classe'] call mission_fnc_getBDD) == 2) and ((['race'] call mission_fnc_getBDD) == 1) and ([%1] call mission_fnc_has_quetes_actives) and (alive player)", (_x select 0)], (_x select 10)
			] call _fn_addActions;

			(call compile (_x select 2)) allowDamage false;
			(call compile (_x select 8)) allowDamage false;
		};		
	};
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "scientifique_goauld"));

{
	switch (_x select 1) do {
		case 1: { 
			[
				(call compile (_x select 2)), "pictures\addActions\interaction_parler.paa", {[(_this select 3)] call mission_fnc_interface_journal_quetes}, format ["((['classe'] call mission_fnc_getBDD) == 3) and ((['race'] call mission_fnc_getBDD) == 1) and ([%1] call mission_fnc_has_quetes_dispo) and (alive player)", (_x select 0)], _x
			] call _fn_addActions;
			[
				(call compile (_x select 8)), "pictures\addActions\interaction_parler.paa", {call compile (_this select 3)}, format ["((['classe'] call mission_fnc_getBDD) == 3) and ((['race'] call mission_fnc_getBDD) == 1) and ([%1] call mission_fnc_has_quetes_actives) and (alive player)", (_x select 0)], (_x select 10)
			] call _fn_addActions;

			(call compile (_x select 2)) allowDamage false;
			(call compile (_x select 8)) allowDamage false;
		};		
	};
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "soldat_goauld"));



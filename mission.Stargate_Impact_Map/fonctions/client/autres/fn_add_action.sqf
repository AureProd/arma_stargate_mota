
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

// params -> [id, text, code, condition, param]
private _addActions_bis = 
{
	private _id = param [0];
	private _text = param [1, ""];
	private _code = param [2, {hint localize "STR_erreur";}];
	private _condition = param [3, "true"];
	private _param = param [4, []];

	private _id_shop = _id addAction [_text, _code, _param, 1.5, true, true, "", _condition, 10];
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
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[2] call mission_fnc_interface_armurerie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "armurerie_tauri_gendarme"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[2] call mission_fnc_interface_armurerie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "armurerie_goauld_gendarme"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[1] call mission_fnc_interface_armurerie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "armurerie_tauri_militaire"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[1] call mission_fnc_interface_armurerie}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "armurerie_goauld_militaire"));

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
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[3] call mission_fnc_interface_vetement}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and ((['classe'] call mission_fnc_getBDD) == 3) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vetement_goauld_gendarme"));

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
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[3] call mission_fnc_interface_vetement}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and ((['classe'] call mission_fnc_getBDD) == 3) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vetement_tauri_gendarme"));

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
	[(call compile (_x select 0)), "pictures\addActions\popup_interaction_magasin.paa", {[((_this select 3) select 0), 3] call mission_fnc_interface_garage}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and ((['classe'] call mission_fnc_getBDD) == 3) and (alive player)", [(call compile (_x select 1))]] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vehicules_goauld_gendarme"));

{
	[(call compile (_x select 0)), "pictures\addActions\popup_interaction_magasin.paa", {[((_this select 3) select 0), 3] call mission_fnc_interface_garage}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and ((['classe'] call mission_fnc_getBDD) == 3) and (alive player)", [(call compile (_x select 1))]] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vehicules_tauri_gendarme"));

{
	[(call compile (_x select 0)), "pictures\addActions\popup_interaction_magasin.paa", {[((_this select 3) select 0), 1] call mission_fnc_interface_garage}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and ((['classe'] call mission_fnc_getBDD) == 3) and (alive player)", [(call compile (_x select 1))]] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vehicules_goauld_militaire"));

{
	[(call compile (_x select 0)), "pictures\addActions\popup_interaction_magasin.paa", {[((_this select 3) select 0), 1] call mission_fnc_interface_garage}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and ((['classe'] call mission_fnc_getBDD) == 3) and (alive player)", [(call compile (_x select 1))]] call _fn_addActions;
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

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_dealer}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "dealer_goauld"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_dealer}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "dealer_tauri"));

// ---------------------------------------------------------------- 

{
	private _condition = "((['classe'] call mission_fnc_getBDD) == 1) and ((['race'] call mission_fnc_getBDD) == 2) and (alive player)";
	
	[_x, _condition] call mission_fnc_addActionsQuetes;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "archeologue_tauri"));

{
	private _condition = "((['classe'] call mission_fnc_getBDD) == 2) and ((['race'] call mission_fnc_getBDD) == 2) and (alive player)";
	
	[_x, _condition] call mission_fnc_addActionsQuetes;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "scientifique_tauri"));

{
	private _condition = "((['classe'] call mission_fnc_getBDD) == 3) and ((['race'] call mission_fnc_getBDD) == 2) and (alive player)";
	
	[_x, _condition] call mission_fnc_addActionsQuetes;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "soldat_tauri"));

{
	private _condition = "((['classe'] call mission_fnc_getBDD) == 1) and ((['race'] call mission_fnc_getBDD) == 1) and (alive player)";
	
	[_x, _condition] call mission_fnc_addActionsQuetes;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "archeologue_goauld"));

{
	private _condition = "((['classe'] call mission_fnc_getBDD) == 2) and ((['race'] call mission_fnc_getBDD) == 1) and (alive player)";
	
	[_x, _condition] call mission_fnc_addActionsQuetes;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "scientifique_goauld"));

{
	private _condition = "((['classe'] call mission_fnc_getBDD) == 3) and ((['race'] call mission_fnc_getBDD) == 1) and (alive player)";

	[_x, _condition] call mission_fnc_addActionsQuetes;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "soldat_goauld"));

// ---------------------------------------------------------------- 

sleep 60;

{
	switch (_x select 4) do {
		case 0: { 
			[(call compile (_x select 0)), (_x select 5), {
				[((_this select 3) select 0)] call mission_fnc_traitement;
			}, format ['(!recolte_ON) and (alive player) and (!([] call mission_fnc_is_tauri)) and ([%1] call mission_fnc_is_in_inventory)', (_x select 2), (_x select 9)], [_x]] call _addActions_bis;
		};
		case 1: { 
			[(call compile (_x select 0)), (_x select 5), {
				[((_this select 3) select 0)] call mission_fnc_traitement;
			}, format ['(!recolte_ON) and (alive player) and ([] call mission_fnc_is_tauri) and ([%1] call mission_fnc_is_in_inventory)', (_x select 2), (_x select 9)], [_x]] call _addActions_bis;
		};
		case 2: { 
			[(call compile (_x select 0)), (_x select 5), {
				[((_this select 3) select 0)] call mission_fnc_traitement;
			}, format ['(!recolte_ON) and (alive player) and ([%1] call mission_fnc_is_in_inventory)', (_x select 2), (_x select 9)], [_x]] call _addActions_bis;
		};
	};
} forEach (getArray(missionConfigFile >> "stargate" >> "traitement" >> "pts_traitement"));

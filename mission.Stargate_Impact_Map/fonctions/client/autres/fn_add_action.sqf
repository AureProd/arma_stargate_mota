
//archeologue_1 / archeologue_2

private _fn_addActions = 
{
	private _id = param [0];
	private _image = param [1];
	private _code = param [2, {hint "test";}];
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
// { id / { id quete / id quete } } 
{
	[(call compile (_x select 0)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), "tableau_quetes_tauri_archeologue"] call mission_fnc_interface_journal_quetes}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (((missionNamespace getVariable nomVarPlayerUID) select 0) == 1) and (alive player)", (_x select 1)] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_tauri_archeologue"));

{
	[(call compile (_x select 0)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), "tableau_quetes_tauri_scientifique"] call mission_fnc_interface_journal_quetes}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (((missionNamespace getVariable nomVarPlayerUID) select 0) == 2) and (alive player)", (_x select 1)] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_tauri_scientifique"));

{
	[(call compile (_x select 0)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), "tableau_quetes_tauri_soldat"] call mission_fnc_interface_journal_quetes}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (((missionNamespace getVariable nomVarPlayerUID) select 0) == 3) and (alive player)", (_x select 1)] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_tauri_soldat"));

{
	[(call compile (_x select 0)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), "tableau_quetes_goauld_archeologue"] call mission_fnc_interface_journal_quetes}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (((missionNamespace getVariable nomVarPlayerUID) select 0) == 1) and (alive player)", (_x select 1)] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_goauld_archeologue"));

{
	[(call compile (_x select 0)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), "tableau_quetes_goauld_scientifique"] call mission_fnc_interface_journal_quetes}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (((missionNamespace getVariable nomVarPlayerUID) select 0) == 2) and (alive player)", (_x select 1)] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_goauld_scientifique"));

{
	[(call compile (_x select 0)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), "tableau_quetes_goauld_soldat"] call mission_fnc_interface_journal_quetes}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 1) and (((missionNamespace getVariable nomVarPlayerUID) select 0) == 3) and (alive player)", (_x select 1)] call _fn_addActions;
	(call compile (_x select 0)) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_goauld_soldat"));

// -------------------

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
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[] call mission_fnc_interface_vetement}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vetement_tauri"));

{
	[(call compile _x), "pictures\addActions\popup_interaction_magasin.paa", {[true] call mission_fnc_interface_vetement}, "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (alive player)"] call _fn_addActions;
	(call compile _x) allowDamage false;
} forEach (getArray(missionConfigFile >> "stargate_shops" >> "shops" >> "vetement_tauri_militaire"));

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
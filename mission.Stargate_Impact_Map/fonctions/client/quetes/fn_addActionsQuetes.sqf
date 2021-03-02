
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

private _tab_quete = param [0];
private _condition = param [1];

switch (_tab_quete select 6) do {
	case 1: { // quête type 1
		[
			(call compile (_tab_quete select 1)), "pictures\addActions\interaction_parler.paa", {[(_this select 3)] call mission_fnc_interface_journal_quetes}, format ["%2 and (%1 call mission_fnc_has_quetes_faites) and ((['level'] call mission_fnc_getBDD) >= %3) and (!([%4] call mission_fnc_has_quetes_actives)) and (!([%4] call mission_fnc_has_quetes_faites))", (_tab_quete select 8), _condition, (_tab_quete select 9), (_tab_quete select 0)], _tab_quete
		] call _fn_addActions;
		[
			(call compile (_tab_quete select 1)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), 2] call mission_fnc_quete_type_1}, format ["%2 and ([%1] call mission_fnc_has_quetes_actives) and ((missionNamespace getVariable ['quete_%3_type_1_player_%4', 0]) == %5)", (_tab_quete select 0), _condition, (_tab_quete select 0), getPlayerUID player, (count (_tab_quete select 7))], _tab_quete
		] call _fn_addActions;

		{
			[
				(call compile (_x select 1)), format["%1", (_x select 2)], {[((_this select 3) select 0), 1, ((_this select 3) select 1)] call mission_fnc_quete_type_1}, format ["%2 and ([%1] call mission_fnc_has_quetes_actives) and ((missionNamespace getVariable ['quete_%3_type_1_player_%4', 0]) == %5)", (_tab_quete select 0), _condition, (_tab_quete select 0), getPlayerUID player, _forEachIndex], [_tab_quete, _forEachIndex]
			] call _addActions_bis;
			
			(call compile (_x select 1)) allowDamage false;
		} forEach (_tab_quete select 7);

		(call compile (_tab_quete select 1)) allowDamage false;
	};		
	case 2: { // quête type 2
		[
			(call compile (_tab_quete select 1)), "pictures\addActions\interaction_parler.paa", {[(_this select 3)] call mission_fnc_interface_journal_quetes}, format ["%2 and (%1 call mission_fnc_has_quetes_faites) and ((['level'] call mission_fnc_getBDD) >= %3) and (!([%4] call mission_fnc_has_quetes_actives)) and (!([%4] call mission_fnc_has_quetes_faites))", (_tab_quete select 8), _condition, (_tab_quete select 9), (_tab_quete select 0)], _tab_quete
		] call _fn_addActions;
		[
			(call compile (_tab_quete select 1)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), 0] call mission_fnc_quete_type_2}, format ["%2 and ([%1] call mission_fnc_has_quetes_actives)", (_tab_quete select 0), _condition], _tab_quete
		] call _fn_addActions;

		(call compile (_tab_quete select 1)) allowDamage false;
	};	
	case 3: { // quête type 3
		[
			(call compile (_tab_quete select 1)), "pictures\addActions\interaction_parler.paa", {[(_this select 3)] call mission_fnc_interface_journal_quetes}, format ["%2 and (%1 call mission_fnc_has_quetes_faites) and ((['level'] call mission_fnc_getBDD) >= %3) and (!([%4] call mission_fnc_has_quetes_actives)) and (!([%4] call mission_fnc_has_quetes_faites))", (_tab_quete select 8), _condition, (_tab_quete select 9), (_tab_quete select 0)], _tab_quete
		] call _fn_addActions;
		[
			(call compile (_tab_quete select 1)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), 1] call mission_fnc_quete_type_3}, format ["%2 and ([%1] call mission_fnc_has_quetes_actives) and (missionNamespace getVariable ['quete_%3_type_3_player_%4', false])", (_tab_quete select 0), _condition, (_tab_quete select 0), getPlayerUID player], _tab_quete
		] call _fn_addActions;

		(call compile (_tab_quete select 1)) allowDamage false;
	};	
	case 4: { // quête type 4
		[
			(call compile (_tab_quete select 1)), "pictures\addActions\interaction_parler.paa", {[(_this select 3)] call mission_fnc_interface_journal_quetes}, format ["%2 and (%1 call mission_fnc_has_quetes_faites) and ((['level'] call mission_fnc_getBDD) >= %3) and (!([%4] call mission_fnc_has_quetes_actives)) and (!([%4] call mission_fnc_has_quetes_faites))", (_tab_quete select 8), _condition, (_tab_quete select 9), (_tab_quete select 0)], _tab_quete
		] call _fn_addActions;
		[
			(call compile ((_tab_quete select 7) select 3)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), 0] call mission_fnc_quete_type_4}, format ["%2 and ([%1] call mission_fnc_has_quetes_actives)", (_tab_quete select 0), _condition], _tab_quete
		] call _fn_addActions;
		[
			(call compile (_tab_quete select 1)), "pictures\addActions\interaction_parler.paa", {[(_this select 3), 1] call mission_fnc_quete_type_4}, format ["%2 and ([%1] call mission_fnc_has_quetes_actives)", (_tab_quete select 0), _condition], _tab_quete
		] call _fn_addActions;

		(call compile (_tab_quete select 1)) allowDamage false;
		(call compile ((_tab_quete select 7) select 3)) allowDamage false;
	};
};

// [tableau_config_quête] call mission_fnc_giveQueteRecompence

private _tab_quete = param [0];

private _recompence = _tab_quete select 5;
private _docs = _tab_quete select 10;
private _planetes = _tab_quete select 11;

_docs call mission_fnc_add_docs;

{
	[_x] call mission_fnc_add_planetes;
} forEach _planetes;

titleText [format [localize "STR_give_quete_recompence", _recompence], "PLAIN DOWN", 0.20];

[_recompence] call mission_fnc_add_xp;
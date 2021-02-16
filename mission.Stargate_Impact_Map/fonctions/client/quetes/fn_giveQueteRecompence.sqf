
// [récompence_xp] call mission_fnc_giveQueteRecompence

private _recompence = param [0, 0];

titleText [format [localize "STR_give_quete_recompence", _recompence], "PLAIN DOWN", 0.20];

[_recompence] call mission_fnc_add_xp;
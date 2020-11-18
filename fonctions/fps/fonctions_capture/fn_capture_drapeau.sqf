
// drawIcon3D ["\A3\ui_f\data\map\markers\military\warning_CA.paa", [1, 1, 1, 0.8], _Apos, 1, 1, 0, "Control Point A", 1, 0.035, "PuristaMedium"];

private _etat_id = param [0];
private _id_drapeau = param [1];

[100] call mission_fnc_add_xp;

_id_drapeau setVariable ["etat_drapeau", _etat_id, true];

[_id_drapeau] remoteExec ["mission_fnc_change_flag_color", 2];

//[_etat_id] call mission_fnc_son_notif;
[_etat_id] remoteExec ["mission_fnc_son_notif", -2];

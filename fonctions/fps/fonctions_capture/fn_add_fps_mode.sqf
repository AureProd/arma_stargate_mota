
{
	_x addAction ["<t color='#284cb8'>Capturer le drapeau</t>", {[1, (_this select 0)] call mission_fnc_capture_drapeau}, [], 1.5, true, true, "", "((missionNamespace getVariable nomVarPlayerUID) select 1) == 2 && (_target getVariable 'etat_drapeau') != 1 && (player distance _target) <= 8"];
	_x addAction ["<t color='#acb828'>Capturer le drapeau</t>", {[2, (_this select 0)] call mission_fnc_capture_drapeau}, [], 1.5, true, true, "", "((missionNamespace getVariable nomVarPlayerUID) select 1) == 1 && (_target getVariable 'etat_drapeau') != 2 && (player distance _target) <= 8"];
} forEach tableau_drapeaux;

addMissionEventHandler ["Draw3D", {call mission_fnc_set_logo_flag}];

[] call mission_fnc_respawn_event;

[] call mission_fnc_interface_fps;


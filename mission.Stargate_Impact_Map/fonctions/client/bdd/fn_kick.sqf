
0 cutText [localize "STR_kick_script","BLACK FADED"];
0 cutFadeOut 99999999;

["Kick", false, true, false, true] call BIS_fnc_endMission;

//[] remoteExec ["mission_fnc_kick", ([] call mission_fnc_admin_get_player)];
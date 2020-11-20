
private _kicks = missionNamespace getVariable ["players_kicked", []];

_kicks pushBack (getPlayerUID player);

missionNamespace setVariable ["players_kicked", _kicks, true];

0 cutText ["Vous n'êtes pas dans la White List","BLACK FADED"];
0 cutFadeOut 99999999;

["NotWhitelist", false, true, false, true] call BIS_fnc_endMission;
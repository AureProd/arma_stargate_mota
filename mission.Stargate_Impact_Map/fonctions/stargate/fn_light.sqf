// mission_fnc_light
// params = [porte, toON]

private _porte = param [0];
private _toON = param [1, false];

private _listePlanetes = (getArray (missionConfigFile >> "docs_planetes" >> "planetes" >> "liste"));
private _listeLogos = (getArray (missionConfigFile >> "docs_planetes" >> "planetes" >> "liste_logos"));

private _indexPlanete = _listePlanetes findIf {
	(call compile (_x select 3)) == _porte
};

if ((_indexPlanete != -1)) then {
	private _planete = _listePlanetes select _indexPlanete;
	private _listeLogoPlanete = [];

	private _dhd = (call compile (_planete select 4));

	if ((typeOf _dhd) == "SGI_dhd") then {
		for "_i" from 0 to 38 do {
			[_dhd, [_i, "\SGI_DHD\Rvmat\sgi_dhd.rvmat"]] remoteExec ["setObjectMaterial", 0];
		};
	};
};

if ((typeOf _porte) == "SGI_gate") then {
	if (_toON) then {
		[_porte, [1, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [3, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [5, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [7, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [13, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [15, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [17, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0];
	} else {
		[_porte, [1, "#(rgb,8,8,3)color(0.05,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [3, "#(rgb,8,8,3)color(0.05,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [5, "#(rgb,8,8,3)color(0.05,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [7, "#(rgb,8,8,3)color(0.05,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [13, "#(rgb,8,8,3)color(0.05,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [15, "#(rgb,8,8,3)color(0.05,0,0,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [17, "#(rgb,8,8,3)color(0.05,0,0,1)"]] remoteExec ["setObjectTexture", 0];
	};
} else {
	if (_toON) then {
		[_porte, [0, "#(rgb,8,8,3)color(0,0.5,1,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [1, "#(rgb,8,8,3)color(0,0.5,1,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [2, "#(rgb,8,8,3)color(0,0.5,1,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [3, "#(rgb,8,8,3)color(0,0.5,1,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [6, "#(rgb,8,8,3)color(0,0.5,1,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [7, "#(rgb,8,8,3)color(0,0.5,1,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [8, "#(rgb,8,8,3)color(0,0.5,1,1)"]] remoteExec ["setObjectTexture", 0];
	} else {
		[_porte, [0, "#(rgb,8,8,3)color(0,0,0.05,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [1, "#(rgb,8,8,3)color(0,0,0.05,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [2, "#(rgb,8,8,3)color(0,0,0.05,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [3, "#(rgb,8,8,3)color(0,0,0.05,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [6, "#(rgb,8,8,3)color(0,0,0.05,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [7, "#(rgb,8,8,3)color(0,0,0.05,1)"]] remoteExec ["setObjectTexture", 0];
		[_porte, [8, "#(rgb,8,8,3)color(0,0,0.05,1)"]] remoteExec ["setObjectTexture", 0];
	};
};
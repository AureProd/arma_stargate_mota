// mission_fnc_dhd
// params = [porte, code, porte distante]

private _porte = param [0];
private _code = param [1];
private _porteDistante = param [2];

private _listePlanetes = (getArray (missionConfigFile >> "docs_planetes" >> "planetes" >> "liste"));
private _listeLogos = (getArray (missionConfigFile >> "docs_planetes" >> "planetes" >> "liste_logos"));

private _indexPlanete = _listePlanetes findIf {
	(call compile (_x select 3)) == _porte
};

private _indexPlaneteDistante = _listePlanetes findIf {
	(call compile (_x select 3)) == _porteDistante
};

if ((_indexPlanete != -1) and (_indexPlaneteDistante != -1)) then {
	private _planete = _listePlanetes select _indexPlanete;
	private _planeteDistante = _listePlanetes select _indexPlaneteDistante;
	private _listeLogoPlanete = [];

	{
		private _indexPlaneteTableau = _x;

		private _indexLogo = _listeLogos findIf {
			_indexPlaneteTableau == (_x select 0)
		};

		_listeLogoPlanete pushBack (_listeLogos select _indexLogo);
	} forEach (_planeteDistante select 5);

	private _dhd = (call compile (_planete select 4));

	if ((typeOf _dhd) == "SGI_dhd") then {
		_porte setVariable ["isOpen", [true, nil, false, nil, false], true];

		private _tabSons = ["dhd1", "dhd2", "dhd3", "dhd4", "dhd5", "dhd6"];

		{
			private _son = selectRandom _tabSons;

			[_dhd, [(_x select 3), "a3\data_f\lights\car_headlight.rvmat"]] remoteExec ["setObjectMaterial", 0];
			[_dhd, [_son, 30]] remoteExec ["say3D", 0];
			
			sleep 0.8;
		} forEach _listeLogoPlanete;

		sleep 0.5;

		[_dhd, ["dhd_central_bouton", 30]] remoteExec ["say3D", 0];
		[_dhd, ["anim_aquila", 1]] remoteExec ["animate", 0];
		[_dhd, [12, "a3\data_f\lights\car_headlight.rvmat"]] remoteExec ["setObjectMaterial", 0];

		sleep 0.5;

		[_dhd, ["anim_aquila", 0]] remoteExec ["animate", 0];

		sleep 0.5;

		[_dhd, [12, "\SGI_DHD\Rvmat\sgi_dhd.rvmat"]] remoteExec ["setObjectMaterial", 0];
	};
};

sleep 0.5;

_this call _code;





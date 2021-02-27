
// params -> [id, text, code, condition, param]
private _addActions = 
{
	private _id = param [0];
	private _text = param [1, ""];
	private _code = param [2, {hint localize "STR_erreur";}];
	private _condition = param [3, "true"];
	private _param = param [4, []];

	private _id_shop = _id addAction [_text, _code, _param, 1.5, true, true, "", _condition, 10];
};

{
	private _planete = _x;
	private _dhd = (call compile (_x select 4));
	private _porte = (call compile (_x select 3));

	if (((typeOf _porte) == "SGI_gate") or ((typeOf _porte) == "SGI_porte_des_etoiles_iris")) then {
		[_dhd, (localize "STR_close_iris"), {
			[((_this select 3) select 0)] spawn mission_fnc_iris;
		}, format ["((%1 animationPhase 'anim_iris1') == 0) and (alive _this)", _porte], [_porte]] call _addActions;

		[_dhd, (localize "STR_open_iris"), {
			[((_this select 3) select 0)] spawn mission_fnc_iris;
		}, format ["((%1 animationPhase 'anim_iris1') == 1) and (alive _this)", _porte], [_porte]] call _addActions;
	};

	[_dhd, (localize "STR_close_stargate"), {
		[((_this select 3) select 0)] call mission_fnc_stargate_bis;
	}, format ["((%1 getVariable ['isOpen', [false, nil, false, false, false]]) select 0) and (alive _this) and ((%2 getVariable ['isOpen', [false, nil, false, false, false]]) select 4)", _porte, _porte], [_porte]] call _addActions;

	{
		private _porteDistante = (call compile (_x select 3));

		if ((_x select 0) != (_planete select 0)) then {
			[_dhd, (format [(localize "STR_open_stargate_to"), (_x select 1)]), {
				[((_this select 3) select 0),((_this select 3) select 1)] call mission_fnc_stargate_bis;
			}, format ["!((%1 getVariable ['isOpen', [false, nil, false, false, false]]) select 0) and !((%1 getVariable ['isOpen', [false, nil, false, false, false]]) select 3) and (alive _this) and ([%2] call mission_fnc_has_planetes)", _porte, (_x select 0)], [_porte, _porteDistante]] call _addActions;
		};
	} forEach (getArray (missionConfigFile >> "docs_planetes" >> "planetes" >> "liste"));

	[_porte] spawn mission_fnc_detectionTransport;

	if (((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 0) and ((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 4)) then {
		//["videos\horison_events.ogv", [10, 10], [1,1,1,1], "skipPorteVar", [0,0,0,0], false] spawn BIS_fnc_playVideo;
		
		[_porte] call mission_fnc_createLight;
		[_porte, true] call mission_fnc_light;

		if ((typeOf _porte) == "SGI_gate") then {
			_porte setObjectTexture [18, "videos\horison_events.ogv"];
		} else {
			_porte setObjectTexture [9, "videos\horison_events.ogv"];
		};

		private _porteDistante = ((_porte getVariable ['isOpen', [false, nil, false, false, false]]) select 1);

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
				{
					[_dhd, [(_x select 3), "a3\data_f\lights\car_headlight.rvmat"]] remoteExec ["setObjectMaterial", 0];
				} forEach _listeLogoPlanete;
			};
		};
	};
} forEach (getArray (missionConfigFile >> "docs_planetes" >> "planetes" >> "liste"));

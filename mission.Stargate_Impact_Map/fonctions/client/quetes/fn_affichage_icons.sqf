
addMissionEventHandler ["Draw3D", 
{
	// params : [id pnj, logo]
	private _fn_add_icon =
	{
		private _id = param [0];
		private _image_bis = param [1];

		private _pos = getPosATL _id;
		private _posSaoul = getPosASL _id;
		private _posBis = [_pos select 0, _pos select 1, (_pos select 2) + 2.3];
		private _posTers = [_posSaoul select 0, _posSaoul select 1, (_posSaoul select 2) + 2.3];

		private _distance = ((eyePos player) distance2D _pos);

		private _image = (getMissionPath _image_bis);

		private _visibilite = [player, "VIEW", (vehicle player)] checkVisibility [(eyePos player), _posTers];

		//drawIcon3D [_image, [1,1,1,1], _posBis, (25 / _distance), (25 / _distance), 1, "", 1, 1, "PuristaMedium", "right", false];		

		if ((_visibilite > 0.7) and (_distance < 1500)) then 
		{
			drawIcon3D [_image, [1,1,1,1], _posBis, (25 / _distance), (25 / _distance), 1, "", 1, 1, "PuristaMedium", "right", false];	
		};
	};

	private _config_quetes = [] call mission_fnc_get_config_quetes;

	{	
		if (!([(_x select 0)] call mission_fnc_has_quetes_faites)) then {
			switch (_x select 6) do {
				case 1: { // quête type 1
					if (((_x select 8) call mission_fnc_has_quetes_faites) and ((['level'] call mission_fnc_getBDD) >= (_x select 9)) and (!([(_x select 0)] call mission_fnc_has_quetes_actives)) and (!([(_x select 0)] call mission_fnc_has_quetes_faites))) then {
						[(call compile (_x select 1)), "pictures\icon_quete\icon_quete_exclamation_violet.paa"] call _fn_add_icon;
					} else {
						if ([(_x select 0)] call mission_fnc_has_quetes_actives) then {
							if ((missionNamespace getVariable [format ["quete_%1_type_1_player_%2", (_x select 0), (getPlayerUID player)], 0]) == (count (_x select 7))) then {
								[(call compile (_x select 1)), "pictures\icon_quete\icon_quete_interrogation_violet.paa"] call _fn_add_icon;
							} else {
								private _tab = _x;

								{
									if ((missionNamespace getVariable [format ["quete_%1_type_1_player_%2", (_tab select 0), (getPlayerUID player)], 0]) == _forEachIndex) then {
										[(call compile (_x select 1)), "pictures\icon_quete\icon_quete_interrogation_violet.paa"] call _fn_add_icon;
									};
								} forEach (_x select 7);
							};	
						};
					};
				};
				case 2: { // quête type 2
					if (((_x select 8) call mission_fnc_has_quetes_faites) and ((['level'] call mission_fnc_getBDD) >= (_x select 9)) and (!([(_x select 0)] call mission_fnc_has_quetes_actives)) and (!([(_x select 0)] call mission_fnc_has_quetes_faites))) then {
						[(call compile (_x select 1)), "pictures\icon_quete\icon_quete_exclamation_violet.paa"] call _fn_add_icon;
					} else {
						if ([(_x select 0)] call mission_fnc_has_quetes_actives) then {
							[(call compile (_x select 1)), "pictures\icon_quete\icon_quete_interrogation_violet.paa"] call _fn_add_icon;
						};
					};
				};
				case 3: { // quête type 3
					if (((_x select 8) call mission_fnc_has_quetes_faites) and ((['level'] call mission_fnc_getBDD) >= (_x select 9)) and (!([(_x select 0)] call mission_fnc_has_quetes_actives)) and (!([(_x select 0)] call mission_fnc_has_quetes_faites))) then {
						[(call compile (_x select 1)), "pictures\icon_quete\icon_quete_exclamation_violet.paa"] call _fn_add_icon;
					} else {
						if (([(_x select 0)] call mission_fnc_has_quetes_actives) and (missionNamespace getVariable [format ["quete_%1_type_3_player_%2", (_x select 0), (getPlayerUID player)], false])) then {
							[(call compile (_x select 1)), "pictures\icon_quete\icon_quete_interrogation_violet.paa"] call _fn_add_icon;
						};
					};
				};
				case 4: { // quête type 4
					if (((_x select 8) call mission_fnc_has_quetes_faites) and ((['level'] call mission_fnc_getBDD) >= (_x select 9)) and (!([(_x select 0)] call mission_fnc_has_quetes_actives)) and (!([(_x select 0)] call mission_fnc_has_quetes_faites))) then {
						[(call compile (_x select 1)), "pictures\icon_quete\icon_quete_exclamation_violet.paa"] call _fn_add_icon;
					} else {
						if ([(_x select 0)] call mission_fnc_has_quetes_actives) then {
							[(call compile (_x select 1)), "pictures\icon_quete\icon_quete_interrogation_violet.paa"] call _fn_add_icon;
							[(call compile ((_x select 7) select 3)), "pictures\icon_quete\icon_quete_interrogation_violet.paa"] call _fn_add_icon;
						};
					};
				};
			};	
		};
	} forEach _config_quetes;

	{
		if (ISINVISIBLE) then {
			if (_x != player) then {
				private _pos_player = _x modelToWorld(_x selectionPosition "head");

				drawIcon3D ["iconMan", [1,1,1,1],[_pos_player select 0, _pos_player select 1, (_pos_player select 2)], 1, 1, 0, name _x, 1, 0.04, "PuristaMedium"];
			};
		} else {
			if ((_x != player) and ((getPlayerUID _x) in ([] call mission_fnc_get_team)) and !(isObjectHidden _x) and ((player distance _x) < 100)) then {
				private _pos_player = _x modelToWorld(_x selectionPosition "head");

				drawIcon3D ["iconMan", [1,1,1,1],[_pos_player select 0, _pos_player select 1, (_pos_player select 2) + 0.4], 1, 1, 0, name _x, 1, 0.04, "PuristaMedium"];
			};
		};
	} forEach allPlayers;
}];

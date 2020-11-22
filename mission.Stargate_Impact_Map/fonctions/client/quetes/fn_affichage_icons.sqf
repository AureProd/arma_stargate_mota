
addMissionEventHandler ["Draw3D", 
{
	// params : [id pnj, logo]
	private _fn_add_icon =
	{
		private _id = param [0];
		private _image_bis = param [1];

		private _pos = getPosATL _id;
		private _posBis = [_pos select 0, _pos select 1, (_pos select 2) + 2.2];

		private _distance = ((eyePos player) distance2D _pos);

		private _image = (getMissionPath _image_bis);

		private _visibilite = [player, "VIEW", (vehicle player)] checkVisibility [(eyePos player), _pos];

		//drawIcon3D [_image, [1,1,1,1], _posBis, (25 / _distance), (25 / _distance), 1, "", 1, 1, "PuristaMedium", "right", false];		

		if ((_visibilite > 0.7) and (_distance < 1500)) then 
		{
			drawIcon3D [_image, [1,1,1,1], _posBis, (25 / _distance), (25 / _distance), 1, "", 1, 1, "PuristaMedium", "right", false];	
		};
	};

	private _config_quetes = [] call mission_fnc_get_config_quetes;

	{	
		switch (_x select 1) do {
			case 1: { 
				if (!([(_x select 0)] call mission_fnc_has_quetes_faites)) then {
					if ([(_x select 0)] call mission_fnc_has_quetes_dispo) then {
						[(call compile (_x select 2)), "pictures\icon_quete\icon_quete_exclamation_jaune.paa"] call _fn_add_icon;
					} else {
						if ([(_x select 0)] call mission_fnc_has_quetes_actives) then {
							[(call compile (_x select 8)), "pictures\icon_quete\icon_quete_exclamation_violet.paa"] call _fn_add_icon;
						} else {
							[(call compile (_x select 2)), "pictures\icon_quete\icon_quete_exclamation_bleu.paa"] call _fn_add_icon;
						};
					};
				};
			};
		};	
	} forEach _config_quetes;
}];

/* {
	if ((_x select 0) in (_pnj_quete select 1)) then 
	{
		if ((_x select 0) in (_playerBdd select 11)) then 
		{
			if ((_x select 5) == 0) then 
			{
				_nb_quetes_primaires = _nb_quetes_primaires + 1;
			} 
			else 
			{
				_nb_quetes_secondaires = _nb_quetes_secondaires + 1;
			};
		}
		else
		{
			if ((!((_x select 0) in (_playerBdd select 10))) and (!((_x select 0) in (_playerBdd select 13)))) then
			{
				_nb_quetes_non_dispo = _nb_quetes_non_dispo + 1;
			};
		};
	};
} forEach _config_quetes;

if (_nb_quetes_primaires >= 1) then 
{
	[(call compile (_pnj_quete select 0)), "pictures\icon_quete\icon_quete_exclamation_jaune.paa"] call _fn_add_icon;
} 
else 
{
	if (_nb_quetes_secondaires >= 1) then 
	{
		[(call compile (_pnj_quete select 0)), "pictures\icon_quete\icon_quete_exclamation_violet.paa"] call _fn_add_icon;
	} 
	else 
	{
		if (_nb_quetes_non_dispo >= 1) then 
		{
			[(call compile (_pnj_quete select 0)), "pictures\icon_quete\icon_quete_exclamation_bleu.paa"] call _fn_add_icon;
		};
	};
}; */
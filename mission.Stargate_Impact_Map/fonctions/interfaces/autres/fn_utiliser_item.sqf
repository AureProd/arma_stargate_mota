
// tableau d'un objet de liste objet
private _objet = param [0];

// index dans inventaire du player
private _indexInventaire = param [1];

private _isMenuMedical = param [2, false];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, garage, vehicules player]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _inventaireVirtuel = _playerBdd select 8;

private _faim = _playerBdd select 6;
private _soif = _playerBdd select 7;

private _bool_fin = true;

switch (_objet select 4) do 
{
	case 1: // nourriture
	{ 
		if ((_objet select 0) == 4) then 
		{
			// objet RATION --> id / count / pourcentage utilistations
			private _objetRation = (_inventaireVirtuel select _indexInventaire);

			if ((_objetRation select 2) == 25) then 
			{
				if (_faim + (_objet select 9) < 100) then {
					_faim = _faim + (_objet select 9);
				} else {
					_faim = 100;
				}; 

				_objetRation set [2, 0];

				hint localize "STR_ration_vide";

				_inventaireVirtuel set [_indexInventaire, _objetRation];
				[[8, _inventaireVirtuel]] call mission_fnc_modif_var_bdd;

				[(_objet select 0), false, _indexInventaire] call mission_fnc_supprime_item;
			}
			else 
			{
				if (_faim + (_objet select 9) < 100) then {
					_faim = _faim + (_objet select 9);
				} else {
					_faim = 100;
				}; 

				private _newPourcentage = (_objetRation select 2) - 25;
				_objetRation set [2, _newPourcentage];

				_supprimeOK = false;

				_inventaireVirtuel set [_indexInventaire, _objetRation];
				[[8, _inventaireVirtuel]] call mission_fnc_modif_var_bdd;
			};
		} 
		else 
		{
			if (_faim + (_objet select 9) < 100) then {
				_faim = _faim + (_objet select 9);
			} else {
				_faim = 100;
			};  
		};
	};
	case 2: // boisson
	{ 
		if (_soif + (_objet select 9) < 100) then {
			_soif = _soif + (_objet select 9);
		} else {
			_soif = 100;
		}; 
	};
	case 3: // soin
	{ 
		if (_isMenuMedical) then 
		{
			[(_objet select 0)] call mission_fnc_supprime_item;
		}
		else
		{
			hint localize "STR_item_only_medical";
		};
	};
	case 4: // medicament
	{ 
		if (_isMenuMedical) then 
		{
			[(_objet select 0)] call mission_fnc_supprime_item;
		}
		else
		{
			hint localize "STR_item_only_medical";
		};
	};
	case 5: // syteme gourde
	{
		if ((_objet select 0) == 2) then 
		{
			// objet GOURDE --> id / count / eau est propre / pourcentage utilistations
			private _objetGourde = (_inventaireVirtuel select _indexInventaire);
			
			if (_objetGourde select 2) then 
			{
				if ((_objetGourde select 3) == 25) then 
				{
					if (_soif + (_objet select 9) < 100) then {
						_soif = _soif + (_objet select 9);
					} else {
						if (_soif + (_objet select 9) > 100) then {
							_soif = 100;
							
							private _variablesPlayer = missionNamespace getVariable nomVarPlayerUID;
							private _vie = _variablesPlayer select 5;

							private _liste_vies = _variablesPlayer select 9;

							private _liste_vies_bis = _liste_vies select 1;
							_liste_vies_bis = _liste_vies_bis - 30;
							_liste_vies set [1, _liste_vies_bis];

							_vie = _vie - 30;

							//player setDamage (1 - (_vie / 100));
							[_vie] call mission_fnc_set_damage_player;

							[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;

							hint localize "STR_boire_sans_soif";
						} else {
							_soif = 100;
						};
					}; 

					_objetGourde set [2, false];
					_objetGourde set [3, 0];

					hint localize "STR_gourde_vide";
				}
				else 
				{
					if (_soif + (_objet select 9) < 100) then {
						_soif = _soif + (_objet select 9);
					} else {
						if (_soif + (_objet select 9) > 100) then {
							_soif = 100;
							
							private _variablesPlayer = missionNamespace getVariable nomVarPlayerUID;
							private _vie = _variablesPlayer select 5;

							private _liste_vies = _variablesPlayer select 9;

							private _liste_vies_bis = _liste_vies select 1;
							_liste_vies_bis = _liste_vies_bis - 30;
							_liste_vies set [1, _liste_vies_bis];

							_vie = _vie - 30;

							[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;

							//player setDamage (1 - (_vie / 100));
							[_vie] call mission_fnc_set_damage_player;

							hint localize "STR_boire_sans_soif";
						} else {
							_soif = 100;
						};
					};  
					
					private _newPourcentage = (_objetGourde select 3) - 25;
					_objetGourde set [3, _newPourcentage];
				};
			}
			else 
			{
				if ((_objetGourde select 3) == 0) then 
				{
					private _distance_recharge_gourde = 2;

					_fonction_bis_OK = surfaceIsWater [(player getPos [_distance_recharge_gourde, direction player]) select 0, (player getPos [_distance_recharge_gourde, direction player]) select 1];

					if (_fonction_bis_OK) then 
					{
						[_objetGourde] spawn {
							[] call mission_fnc_chargement;

							hint localize "STR_gourde_pleine_eau_sale";

							private _objetGourde = param [0];

							_objetGourde set [3, 100];

							private _gainXP = getNumber(missionConfigFile >> "stargate_xp" >> "ajout_xp" >> "gourde_remplissage");

							[_gainXP] call mission_fnc_add_xp;
						};
					}
					else
					{
						hint localize "STR_pieds_dans_eau";
					};
				}
				else
				{
					hint localize "STR_boire_eau_sale";

					if (_soif + 10 < 100) then {
						_soif = _soif + 10;
					} else {
						_soif = 100;
					}; 

					_objetGourde set [2, false];
					_objetGourde set [3, 0];

					private _variablesPlayer = missionNamespace getVariable nomVarPlayerUID;
					private _vie = _variablesPlayer select 5;

					private _liste_vies = _variablesPlayer select 9;

					private _liste_vies_bis = _liste_vies select 1;
					_liste_vies_bis = _liste_vies_bis - 40;
					_liste_vies set [1, _liste_vies_bis];

					_vie = _vie - 40;

					[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;

					//player setDamage (1 - (_vie / 100));
					[_vie] call mission_fnc_set_damage_player;
				};
			};

			_inventaireVirtuel set [_indexInventaire, _objetGourde];

			[[8, _inventaireVirtuel]] call mission_fnc_modif_var_bdd;
		} 
		else 
		{
			// objet GOURDE --> id / count / eau est propre / pourcentage utilistations
			private _objetGourde = nil;
			private _indexObjet = nil;

			{
				if ((_x select 0) == 2) then 
				{
					if ((!(_x select 2)) and ((_x select 3) == 100)) then 
					{
						_indexObjet = _forEachIndex;
						_objetGourde = _x;
					};
				};
			} forEach _inventaireVirtuel;

			if ((isNil "_objetGourde") and (isNil "_indexObjet")) then 
			{
				hint localize "STR_pas_gourde_a_purifier";
			} 
			else 
			{
				_objetGourde set [2, true];
				_objetGourde set [3, 100];

				_inventaireVirtuel set [_indexObjet, _objetGourde];

				[[8, _inventaireVirtuel]] call mission_fnc_modif_var_bdd;

				[(_objet select 0)] call mission_fnc_supprime_item;

				private _gainXP = getNumber(missionConfigFile >> "stargate_xp" >> "ajout_xp" >> "gourde_purification");

				[_gainXP] call mission_fnc_add_xp;
			};
		};
	};
	case 6: // fruit et legume (raisin)
	{
		if (_soif + (_objet select 9) < 100) then {
			_soif = _soif + (_objet select 9);
		} else {
			_soif = 100;
		}; 

		if (_faim + (_objet select 9) < 100) then {
			_faim = _faim + (_objet select 9);
		} else {
			_faim = 100;
		};
	};
	case 9: // viande cuite
	{ 
		if (_faim + (_objet select 9) < 100) then {
			_faim = _faim + (_objet select 9);
		} else {
			_faim = 100;
		}; 
	};
	case 11: // poisson cuit
	{ 
		if (_faim + (_objet select 9) < 100) then {
			_faim = _faim + (_objet select 9);
		} else {
			_faim = 100;
		}; 
	};
	case 13: // kassa pure
	{ 
		private _hndl = ppEffectCreate ["ColorInversion", 2500];  
		_hndl ppEffectEnable true;  
		_hndl ppEffectAdjust [0.5, 0.5, 0.5]; 
		_hndl ppEffectCommit 10;

		private _hndl2 = ppEffectCreate ["ChromAberration", 205];  
		_hndl2 ppEffectEnable true; 
		_hndl2 ppEffectAdjust [0.75, 0.75, true]; 
		_hndl2 ppEffectCommit 10;

		[_hndl, _hndl2] spawn {
			sleep 30;

			private _hndl = param [0];
			private _hndl2 = param [1];

			_hndl ppEffectEnable false;
			_hndl2 ppEffectEnable false;
			ppEffectDestroy _hndl;
			ppEffectDestroy _hndl2;
		};
	};
	default {
		_bool_fin = false;
	};
};

if (_bool_fin) then {
	if (((_objet select 0) != 4) and ((_objet select 4) != 3) and ((_objet select 4) != 4) and ((_objet select 4) != 5)) then 
	{
		[(_objet select 0)] call mission_fnc_supprime_item;
	};

	[[6, _faim], [7, _soif]] call mission_fnc_modif_var_bdd;
};


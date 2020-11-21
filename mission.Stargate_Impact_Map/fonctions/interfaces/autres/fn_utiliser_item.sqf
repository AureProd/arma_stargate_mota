
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

				hint "Votre ration est vide maintenant";

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
			hint "Pour utiliser cet item, allez dans le menu medical";
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
			hint "Pour utiliser cet item, allez dans le menu medical";
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

							player setDamage (1 - (_vie / 100));

							[[5, _vie], [9, _liste_vies]] call mission_fnc_modif_var_bdd;

							hint "Vous n'aviez pas soif, il fallait pas boire";
						} else {
							_soif = 100;
						};
					}; 

					_objetGourde set [2, false];
					_objetGourde set [3, 0];

					hint "Votre gourde est vide maintenant";
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

							player setDamage (1 - (_vie / 100));

							hint "Vous n'aviez pas soif, il fallait pas boire";
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
						hint "Votre gourde est pleine d'eau sale maintenant";

						_objetGourde set [3, 100];

						private _gainXP = getNumber(missionConfigFile >> "stargate_xp" >> "ajout_xp" >> "gourde_remplissage");

						[_gainXP] call mission_fnc_add_xp;
					}
					else
					{
						hint "Vous devez être au bord de l'eau, pour remplir votre gourde";
					};
				}
				else
				{
					hint "Votre gourde est pleine d'eau sale, donc vous avez maintenant mal au ventre";

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

					player setDamage (1 - (_vie / 100));
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
				hint "Vous n'avez pas de gourde avec de l'eau à purifier";
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
	case 6: // raisin
	{
		switch ((_objet select 0)) do 
		{
			case 14: 
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
			case 15: 
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
			case 16: 
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


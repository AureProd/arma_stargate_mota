
// faim --> -0.8%/min --> -0.5%/30s
// soif --> -1.2%/min --> -0.7%/30s

private _compteur = 0;

while {true} do 
{
	if (!ISINVINCIBLE) then {
		// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, garage, vehicules player]
		private _variablesPlayer = missionNamespace getVariable nomVarPlayerUID;
		private _vie = _variablesPlayer select 5;
		private _faim = _variablesPlayer select 6;
		private _soif = _variablesPlayer select 7;

		// liste vies : [ % maladie tete, % maladie ventre, % hit tete, % hit ventre, % hit bras droit, % hit bras gauche, % hit jambe droit, % hit jambe gauche ]
		private _liste_vies = _variablesPlayer select 9;

		private _ancienValeurVie = damage player;
		_ancienValeurVie = ((1 - _ancienValeurVie) * 100);

		if (_ancienValeurVie != _vie) then 
		{
			if (_ancienValeurVie < _vie) then 
			{
				private _point_vie = (_vie - _ancienValeurVie);

				private _chiffre_random = (floor (random ((count _liste_vies) - 2)));
				_chiffre_random = _chiffre_random + 2;

				private _nouvelle_vie = (_liste_vies select _chiffre_random);

				if (_nouvelle_vie > _point_vie) then 
				{
					_nouvelle_vie = (_nouvelle_vie - _point_vie);
				} 
				else 
				{
					_nouvelle_vie = 0;
				};

				_liste_vies set [_chiffre_random, _nouvelle_vie];
			};

			_vie = _ancienValeurVie;
		};

		if (_compteur >= 30) then 
		{
			_compteur = 0;

			if ((_faim < 1) and (_soif < 1)) then 
			{
				private _liste_vies_bis = _liste_vies select 1;
				_liste_vies_bis - 20;
				_liste_vies set [1, _liste_vies_bis];

				_vie = _vie - 20;
			}
			else
			{
				if ((_faim > 1)) then 
				{
					_faim = _faim - 0.5;
				}
				else
				{
					private _liste_vies_bis = _liste_vies select 1;
					_liste_vies_bis - 10;
					_liste_vies set [1, _liste_vies_bis];

					_vie = _vie - 10;
				};
				
				if ((_soif > 1)) then 
				{
					_soif = _soif - 0.7;
				}
				else
				{
					private _liste_vies_bis = _liste_vies select 1;
					_liste_vies_bis - 10;
					_liste_vies set [1, _liste_vies_bis];

					_vie = _vie - 10;
				};
			};	
		};

		/* if (((_liste_vies select 0) == 0) or ((_liste_vies select 1) == 0)) then 
		{
			_vie = 0;
		}; */

		//player setDamage (1 - (_vie / 100));
		[_vie] call mission_fnc_set_damage_player;

		[[5, _vie], [6, _faim], [7, _soif], [9, _liste_vies]] call mission_fnc_modif_var_bdd;

		_compteur = _compteur + 1;

		sleep 1;
	};
};

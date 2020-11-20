
waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

1996 cutRsc ["interface_fps", "PLAIN"];

[] spawn {
	while {true} do
	{
		sleep 0.5;
		
		private _display = (uiNamespace getVariable "interface_fps");
		
		private _barBleu = (_display displayCtrl 1001);
		private _barRouge = (_display displayCtrl 1002);

		private _valeurBleu = 0;
		private _valeurRouge = 0;

		{
			if ((_x getVariable "etat_drapeau") == 1) then {
				_valeurBleu = _valeurBleu + 1;
			} else {
				if ((_x getVariable "etat_drapeau") == 2) then {
					_valeurRouge = _valeurRouge + 1;
				}
			};
		} forEach tableau_drapeaux;

		private _pourcentage_par_drapeau = (100 / (count tableau_drapeaux));
		private _valeurBleu = (_valeurBleu * _pourcentage_par_drapeau);
		private _valeurRouge = (_valeurRouge * _pourcentage_par_drapeau);

		_barBleu ctrlSetPosition [(safeZoneX + safeZoneW * 0.3), (safeZoneY + safeZoneH * 0.01444445), (_valeurBleu / 103), (safeZoneH * 0.04111112)];
		_barRouge ctrlSetPosition [(safeZoneX + safeZoneW * (0.7 - (_valeurRouge / 250))), (safeZoneY + safeZoneH * 0.01444445), (_valeurRouge / 103), (safeZoneH * 0.04111112)];

		_barBleu ctrlCommit 0;
		_barRouge ctrlCommit 0;
	};
};
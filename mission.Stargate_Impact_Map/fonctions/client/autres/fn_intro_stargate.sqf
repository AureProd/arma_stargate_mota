
// params --> s'est deja connecte, classe, race, exp, licences, level, vie, faim, soif, inv reel, inv virtuel, position player, liste quetes faites, liste quetes dispo, planete visite, quetes actives, garage

private _isDejaConnecte = param [0];

if (!_isDejaConnecte) then 
{
	private _classe = param [1];
	private _race = param [2];
	private _exp = param [3];
	private _licences = param [4];
	private _level = param [5];
	private _vie = param [6];
	private _faim = param [7];
	private _soif = param [8];
	
	private _inv_reel = param [9];
	private _inv_virtuel = param [10];

	private _quetes_faites = param [12];
	private _quetes_dispo = param [13];
	private _planete_visite = param [14];
	private _quetes_actives = param [15];
	private _garage = param [16];
	private _whiteListeSoldat = param [17];
	private _levelAdmin = param [18];

	LEVELADMIN = _levelAdmin;

	// liste vies : [ % maladie tete, % maladie ventre, % hit tete, % hit ventre, % hit bras droit, % hit bras gauche, % hit jambe droit, % hit jambe gauche ]
	private _liste_vies = [100, 100, 100, 100, 100, 100, 100, 100];

	if (_vie != 100) then 
	{
		_liste_vies set [0, _vie];
	};

	// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives, garage, white liste soldat]
	missionNamespace setVariable 
	[
		nomVarPlayerUID, 
		[_classe, _race, _exp, _licences, _level, _vie, _faim, _soif, _inv_virtuel, _liste_vies, _quetes_faites, _quetes_dispo, _planete_visite, _quetes_actives, _garage, _whiteListeSoldat], 
		true
	];

	player setDamage (1 - (_vie / 100));

	/*	
		classes :
		1 = archeoloque
		2 = scientifique
		3 = soldat 
		races :
		1 = goauld
		2 = tauri	
	*/
	//player setVariable ["classe", _classe, true];
	//player setVariable ["race", _race, true];

	player setUnitLoadout _inv_reel;
}
else
{
	private _levelAdmin = param [1];

	LEVELADMIN = _levelAdmin;

	[] call mission_fnc_reset_bdd;
};

nomVarSkip = format ["skipVideo_%1", getPlayerUID player];

["videos\intro_stargate_impact.ogv", [safeZoneX, safeZoneY, safeZoneW, safeZoneH], [1,1,1,1], nomVarSkip] spawn BIS_fnc_playVideo;

if (!_isDejaConnecte) then 
{
	["bouton_skip"] call mission_fnc_interface_open;
};

private _id_bis = [] spawn
{
	sleep 51;

	missionNamespace setVariable [nomVarSkip, true];
};

waitUntil {missionNamespace getVariable [nomVarSkip, false]};

50000 cutRsc ["blackout", "PLAIN"];

sleep 0.1;

closeDialog 1;
50000 cutText ["", "PLAIN"];

terminate _id_bis;
missionNamespace setVariable [nomVarSkip, false];

if (_isDejaConnecte) then 
{
	[] call mission_fnc_interface_spawn;
}
else
{
	[param [11]] spawn mission_fnc_spawn;
};

waitUntil {!dialog};

[] call mission_fnc_add_fps_mode;

[] spawn mission_fnc_survival;

waituntil {!isnull (finddisplay 46)};

[] call mission_fnc_event_touches;
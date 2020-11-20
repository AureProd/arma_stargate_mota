
uiSleep 0.1;

private _client = param [0]; // <-- player
private _steamUID = getPlayerUID _client;
private _namePlayer = name _client;

diag_log format ["ENVOIE DE REQUETE BDD : %1 .. %2 .. %3", _client, _steamUID, _namePlayer];
if (isNil "_steamUID") exitWith
{
	diag_log format ["Erreur BDD avec %1 (%2)",_client, _namePlayer];
};

private _queryWhiteListe = format["SELECT * FROM whitelist WHERE wl_uid = '%1'",_steamUID];
private _queryResultWhiteListe = [_queryWhiteListe, 2] call db_fnc_asyncCall;

//diag_log format ["VALEUR : %1", _queryResultWhiteListe];

if ((count _queryResultWhiteListe) < 1) then 
{
	[] remoteExec ["mission_fnc_not_whitelist", _client];
	diag_log format ["Le joueur %1 n'est pas white list (UID: %2)", _namePlayer, _steamUID];
}
else
{
	private _query = format["SELECT * FROM player WHERE p_uid = '%1'",_steamUID];
	private _queryResult = [_query, 2] call db_fnc_asyncCall;

	if ((count _queryResult) < 1) then
	{
		diag_log format ["Le joueur %1 est connecte pour la premiere fois (UID: %2)", _namePlayer, _steamUID];
		[true, _queryResultWhiteListe select 3] remoteExec ["mission_fnc_intro_stargate", _client];
	}
	else
	{
		diag_log format ["Le joueur %1 s'est deja connecter (UID: %2)", _namePlayer, _steamUID];

		// nom joueur / classe / race / exp / licences / level / vie / faim / soif / inv reel / inv virtuel / position player / liste quetes faites / liste quetes dispo / planete visite / liste quetes actives / garage / white liste soldat
		//diag_log format ["Le joueur %1 / %2 / %3 / %4 / %5 / %6 / %7 / %8 / %9 / %10 / %11 / %12 / %13 / %14 / %15 / %16", _namePlayer, _queryResult select 3, _queryResult select 4, _queryResult select 5, _queryResult select 6, _queryResult select 7, _queryResult select 8, _queryResult select 9, _queryResult select 10, _queryResult select 11, _queryResult select 12, _queryResult select 13, _queryResult select 14, _queryResult select 15, _queryResult select 16, _queryResult select 17];

		private _licences = _queryResult select 6;
		private _inv_reel = _queryResult select 11;
		private _inv_virtuel = _queryResult select 12;
		
		private _pos_player = _queryResult select 13;
		private _quetes_faites = _queryResult select 14;
		private _quetes_dispo = _queryResult select 15;
		private _planete_visite = _queryResult select 16; // p_planete_visite
		private _quetes_actives = _queryResult select 17;
		private _garage = _queryResult select 18;

		_licences = [_licences] call db_fnc_mresToArray;
		_inv_reel = [_inv_reel] call db_fnc_mresToArray;
		_inv_virtuel = [_inv_virtuel] call db_fnc_mresToArray;

		_pos_player = [_pos_player] call db_fnc_mresToArray;
		_quetes_faites = [_quetes_faites] call db_fnc_mresToArray;
		_quetes_dispo = [_quetes_dispo] call db_fnc_mresToArray;
		_planete_visite = [_planete_visite] call db_fnc_mresToArray;
		_quetes_actives = [_quetes_actives] call db_fnc_mresToArray;
		_garage = [_garage] call db_fnc_mresToArray;

		// params --> s'est deja connecte, classe, race, exp, licences, level, vie, faim, soif, inv reel, inv virtuel, position player, liste quetes faites, liste quetes dispo, planete visite, liste quetes actives, garage, white liste soldat, level admin
		[false, _queryResult select 3, _queryResult select 4, _queryResult select 5,  _licences, _queryResult select 7, _queryResult select 8, _queryResult select 9, _queryResult select 10, _inv_reel, _inv_virtuel, _pos_player, _quetes_faites, _quetes_dispo, _planete_visite, _quetes_actives, _garage, _queryResult select 19, _queryResultWhiteListe select 3] remoteExec ["mission_fnc_intro_stargate", _client];
	};
};

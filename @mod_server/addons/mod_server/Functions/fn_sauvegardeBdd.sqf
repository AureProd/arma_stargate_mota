
// UID player / name player / classes [classe, race] / exp / licences / level / vie / faim / soif / inv reel / inv virtuel / position player / liste quetes faites / liste quetes dispo / liste planetes visités / liste quetes actives / garage / white liste soldat

private _steamUID = param[0];
private _namePlayer = param[1];

private _classes = param[2];
private _exp = param[3];
private _licences = param[4];
private _level = param[5];
private _vie = param[6];
private _faim = param[7];
private _soif = param[8];

private _inv_reel = param[9];
private _inv_virtuel = param[10];

private _pos_player = param[11];
private _quetes_faites = param[12];
private _quetes_dispo = param[13];
private _planete_visite = param[14];
private _quetes_actives = param [15];
private _garage = param [16];
private _whiteListeSoldat = param [17];

_licences = [_licences] call db_fnc_mresArray;
_inv_reel = [_inv_reel] call db_fnc_mresArray;
_inv_virtuel = [_inv_virtuel] call db_fnc_mresArray;

_pos_player = [_pos_player] call db_fnc_mresArray;
_quetes_faites = [_quetes_faites] call db_fnc_mresArray;
_quetes_dispo = [_quetes_dispo] call db_fnc_mresArray;
_planete_visite = [_planete_visite] call db_fnc_mresArray;
_quetes_actives = [_quetes_actives] call db_fnc_mresArray;
_garage = [_garage] call db_fnc_mresArray;

diag_log format ["ENVOIE DE REQUETE BDD : %1 .. %2", _namePlayer, _steamUID];
if (isNil "_steamUID") exitWith
{
	diag_log format ["Erreur BDD avec %1", _namePlayer];
};

private _query = format["SELECT * FROM player WHERE p_uid = '%1'", _steamUID];
private _queryResult = [_query, 2] call db_fnc_asyncCall;

if ((count _queryResult) < 1) then
{
	private _query1 = format ["INSERT INTO player (p_id, p_uid, p_name, p_classe, p_race, p_exp, p_licence, p_level, p_vie, p_faim, p_soif, p_inv_reel, p_inv_virtuel, p_position, p_quetes_faites, p_quetes_dispo, p_planete_visite, p_quetes_actives, p_garage, p_white_liste_soldat) VALUES ('', '%1', '%2', %3, %4, %5, '%6', %7, %8, %9, %10, '%11', '%12', '%13', '%14', '%15', '%16', '%17', '%18', %19)", _steamUID, _namePlayer, _classes select 0, _classes select 1, _exp, _licences, _level, _vie, _faim, _soif, _inv_reel, _inv_virtuel, _pos_player, _quetes_faites, _quetes_dispo, _planete_visite, _quetes_actives, _garage, _whiteListeSoldat];
	[_query1, 1] call db_fnc_asyncCall;
	diag_log format ["Le joueur %1 a ete créé en BDD (UID: %2)", _namePlayer, _steamUID];
};

if ((count _queryResult) > 0) then
{
	private _query2 = format ["UPDATE player SET p_name = '%1', p_classe = %2, p_race = %3, p_exp = %4, p_licence = '%5', p_level = %6, p_vie = %7, p_faim = %8, p_soif = %9, p_inv_reel = '%10', p_inv_virtuel = '%11', p_position = '%12', p_quetes_faites = '%13', p_quetes_dispo = '%14', p_planete_visite = '%15', p_quetes_actives = '%16', p_garage = '%18', p_white_liste_soldat = '%19' WHERE p_uid = '%17'", _namePlayer, _classes select 0, _classes select 1, _exp, _licences, _level, _vie, _faim, _soif, _inv_reel, _inv_virtuel, _pos_player, _quetes_faites, _quetes_dispo, _planete_visite, _quetes_actives, _steamUID, _garage, _whiteListeSoldat];
	[_query2, 1] call db_fnc_asyncCall;

	diag_log format ["Le joueur %1 à été synchronisé en bdd (UID : %2)", _namePlayer, _steamUID];
	// nom joueur / classe / race / exp / licences / level / vie / faim / soif / inv reel / inv virtuel / position player / liste quetes faites / liste quetes dispo / liste planetes visités / liste quetes actives / garage / white liste soldat
	//diag_log format ["Le joueur %1 / %2 / %3 / %4 / %5 / %6 / %7 / %8 / %9 / %10 / %11 / %12 / %13 / %14 / %15 / %16", _namePlayer, _queryResult select 3, _queryResult select 4, _queryResult select 5, _queryResult select 6, _queryResult select 7, _queryResult select 8, _queryResult select 9, _queryResult select 10, _queryResult select 11, _queryResult select 12, _queryResult select 13, _queryResult select 14, _queryResult select 15, _queryResult select 16, _queryResult select 17];
};
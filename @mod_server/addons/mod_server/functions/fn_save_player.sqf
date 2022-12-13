
// get player in parameters
private _player = param[0];

// get player informations from parameters
private _player_uid = getPlayerUID _player;
private _player_name = name _player;

// get player datas from parameters
private _class = param[1];
private _breed = param[2];
private _xp = param[3];
private _licenses = param[4];
private _level = param[5];
private _life = param[6];
private _hunger = param[7];
private _thirst = param[8];
private _real_inventory = param[9];
private _virtual_inventory = param[10];
private _location = param[11];
private _finish_quests = param[12];
private _unlock_planets = param[13];
private _current_quests = param[14];
private _garage = param[15];
private _is_white_list_soldier = param[16];
private _documents = param[17];

// convert array to db string
_licenses = [_licenses] call db_fnc_array_to_string;
_real_inventory = [_real_inventory] call db_fnc_array_to_string;
_virtual_inventory = [_virtual_inventory] call db_fnc_array_to_string;
_location = [_location] call db_fnc_array_to_string;
_finish_quests = [_finish_quests] call db_fnc_array_to_string;
_unlock_planets = [_unlock_planets] call db_fnc_array_to_string;
_current_quests = [_current_quests] call db_fnc_array_to_string;
_garage = [_garage] call db_fnc_array_to_string;
_documents = [_documents] call db_fnc_array_to_string;

// check if player passed in parameter is not null
diag_log format ["Save player informations in database for the player %1 (%2)", _player_name, _player_uid]
if (isNil "_player_uid") exitWith
{
	diag_log format ["Error with %1 (%2)", _player_name, _player_uid];
};

// check if player is already in database
private _player_query = format["SELECT * FROM player WHERE p_uid = '%1'", _player_uid];
private _player_query_result = [_player_query, 2] call db_fnc_bdd_call;

if ((count _queryResult) < 1) then { // player are not in database
	// create player in database
	private _player_insert_query = format [
		"INSERT INTO player (p_uid, p_name, p_class, p_breed, p_xp, p_licenses, p_level, p_life, p_hunger, p_thirst, p_real_inventory, p_virtual_inventory, p_location, p_finish_quests, p_unlock_planets, p_current_quests, p_garage, p_is_white_list_soldier, p_documents) VALUES ('%1', '%2', %3, %4, %5, '%6', %7, %8, %9, %10, '%11', '%12', '%13', '%14', '%15', '%16', '%17', '%18', %19)", 
		_player_uid, 
		_player_name, 
		_class, 
		_breed, 
		_xp, 
		_licenses, 
		_level, 
		_life, 
		_hunger, 
		_thirst, 
		_real_inventory, 
		_virtual_inventory, 
		_location, 
		_finish_quests, 
		_unlock_planets, 
		_current_quests, 
		_garage, 
		_is_white_list_soldier, 
		_documents
	];
	[_player_insert_query, 1] call db_fnc_bdd_call;

	diag_log format ["The player %1 (%2) has been created in database", _player_name, _player_uid];
}
else { // player are already in database
	// update player in database
	private _player_update_query = format [
		"UPDATE player SET p_name = '%2', p_class = %3, p_breed = %4, p_xp = %5, p_licenses = '%6', p_level = %7, p_life = %8, p_hunger = %9, p_thirst = %10, p_real_inventory = '%11', p_virtual_inventory = '%12', p_location = '%13', p_finish_quests = '%14', p_unlock_planets = '%15', p_current_quests = '%16', p_garage = '%17', p_is_white_list_soldier = %18, p_documents = '%19' WHERE p_uid = '%1'", 
		_player_uid,
		_player_name, 
		_class, 
		_breed, 
		_xp, 
		_licenses, 
		_level, 
		_life, 
		_hunger, 
		_thirst, 
		_real_inventory, 
		_virtual_inventory, 
		_location, 
		_finish_quests, 
		_unlock_planets, 
		_current_quests, 
		_garage, 
		_is_white_list_soldier, 
		_documents
	];
	[_player_update_query, 1] call db_fnc_bdd_call;

	diag_log format ["The player %1 (%2) has been updated in database", _player_name, _player_uid];
}

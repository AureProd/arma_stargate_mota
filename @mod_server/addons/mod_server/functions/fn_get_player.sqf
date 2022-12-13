
uiSleep 0.1;

// get player in parameters
private _player = param [0];

// get player informations from parameters
private _player_uid = getPlayerUID _player;
private _player_name = name _player;

// check if player passed in parameter is not null
diag_log format ["Get player informations from database for the player %1 (%2)", _player_name, _player_uid];
if (isNil "_player_uid") exitWith {
	diag_log format ["Error with %1 (%2)", _player_name, _player_uid];
};

// check if player is in white list
private _white_list_query = format["SELECT * FROM whitelist WHERE wl_uid = '%1'", _player_uid];
private _white_list_query_result = [_white_list_query, 2] call db_fnc_bdd_call;

if ((count _white_list_query_result) < 1) then { // player is not in white list
	diag_log format ["The player %1 (%2) is not white list", _player_name, _player_uid];

	// send to player end mission for not white list
	[] remoteExec ["mission_fnc_player_not_white_list", _player];
}
else { // player is in white list
	// get player access level in server from white list db
	private _player_access_level = _white_list_query_result select 3;

	// check if player is connected for the first time
	private _player_query = format["SELECT * FROM player WHERE p_uid = '%1'", _player_uid];
	private _player_query_result = [_player_query, 2] call db_fnc_bdd_call;

	if ((count _player_query_result) < 1) then { // player is connected for the first time
		diag_log format ["The player %1 (%2) is connected for the first time", _player_name, _player_uid];

		// call function for first time connection for create all datas for player
		[_player_access_level] remoteExec ["mission_fnc_player_fisrt_time_start", _player];
	}
	else { // player is already connected
		diag_log format ["The player %1 (%2) has already connected", _player_name, _player_uid];

		// get player datas from db
		private _class = _player_query_result select 3;
		private _breed = _player_query_result select 4;
		private _xp = _player_query_result select 5;
		private _licenses = _player_query_result select 6;
		private _level = _player_query_result select 7;
		private _life = _player_query_result select 8;
		private _hunger = _player_query_result select 9;
		private _thirst = _player_query_result select 10;
		private _real_inventory = _player_query_result select 11;
		private _virtual_inventory = _player_query_result select 12;
		private _location = _player_query_result select 13;
		private _finish_quests = _player_query_result select 14;
		private _unlock_planets = _player_query_result select 15;
		private _current_quests = _player_query_result select 16;
		private _garage = _player_query_result select 17;
		private _is_white_list_soldier = _player_query_result select 18;
		private _documents = _player_query_result select 19;

		// convert db string to array
		_licenses = [_licenses] call db_fnc_string_to_array;
		_real_inventory = [_real_inventory] call db_fnc_string_to_array;
		_virtual_inventory = [_virtual_inventory] call db_fnc_string_to_array;
		_location = [_location] call db_fnc_string_to_array;
		_finish_quests = [_finish_quests] call db_fnc_string_to_array;
		_unlock_planets = [_unlock_planets] call db_fnc_string_to_array;
		_current_quests = [_current_quests] call db_fnc_string_to_array;
		_garage = [_garage] call db_fnc_string_to_array;
		_documents = [_documents] call db_fnc_string_to_array;
		
		private _send_array = [
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

		// send to player all datas for start mission
		[_player_access_level, _send_array] remoteExec ["mission_fnc_player_start", _client];
	}
}


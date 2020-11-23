
private _player = [] call mission_fnc_admin_get_player;

[] remoteExec ["mission_fnc_reset_bdd_distant", _player];
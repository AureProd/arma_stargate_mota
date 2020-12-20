
diag_log "Lancement de la connection a la BDD";
[] remoteExec ["db_fnc_init", 2];

//sleep 2;

[] call mission_fnc_events_server;

[] spawn mission_fnc_kill_cadavre;

[] call mission_fnc_canaux;

//[] call mission_fnc_demarage_fps;

[] spawn mission_fnc_chasse;

//setTimeMultiplier 100;
[[1988, 5, 16, 8, 0]] remoteExec ["setDate"];
//[[1988, 5, 16, 20, 0]] remoteExec ["setDate"];
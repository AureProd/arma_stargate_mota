
// diag_log "Lancement de la connection a la BDD";
// [] remoteExec ["db_fnc_init", 2];

// //sleep 2;

// [] call mission_fnc_events_server;

// [] spawn mission_fnc_kill_cadavre;

// [] call mission_fnc_canaux;

// //[] call mission_fnc_demarage_fps;

// [] spawn mission_fnc_chasse;

// //setTimeMultiplier 100;
// [[1988, 5, 16, 8, 0]] remoteExec ["setDate"];
// // [[1988, 5, 16, 20, 0]] remoteExec ["setDate"];

diag_log "load";

private _door_id = "porte_tauri";
private _door = call compile _door_id;

private _remote_door_id = "porte_qa_al";
private _remote_door = call compile _remote_door_id;

diag_log "function1";

[_door, _remote_door] call sg_fnc_dhd;

diag_log "function2";

[_door, _remote_door] call sg_fnc_create_light;

diag_log "end";
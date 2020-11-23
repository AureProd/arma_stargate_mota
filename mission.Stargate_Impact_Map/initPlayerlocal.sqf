
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives]
nomVarPlayerUID = format ["variable_%1", getPlayerUID player]; // BDD player

LEVELADMIN = 0;
ISINVICIBLE = false;
LOCADMIN = nil;
SPECMODE = false;

[] spawn mission_fnc_boules_caisses;
[] spawn mission_fnc_jump;

[] call mission_fnc_add_action;
[] call mission_fnc_depeucer;
[] call mission_fnc_pecher;
[] call mission_fnc_affichage_icons;
[] call mission_fnc_events;

player addRating -2000;

player enableFatigue false;
player enableStamina false;

menu_y_ok = false;

setViewDistance 1000;
//player allowDamage false;
enableEnvironment [true, false];

[player] remoteExec ["db_fnc_isDejaConnecte", 2];

/* 
	TEST MISSION LOCAL :
	
	parametres pour fonction "mission_fnc_intro_stargate" 
	|--> params --> s'est deja connecte, classe, race, exp, licences, level, vie, faim, soif, inv reel, inv virtuel, position player, liste quetes faites, liste quetes dispo, planete visite, quetes actives, garage, white liste soldat, admin level, documents
	|--> params --> s'est deja connecte, admin level
*/
//[true, 0] call mission_fnc_intro_stargate; // <-- test local nouveaux sur serveur
//[false, 1, 2, 0, [], 1, 100, 100, 100, [[],[],[],["U_C_Man_casual_1_F",[]],[],[],"","",[],["","","ItemRadio","ItemCompass","ItemWatch",""]], [], [38144.555, 3127.349, 0.5], [], [1], [], [], [], 0, 5, []] call mission_fnc_intro_stargate; // <-- test local tauri
//[false, 1, 1, 2500, [], 5, 100, 100, 100, [], [], [38869.605, 38965.328, 0.5], [], [1], [], [], [], 0, 0, []] call mission_fnc_intro_stargate; // <-- test local goauld

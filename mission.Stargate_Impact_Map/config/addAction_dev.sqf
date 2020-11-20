
this addAction ["Récuperer l'objet", {hint "Vous avez trouvez un viel objet !!"; (_this select 0) removeAction (_this select 2); [50] call mission_fnc_add_xp;}, nil, 1.5, true, true, "", "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (1 in ((missionNamespace getVariable nomVarPlayerUID) select 3)) and (alive player)", 5];

this addAction ["Piratez l'ordinateur", {hint "Vous avez piratez cet ordinateur !!"; (_this select 0) removeAction (_this select 2); [50] call mission_fnc_add_xp;}, nil, 1.5, true, true, "", "(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (2 in ((missionNamespace getVariable nomVarPlayerUID) select 3)) and (alive player)", 5];

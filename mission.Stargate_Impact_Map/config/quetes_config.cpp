
class stargate_quetes
{
    /* class quetes_en_plus
    {
        class quete_bienvenue
        {
            message_pnj_office_tourisme = "Voilà votre carte...";
            pnj_office_tourisme = "office_tourisme";
        };
        class quete_cyber_cafe
        {
            prix_acces_pc = 2;
            message_pc_cyber_cafe = "Voici l'adresse pour etre archeologue";
            pc_cyber_cafe = "cyber_cafe_pc";
        };
        class quetes_en_dev
        {
            quete_archeologue = "Vous êtes archéologue partez à la recherche des objets cachés sur la map";
            quete_scientifique = "Vous êtes scientifique recherchez les PC contenants les données secrètes";
        };
    }; */
    class quetes
    {
        archeologue_tauri[] = {
            {
                1, 
                1, 
                "quete_tauri_1", 
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme",
                "Voilà votre carte...",
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
        scientifique_tauri[] = {
            {
                1, 
                1, 
                "quete_tauri_1", 
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme",
                "Voilà votre carte...",
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
        soldat_tauri[] = {
            {
                1, 
                1, 
                "quete_tauri_1", 
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme",
                "Voilà votre carte...",
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
        archeologue_goauld[] = {
            {
                1, 
                1, 
                "quete_tauri_1", 
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme",
                "Voilà votre carte...",
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
        scientifique_goauld[] = {
            {
                1, 
                1, 
                "quete_tauri_1", 
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme",
                "Voilà votre carte...",
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
        soldat_goauld[] = {
            {
                1, 
                1, 
                "quete_tauri_1", 
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme",
                "Voilà votre carte...",
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
    };

    /*
        TYPES :
        |-> 1 
            |-> un pnj A dit d'allez à un pnj B 
            |-> [id, type, id PNJ A, nom quete, description, objectif, gain XP, fonction DB click quete, id PNJ B, message PNJ B, fonction PNJ B, quetes d'apres] 
    */

    /* class id_pnj
    {
        tableau_id_pnj_tauri_archeologue[] = { // { id / { id quete / id quete } } 
            {"quete_tauri_1", {1}}
        };
        tableau_id_pnj_tauri_scientifique[] = { // { id / { id quete / id quete } } 
            {"quete_tauri_1", {1}}
        };
        tableau_id_pnj_tauri_soldat[] = { // { id / { id quete / id quete } } 
            {"quete_tauri_1", {1}}
        };
        tableau_id_pnj_goauld_archeologue[] = {}; // { id / { id quete / id quete } } 
        tableau_id_pnj_goauld_scientifique[] = {}; // { id / { id quete / id quete } } 
        tableau_id_pnj_goauld_soldat[] = {}; // { id / { id quete / id quete } } 
    };
	class quetes
    {
        tableau_quetes_tauri_archeologue[] = { // { id / nom / description / objectif / points XP gagnés / is secondaire (0 si principale / 1 si secondaire) / fonction / fonction deco-reco }
            {
                1,
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                0,
                "[true] call mission_fnc_quete_bienvenue",
                "[true, true] call mission_fnc_quete_bienvenue"
            }
        };
        tableau_quetes_tauri_scientifique[] = { // { id / nom / description / objectif / points XP gagnés / is secondaire (0 si principale / 1 si secondaire) / fonction / fonction deco-reco }
            {
                1,
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                0,
                "[true] call mission_fnc_quete_bienvenue",
                "[true, true] call mission_fnc_quete_bienvenue"
            }
        };
        tableau_quetes_tauri_soldat[] = { // { id / nom / description / objectif / points XP gagnés / is secondaire (0 si principale / 1 si secondaire) / fonction / fonction deco-reco }
            {
                1,
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                0,
                "[true] call mission_fnc_quete_bienvenue",
                "[true, true] call mission_fnc_quete_bienvenue"
            }
        };
        tableau_quetes_goauld_archeologue[] = {
            {
                1,
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                0,
                "[true] call mission_fnc_quete_bienvenue",
                "[true, true] call mission_fnc_quete_bienvenue"
            }
        };
        tableau_quetes_goauld_scientifique[] = {
            {
                1,
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                0,
                "[true] call mission_fnc_quete_bienvenue",
                "[true, true] call mission_fnc_quete_bienvenue"
            }
        };
        tableau_quetes_goauld_soldat[] = {
            {
                1,
                "Bienvenue sur StarGate", 
                "Bonjour, bienvenue sur le serveur Stargate Impact ces un mmorpg avec un mélange de milsim et de life. Pour commencer a jouer allez en ville et trouver l'office du tourisme, il vous donnerons une carte qui vous sera utile pour vous orientez !",
                "Trouvez l'office du tourisme !",
                5,
                0,
                "[true] call mission_fnc_quete_bienvenue",
                "[true, true] call mission_fnc_quete_bienvenue"
            }
        };
    };*/
}; 


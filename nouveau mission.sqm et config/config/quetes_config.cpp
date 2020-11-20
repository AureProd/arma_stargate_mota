
class stargate_quetes
{
    class quetes_en_plus
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
    };
    class id_pnj
    {
        tableau_id_pnj_tauri_archeologue[] = { // { id / { id quete / id quete } } 
            {"quete_tauri_1", {1}},
            {"quete_tauri_2", {2}},
            {"quete_archeologue_2", {3}}
        };
        tableau_id_pnj_tauri_scientifique[] = { // { id / { id quete / id quete } } 
            {"quete_tauri_1", {1}},
            {"quete_tauri_2", {2}},
            {"quete_scientifique_2", {3}}
        };
        tableau_id_pnj_tauri_soldat[] = { // { id / { id quete / id quete } } 
            {"quete_tauri_1", {1}},
            {"quete_tauri_2", {2}},
            {"quete_soldat_2", {3}}
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
            },
            {
                2,
                "Cyber Café", 
                "Bonjour, vous recherchez du travailles, connectez vous à pole emploi, c'est 2 XP la connection !",
                "Voici l'adresse pour etre apprentit archeologue",
                0,
                0,
                "['popup_cyber_cafe'] call mission_fnc_interface_open",
                "[true, true] call mission_fnc_quete_cyber_cafe;"
            },
            {
                3,
                "Recrutement Archeologue", 
                "Bonjour oui je suis bien le profésseur en archéologie, profésseur Brone ! Effectivement je cherche un apprentit, voulez vous devenir archéologue ?",
                "Devenir apprentit archeologue",
                10,
                0,
                "[true] call mission_fnc_quete_specialite",
                ""
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
            },
            {
                2,
                "Cyber Café", 
                "Bonjour, vous recherchez du travailles, connectez vous à pole emploi, c'est 2 XP la connection !",
                "Voici l'adresse pour etre apprentit scientifique",
                0,
                0,
                "['popup_cyber_cafe'] call mission_fnc_interface_open",
                "[true, true] call mission_fnc_quete_cyber_cafe;"
            },
            {
                3,
                "Recrutement scientifique", 
                "Bonjour oui je suis bien profésseur de sciences, profésseur Baris ! Effectivement je cherche un apprentit, voulez vous devenir un scientifique ?",
                "Devenir apprentit scientifique",
                10,
                0,
                "[true] call mission_fnc_quete_specialite",
                ""
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
            },
            {
                2,
                "Cyber Café", 
                "Bonjour, vous recherchez du travailles, connectez vous à pole emploi, c'est 2 XP la connection !",
                "Voici l'adresse pour etre gendarme",
                0,
                0,
                "['popup_cyber_cafe'] call mission_fnc_interface_open",
                "[true, true] call mission_fnc_quete_cyber_cafe;"
            },
            {
                3,
                "Recrutement soldat", 
                "Bonjour, bienvenue a la gendarmerie de colorado springs ! Oui nous recrutont biensur, voulez vous devenir un gendarme ?",
                "Devenir gendarme",
                10,
                0,
                "[true] call mission_fnc_quete_specialite",
                ""
            }
        };
        tableau_quetes_goauld_archeologue[] = {};
        tableau_quetes_goauld_scientifique[] = {};
        tableau_quetes_goauld_soldat[] = {};
    };
};
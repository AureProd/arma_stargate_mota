
class quests
{
    /*
        Quests array : [id, give_quest_PNJ_id, title, description, objective, reward_xp, quest_type, quest_type_options, [required_quests_id, required_quests_id], required_level, [reward_doc_id, reward_doc_id], [reward_planet_id, reward_planet_id]]

        Quest types options :
        |-> 1 (Quest add action round trip) : [[dialogue_addAction, id_to_addAction, text_addAction, loadingON(0/1)], [dialogue_addAction, id_to_addAction, text_addAction, loadingON(0/1)]]
        |-> 2 (Quest bring back a number of items and round trip) : [[[nb_item, id_item], [nb_item, id_item], [nb_item, id_item]]]
        |-> 3 (Quest reconnaissance round trip) : [[[id_waypoint, text], [id_waypoint, text], [id_waypoint, text]], waypoint_distance]
        |-> 4 (Quest addAction with puzzle and round trip) : [text_puzzle or puzzle_image_link, puzzleIsImage(0/1), text_puzzle_answer, id_pnj_puzzle, dialogue_pnj_puzzle]
        |-> 5 (Quest addAction without round trip) : [[dialogue_addAction, id_to_addAction, text_addAction, loadingON(0/1)], [dialogue_addAction, id_to_addAction, text_addAction, loadingON(0/1)]]
        |-> 6 (Quest reconnaissance without round trip) : [[[id_waypoint, text], [id_waypoint, text], [id_waypoint, text]], waypoint_distance]
    */
    
    tauri_archaeologist[] = {
        {1, "quete01_tauri_arch00", "Bienvenue sur Terre", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_tauri00", ""}, {"point02_tauri00",""}, {"point03_tauri00",""}, {"point04_tauri00",""}, {"point05_tauri00",""}, {"point06_tauri00",""}, {"point07_tauri00",""}, {"point08_tauri00",""}, {"point09_tauri00",""}, {"point10_tauri00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {1,2}, {1,82}},
        {2, "quete01_tauri_arch00", "Un ami de plus", "Description a venir", "Suivez les info du guide pour trouver son ami et livrer le paquet !", 50, 1, {{"Vous avez livrez le paquet a l'archéologue ! retournez voir le guide pour le lui dire !", "quete01_tauri_arch01", "parler a l'archeologue", 0}}, {1}, 0, {}, {}},
        {3, "quete01_tauri_arch01", "Compétence", "Description a venir", "Examiner l'artéfact present sur la table de l'achéologue !", 25, 1, {{"Vous examiner cette piece, une piece plutot basique !", "artefact_01", "Examiner l'artéfact", 0}}, {2}, 0, {}, {}},
        {4, "quete01_tauri_arch01", "L'archéologie", "Description a venir", "Examiner les artéfact present dans le jardin de l'achéologue !", 75, 1, {{"Vous examiner cette piece, une piece magnifique !", "artefact_02", "Examiner l'artéfact", 1}, {"Vous examiner cette piece, une piece unique !", "artefact_03", "Examiner l'artéfact", 1}, {"Vous examiner cette piece, une piece tres ancienne !", "artefact_04", "Examiner l'artéfact", 1}, {"Vous examiner la dernierre piece, retournez voir l'archéologue !", "artefact_05", "Examiner l'artéfact", 1}}, {3}, 0, {}, {}},
        {5, "quete01_tauri_arch01", "Un confrere", "rien", "Suivez les instruction fourni par l'archéologue pour livrez l'artéfact", 25, 5, {{"Vous avez livrez l'artéfact a cette homme !", "quete01_tauri_arch02", "Livrer l'artéfact", 0}}, {4}, 0, {}, {}}
    };
    tauri_scientific[] = {
        {1, "quete01_tauri_arch00", "Bienvenue sur Terre", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_tauri00", ""}, {"point02_tauri00",""}, {"point03_tauri00",""}, {"point04_tauri00",""}, {"point05_tauri00",""}, {"point06_tauri00",""}, {"point07_tauri00",""}, {"point08_tauri00",""}, {"point09_tauri00",""}, {"point10_tauri00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}}
    };
    tauri_soldier[] = {
        {1, "quete01_tauri_arch00", "Bienvenue sur Terre", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_tauri00", ""}, {"point02_tauri00",""}, {"point03_tauri00",""}, {"point04_tauri00",""}, {"point05_tauri00",""}, {"point06_tauri00",""}, {"point07_tauri00",""}, {"point08_tauri00",""}, {"point09_tauri00",""}, {"point10_tauri00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}}
    };
    goauld_archaeologist[] = {
        {1, "quete01_goauld_arch00", "Bienvenue sur Qa'al", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_goauld00", ""}, {"point02_goauld00",""}, {"point03_goauld00",""}, {"point04_goauld00",""}, {"point05_goauld00",""}, {"point06_goauld00",""}, {"point07_goauld00",""}, {"point08_goauld00",""}, {"point09_goauld00",""}, {"point10_goauld00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}}
    };
    goaul_scientificd[] = {
        {1, "quete01_goauld_arch00", "Bienvenue sur Qa'al", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_goauld00", ""}, {"point02_goauld00",""}, {"point03_goauld00",""}, {"point04_goauld00",""}, {"point05_goauld00",""}, {"point06_goauld00",""}, {"point07_goauld00",""}, {"point08_goauld00",""}, {"point09_goauld00",""}, {"point10_goauld00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}}
    };
    goaul_soldierd[] = {
        {1, "quete01_goauld_arch00", "Bienvenue sur Qa'al", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_goauld00", ""}, {"point02_goauld00",""}, {"point03_goauld00",""}, {"point04_goauld00",""}, {"point05_goauld00",""}, {"point06_goauld00",""}, {"point07_goauld00",""}, {"point08_goauld00",""}, {"point09_goauld00",""}, {"point10_goauld00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}}
    };
}; 












class stargate_quetes
{
    /*
        Tableau Quête : [id, id_PNJ_donne_quete, titre, description, objectif, récompence_xp, type_quete, tableau_options_type_quetes, [id_quêtes_prerequis, id_quêtes_prerequis], level_requis, [id_doc_recompense, id_doc_recompense], [id_planete_recompense, id_planete_recompense]]

        Options TYPES Quête :
        |-> 1 (Quête addAction allé-retour) : [[dialogue_addAction, id_to_addAction, text_addAction, chargementON(0/1)], [dialogue_addAction, id_to_addAction, text_addAction, chargementON(0/1)]]
        |-> 2 (Quête ramener un nb d'items et allé-retour) : [[[nb_item, id_item], [nb_item, id_item], [nb_item, id_item]]]
        |-> 3 (Quête reconnaissance allé-retour) : [[[id_point_passage, texte], [id_point_passage, texte], [id_point_passage, texte]], distance_point_passage]
        |-> 4 (Quête addAction avec énigme et allé-retour) : [texte_enigme/lien_enigme_image, enigmeIsImage(0/1), texte_réponse_enigme, id_pnj_enigme, dialogue_pnj_enigme]
        |-> 5 (Quête addAction sans allé-retour) : [[dialogue_addAction, id_to_addAction, text_addAction, chargementON(0/1)], [dialogue_addAction, id_to_addAction, text_addAction, chargementON(0/1)]]
        |-> 6 (Quête reconnaissance sans allé-retour) : [[[id_point_passage, texte], [id_point_passage, texte], [id_point_passage, texte]], distance_point_passage]
    */
    class quetes
    {
        archeologue_tauri[] = {
            {1, "quete01_tauri_arch00", "Bienvenue sur Terre", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_tauri00", ""}, {"point02_tauri00",""}, {"point03_tauri00",""}, {"point04_tauri00",""}, {"point05_tauri00",""}, {"point06_tauri00",""}, {"point07_tauri00",""}, {"point08_tauri00",""}, {"point09_tauri00",""}, {"point10_tauri00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}},
			{2, "quete01_tauri_arch00", "Un ami de plus", "Description a venir", "Suivez les info du guide pour trouver son ami et livrer le paquet !", 50, 1, {{"Vous avez livrez le paquet a l'archéologue ! retournez voir le guide pour le lui dire !", "quete01_tauri_arch01", "parler a l'archeologue", 0}}, {1}, 0, {}, {}},
			{3, "quete01_tauri_arch01", "Compétence", "Description a venir", "Examiner l'artéfact present sur la table de l'achéologue !", 25, 1, {{"Vous examiner cette piece, une piece plutot basique !", "artefact_01", "Examiner l'artéfact", 0}}, {2}, 0, {}, {}},
			{4, "quete01_tauri_arch01", "L'archéologie", "Description a venir", "Examiner les artéfact present dans le jardin de l'achéologue !", 75, 1, {{"Vous examiner cette piece, une piece magnifique !", "artefact_02", "Examiner l'artéfact", 1}, {"Vous examiner cette piece, une piece unique !", "artefact_03", "Examiner l'artéfact", 1}, {"Vous examiner cette piece, une piece tres ancienne !", "artefact_04", "Examiner l'artéfact", 1}, {"Vous examiner la dernierre piece, retournez voir l'archéologue !", "artefact_05", "Examiner l'artéfact", 1}}, {3}, 0, {}, {}},
			{5, "quete01_tauri_arch01", "Un confrere", "rien", "Suivez les instruction fourni par l'archéologue pour livrez l'artéfact", 25, 5, {{"Vous avez livrez l'artéfact a cette homme !", "quete01_tauri_arch02", "Livrer l'artéfact", 0}}, {4}, 0, {}, {}}
        };
        scientifique_tauri[] = {
            {1, "quete01_tauri_arch00", "Bienvenue sur Terre", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_tauri00", ""}, {"point02_tauri00",""}, {"point03_tauri00",""}, {"point04_tauri00",""}, {"point05_tauri00",""}, {"point06_tauri00",""}, {"point07_tauri00",""}, {"point08_tauri00",""}, {"point09_tauri00",""}, {"point10_tauri00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}}
        };
        soldat_tauri[] = {
            {1, "quete01_tauri_arch00", "Bienvenue sur Terre", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_tauri00", ""}, {"point02_tauri00",""}, {"point03_tauri00",""}, {"point04_tauri00",""}, {"point05_tauri00",""}, {"point06_tauri00",""}, {"point07_tauri00",""}, {"point08_tauri00",""}, {"point09_tauri00",""}, {"point10_tauri00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}}
        };
        archeologue_goauld[] = {
            {1, "quete01_goauld_arch00", "Bienvenue sur Qa'al", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_goauld00", ""}, {"point02_goauld00",""}, {"point03_goauld00",""}, {"point04_goauld00",""}, {"point05_goauld00",""}, {"point06_goauld00",""}, {"point07_goauld00",""}, {"point08_goauld00",""}, {"point09_goauld00",""}, {"point10_goauld00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}}
        };
        scientifique_goauld[] = {
            {1, "quete01_goauld_arch00", "Bienvenue sur Qa'al", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_goauld00", ""}, {"point02_goauld00",""}, {"point03_goauld00",""}, {"point04_goauld00",""}, {"point05_goauld00",""}, {"point06_goauld00",""}, {"point07_goauld00",""}, {"point08_goauld00",""}, {"point09_goauld00",""}, {"point10_goauld00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}}
        };
        soldat_goauld[] = {
            {1, "quete01_goauld_arch00", "Bienvenue sur Qa'al", "Description a venir", "Veuillez suivre le chemin indiquez par le guide !", 400, 3, {{{"point01_goauld00", ""}, {"point02_goauld00",""}, {"point03_goauld00",""}, {"point04_goauld00",""}, {"point05_goauld00",""}, {"point06_goauld00",""}, {"point07_goauld00",""}, {"point08_goauld00",""}, {"point09_goauld00",""}, {"point10_goauld00","Vous avez fini la visite, retournez voir le guide pour valider cette tache !"}}, 2}, {}, 0, {}, {}}
        };
    };
}; 

/*  
    {1, "poussiere_ancestrale_tauri", "Poussière ancestrale", "rien", "Trouve la relique caché du village et rapporte la moi", 100, 1, {{"Yes, je l'es trouvé cette relique !", "relique_1", "Nettoyer la relique", 0}}, {}, 0, {}, {}},
    {5, "doc_tauri", "Trouvé le document", "rien", "Trouver le document", 100, 1, {{"Yes, je l'es trouvé ce document !", "doc_1", "Recuperer le document", 0}, {"Yes, je l'es trouvé cette relique !", "relique_1", "Nettoyer la relique", 0}}, {}, 0, {1, 2}, {1}},
    {2, "ramene_items_tauri", "Ramene les items", "rien", "Ramener 3 sandwich et 2 couteaux", 100, 2, {{{5, 3}, {30, 2}}}, {}, 0, {}, {}}, 
    {3, "tour_garde_tauri", "Ronde de nuit", "rien", "Suivez les points de passages", 50, 3, {{{"tour_garde_tauri_pts_passage_1", ""}, {"tour_garde_tauri_pts_passage_2", ""}, {"tour_garde_tauri_pts_passage_3", ""}, {"tour_garde_tauri_pts_passage_4", ""}, {"tour_garde_tauri_pts_passage_5", ""}, {"tour_garde_tauri_pts_passage_4", ""}, {"tour_garde_tauri_pts_passage_3", ""}, {"tour_garde_tauri_pts_passage_2", "T'a fini ton tour de garde !"}}, 2}, {}, 0, {}, {}},
    {4, "enigme_calcul_tauri", "Pas de patience, pas de science", "rien", "Résoudre l'enigme et ramener le resultat au PNJ", 100, 4, {"J'ai 27 fusibles qui sécurisent la centrale. Tous sont cassés sauf 9. Allez dire combien il m'en reste.", 0, "18", "enigme_pnj_tauri", ""}, {}, 0, {}, {}},
    {6, "enigme_image_tauri", "Enigme Image", "rien", "Résoudre l'enigme et ramener le resultat au PNJ", 100, 4, {"pictures\planetes\Terre.paa", 1, "coucou", "enigme_image_pnj_tauri", "Decryptez ce document"}, {}, 0, {}, {}} 
	{7, "poussiere_ancestrale_tauri", "Poussière ancestrale", "rien", "Trouve la relique caché du village et rapporte la moi", 100, 5, {{"Yes, je l'es trouvé cette relique !", "relique_1", "Nettoyer la relique", 0}}, {}, 0, {}, {}},
    {8, "tour_garde_tauri", "Ronde de nuit", "rien", "Suivez les points de passages", 50, 6, {{{"tour_garde_tauri_pts_passage_1", ""}, {"tour_garde_tauri_pts_passage_2", ""}, {"tour_garde_tauri_pts_passage_3", ""}, {"tour_garde_tauri_pts_passage_4", ""}, {"tour_garde_tauri_pts_passage_5", ""}, {"tour_garde_tauri_pts_passage_4", ""}, {"tour_garde_tauri_pts_passage_3", ""}, {"tour_garde_tauri_pts_passage_2", "T'a fini ton tour de garde !"}}, 2}, {}, 0, {}, {}}
*/













class stargate_quetes
{
    /*
        Tableau Quête : [id, id_PNJ_donne_quete, titre, description, objectif, récompence_xp, type_quete, tableau_options_type_quetes, [id_quêtes_prerequis, id_quêtes_prerequis], level_requis, [id_doc_recompense, id_doc_recompense], [id_planete_recompense, id_planete_recompense]]

        Options TYPES Quête :
        |-> 1 (Quête addAction allé-retour) : [[dialogue_addAction, id_to_addAction, text_addAction], [dialogue_addAction, id_to_addAction, text_addAction]]
        |-> 2 (Quête ramener un nb d'items) : [[[nb_item, id_item], [nb_item, id_item], [nb_item, id_item]]]
        |-> 3 (Quête reconnaissance) : [[[id_point_passage, texte], [id_point_passage, texte], [id_point_passage, texte]], distance_point_passage]
        |-> 4 (Quête addAction avec énigme et allé-retour) : [texte_enigme/lien_enigme_image, enigmeIsImage(0/1), texte_réponse_enigme, id_pnj_enigme, dialogue_pnj_enigme]
            
    */
    class quetes
    {
        archeologue_tauri[] = {
            {1, "poussiere_ancestrale_tauri", "Poussière ancestrale", "rien", "Trouve la relique caché du village et rapporte la moi", 100, 1, {{"Yes, je l'es trouvé cette relique !", "relique_1", "Nettoyer la relique"}}, {}, 0, {}, {}},
            {5, "doc_tauri", "Trouvé le document", "rien", "Trouver le document", 100, 1, {{"Yes, je l'es trouvé ce document !", "doc_1", "Recuperer le document"}, {"Yes, je l'es trouvé cette relique !", "relique_1", "Nettoyer la relique"}}, {}, 0, {1, 2}, {1}},
            {2, "ramene_items_tauri", "Ramene les items", "rien", "Ramener 3 sandwich et 2 couteaux", 100, 2, {{{5, 3}, {30, 2}}}, {}, 0, {}, {}}, 
            {3, "tour_garde_tauri", "Ronde de nuit", "rien", "Suivez les points de passages", 50, 3, {{{"tour_garde_tauri_pts_passage_1", ""}, {"tour_garde_tauri_pts_passage_2", ""}, {"tour_garde_tauri_pts_passage_3", ""}, {"tour_garde_tauri_pts_passage_4", ""}, {"tour_garde_tauri_pts_passage_5", ""}, {"tour_garde_tauri_pts_passage_4", ""}, {"tour_garde_tauri_pts_passage_3", ""}, {"tour_garde_tauri_pts_passage_2", "T'a fini ton tour de garde !"}}, 2}, {}, 0, {}, {}},
            {4, "enigme_calcul_tauri", "Pas de patience, pas de science", "rien", "Résoudre l'enigme et ramener le resultat au PNJ", 100, 4, {"J'ai 27 fusibles qui sécurisent la centrale. Tous sont cassés sauf 9. Allez dire combien il m'en reste.", 0, "18", "enigme_pnj_tauri", ""}, {}, 0, {}, {}},
            {6, "enigme_image_tauri", "Enigme Image", "rien", "Résoudre l'enigme et ramener le resultat au PNJ", 100, 4, {"pictures\planetes\Terre.paa", 1, "coucou", "enigme_image_pnj_tauri", "Decryptez ce document"}, {}, 0, {}, {}}
        };
        scientifique_tauri[] = {
            
        };
        soldat_tauri[] = {
            
        };
        archeologue_goauld[] = {
            
        };
        scientifique_goauld[] = {
            
        };
        soldat_goauld[] = {
            
        };
    };
}; 














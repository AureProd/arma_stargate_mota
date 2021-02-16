
class stargate_quetes
{
    /*
        Tableau Quête : [id, id_PNJ_donne_quete, titre, description, objectif, récompence_xp, type_quete, tableau_options_type_quetes, [id_quêtes_prerequis, id_quêtes_prerequis], level_requis]

        Options TYPES Quête :
        |-> 1 (Quête addAction allé-retour) : [dialogue_addAction, id_to_addAction, dialogue_retour_PNJ, text_addAction]
        |-> 2 (Quête ramener un nb d'items) : [[[nb_item, id_item], [nb_item, id_item], [nb_item, id_item]]]
        |-> 3 (Quête reconnaissance) : [[[id_point_passage, texte], [id_point_passage, texte], [id_point_passage, texte]], distance_point_passage]
        |-> 4 (Quête addAction avec énigme et allé-retour) : [texte_enigme/lien_enigme_image, enigmeIsImage(0/1), texte_réponse_enigme, id_pnj_enigme]
            
    */
    class quetes
    {
        archeologue_tauri[] = {
            {1, "poussiere_ancestrale_tauri", "Poussière ancestrale", "rien", "Trouve la relique caché du village et rapporte la moi", 100, 1, {"Yes, je l'es trouvé cette relique !", "relique_1", "Nettoyer la relique"}, {}, 0},
            {2, "ramene_items_tauri", "Ramene les items", "rien", "Ramener 3 sandwich et 2 couteaux", 100, 2, {{{5, 3}, {30, 2}}}, {}, 0}, 
            {3, "tour_garde_tauri", "Ronde de nuit", "rien", "Ramener 3 sandwich et 2 couteaux", 50, 3, {{{"tour_garde_tauri_pts_passage_1", ""}, {"tour_garde_tauri_pts_passage_2", ""}, {"tour_garde_tauri_pts_passage_3", ""}, {"tour_garde_tauri_pts_passage_4", ""}, {"tour_garde_tauri_pts_passage_5", ""}, {"tour_garde_tauri_pts_passage_4", ""}, {"tour_garde_tauri_pts_passage_3", ""}, {"tour_garde_tauri_pts_passage_2", "T'a fini ton tour de garde !"}}, 2}, {}, 0}
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














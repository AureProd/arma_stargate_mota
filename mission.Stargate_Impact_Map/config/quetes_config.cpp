
class stargate_quetes
{
    /*
        TYPES :
        |-> 1 
            |-> un pnj A dit d'allez à un pnj B 
            |-> [id, type, id PNJ A, nom quete, description, objectif, gain XP, fonction DB click quete, id PNJ B, message PNJ B, fonction PNJ B, quetes d'apres] 
    */
    class quetes
    {
        archeologue_tauri[] = {
            {
                1, 
                1, 
                "quete_tauri_1", 
                $STR_Quetes_map_titre, 
                $STR_Quetes_map_description,
                $STR_Quetes_map_objectif,
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme",
                $STR_Quetes_map_text_final,
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
        scientifique_tauri[] = {
            {
                1, 
                1, 
                "quete_tauri_1", 
                $STR_Quetes_map_titre, 
                $STR_Quetes_map_description,
                $STR_Quetes_map_objectif,
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme",
                $STR_Quetes_map_text_final,
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
        soldat_tauri[] = {
            {
                1, 
                1, 
                "quete_tauri_1", 
                $STR_Quetes_map_titre, 
                $STR_Quetes_map_description,
                $STR_Quetes_map_objectif,
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme",
                $STR_Quetes_map_text_final,
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
        archeologue_goauld[] = {
            {
                1, 
                1, 
                "quete_goauld_1",
                $STR_Quetes_map_titre, 
                $STR_Quetes_map_description,
                $STR_Quetes_map_objectif,
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme_goauld",
                $STR_Quetes_map_text_final,
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
        scientifique_goauld[] = {
            {
                1, 
                1, 
                "quete_goauld_1",
                $STR_Quetes_map_titre, 
                $STR_Quetes_map_description,
                $STR_Quetes_map_objectif,
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme_goauld",
                $STR_Quetes_map_text_final,
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
        soldat_goauld[] = {
            {
                1, 
                1, 
                "quete_goauld_1",
                $STR_Quetes_map_titre, 
                $STR_Quetes_map_description,
                $STR_Quetes_map_objectif,
                5,
                "[1, 1] call mission_fnc_quete_type_1",
                "office_tourisme_goauld",
                $STR_Quetes_map_text_final,
                "[1, 2] call mission_fnc_quete_type_1",
                2
            }
        };
    };
}; 














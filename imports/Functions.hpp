
class CfgFunctions 
{
    class player
    {
        tag = "player";
        
        class variable_player
        {
            file = "fonctions\client\variable_player";
            class getClasse {};
            class getRace {};
            class getXP {};
            class isTauri {};
            class setClasse {};
            class setRace {};
            class setXP {};
            class getLicences {};
            class getLevel {};
            class getVie {};
            class setVie {};
            class getFaim {};
            class setFaim {};
            class getSoif {};
            class setSoif {};
            class setLevel {};
        };
    };
    class mission 
    {
        tag = "mission";
        
        class journal_quetes
        {
            file = "fonctions\interfaces\journal_quetes";
            class interface_journal_quetes {};
            class liste_quetes_journal_quetes {};
            class double_click_liste_journal_quetes {};
        };
        class journal_quetes_perso
        {
            file = "fonctions\interfaces\journal_quetes_perso";
            class interface_journal_quetes_perso {};
            class liste_quetes_journal_quetes_perso {};
        };
        class client_quetes
        {
            file = "fonctions\client\quetes";
            class affichage_icons {};
            class quete_bienvenue {};
            class quete_specialite {};
            class quete_cyber_cafe {};
            class quetesActives {};
        };
        class interfaces_autres
        {
            file = "fonctions\interfaces\autres";
            class interface_open {};
            class add_item {};
            class calcul_poid {};
            class supprime_item {};
            class quitter_team {};
            class utiliser_item {};
            class to_number {};
            class add_weapon {};
            class add_chargeur {};
            class add_viseur {};
            class paiement {};
            class chargement {};
            class vendre_item {};
            class paiement_vente {};
        };
        class interfaces_armurerie
        {
            file = "fonctions\interfaces\armurerie";
            class armurerie_bouton_armes {};
            class armurerie_bouton_munitions {};
            class armurerie_bouton_viseurs {};
            class interface_armurerie {};
            class armurerie_liste_objets {};
            class armurerie_bouton_acheter {};
        };
        class interfaces_vetement
        {
            file = "fonctions\interfaces\vetement";
            class interface_vetement {};
            class vetement_liste_objets {};
            class vetement_bouton_acheter {};
            class vetement_bouton_tenue {};
            class vetement_bouton_veste {};
            class vetement_bouton_sac {};
            class vetement_bouton_casque {};
            class vetement_bouton_lunette {};
        };
        class interfaces_menu_spawn
        {
            file = "fonctions\interfaces\menu_spawn";
            class interface_spawn {};
            class spawn_bouton_classes {};
            class spawn_bouton_spawn {};
        };
        class interfaces_menuY
        {
            file = "fonctions\interfaces\menuY";
            class interface_y {};
            class actualise_menu_y {};
            class menuY_bouton_utiliser {};
            class menuY_bouton_donner {};
            class menuY_bouton_supprimer {};
            class menuY_liste_objets {};
            class menuY_liste_joueurs {};
        };
        class interfaces_menu_groupe
        {
            file = "fonctions\interfaces\menu_groupe";
            class interface_groupe {};
            class groupe_liste_joueurs {};
            class groupe_bouton_inviter {};
            class groupe_bouton_quitter {};
            class groupe_bouton_rejoindre {};
        };
        class interfaces_marcher_general
        {
            file = "fonctions\interfaces\marchers_general";
            class interface_marcher_general {};
            class marcher_general_liste_objets {};
            class marcher_general_bouton_magasin {};
            class marcher_general_bouton_inventaire {};
            class marcher_general_bouton_acheter {};
        };
        class interfaces_boucherie
        {
            file = "fonctions\interfaces\marchers_boucherie";
            class interface_boucherie {};
            class boucherie_liste_objets {};
            class boucherie_bouton_magasin {};
            class boucherie_bouton_inventaire {};
            class boucherie_bouton_acheter {};
        };
        class interfaces_poissonerie
        {
            file = "fonctions\interfaces\marchers_poissonerie";
            class interface_poissonerie {};
            class poissonerie_liste_objets {};
            class poissonerie_bouton_magasin {};
            class poissonerie_bouton_inventaire {};
            class poissonerie_bouton_acheter {};
        };
        class interfaces_marcher
        {
            file = "fonctions\interfaces\marchers";
            class interface_marcher {};
            class marcher_liste_objets {};
            class marcher_bouton_nourriture {};
            class marcher_bouton_boissons {};
            class marcher_bouton_acheter {};
        };
        class interfaces_pharmacie
        {
            file = "fonctions\interfaces\pharmacie";
            class interface_pharmacie {};
            class pharmacie_liste_objets {};
            class pharmacie_bouton_nourriture {};
            class pharmacie_bouton_boissons {};
            class pharmacie_bouton_acheter {};
        };
        class interfaces_menu_medical
        {
            file = "fonctions\interfaces\menu_medical";
            class interface_medical {};
            class medical_bouton_maladie {};
            class medical_bouton_nourriture {};
            class medical_bouton_blessure {};
            class medical_liste_objets {};
            class change_color_logo {};
            class utiliser_blessure {};
            class utiliser_item_medical {};
        };
        class client_autres
        {
            file = "fonctions\client\autres";
            class event_touches {};
            class add_action {};
            class events {};
            class intro_stargate {};
            class spawn {};
            class boules_caisses {};
            class jump {};
            class depeucer {};
            class pecher {};
            class fonction_kill_animal {};
        };
        class client_bdd
        {
            file = "fonctions\client\bdd";
            class add_xp {};
            class survival {};
            class not_whitelist {};
            class modif_var_bdd {};
            class remove_xp {};
            class syns_data {};
            class reset_bdd {};
            class remove_licence {};
            class add_licence {};
            class has_licence {};
        };
        class serveur
        {
            file = "fonctions\serveur";
            class events_server {};
            class kill_cadavre {};
            class canaux {};
            class chasse {};
        };

        // FPS CTF
        class fonctions_capture_fps
        {
            file = "fonctions\fps\fonctions_capture";
            class capture_drapeau {};
            class change_flag_color {};
            class add_fps_mode {};
            class set_logo_flag {};
            class son_notif {};
            class interface_fps {};
        };
        class autre_fps
        {
            file = "fonctions\fps\autre";
            class respawn_event {};
            class elimination {};
        };
        class serveur_fps
        {
            file = "fonctions\fps\serveur";
            class demarage_fps {};
        };
    };
};


class CfgFunctions 
{
    class mission 
    {
        tag = "mission";
        
        class client_bdd
        {
            file = "fonctions\client\bdd";
            class add_xp {};
            class survival {};
            class not_whitelist {};
            class kick {};
            class modif_var_bdd {};
            class modif_var_bdd_no_update {};
            class remove_xp {};
            class syns_data {};
            class reset_bdd {};
            class remove_licence {};
            class add_licence {};
            class has_licence {};
            class is_tauri {};
            class getBDD {}; 
            class setBDD {};
            class add_quetes_faites {};
            class has_quetes_faites {};
            class get_team {};
            class is_in_team {};
            class is_wl_soldat {};
            class add_quetes_actives {};
            class has_quetes_actives {};
            class remove_quetes_actives {};
            class add_planetes {};
            class has_planetes {};
            class remove_planetes {};
            class add_docs {};
            class has_docs {};
            class remove_docs {};
            class modif_var_bdd_joueurs_distant {};
            class setBDD_distant {};
            class reset_bdd_distant {};
            class is_chef_team {};
            class get_invitations_team {};
            class get_invite_par_team {};
            class remove_invitation {};
            class set_team {};
            class add_team {};
            class delete_team {};
            class create_reset_invitations {};
            class add_invitation {};
            class remove_licence_distant {};
            class add_garage {};
            class is_in_inventory {};
            class has_item {};
            class remove_items {};
        };
        class interface_soldat
        {
            file = "fonctions\interfaces\admin\interface_soldat";
            class interface_soldat {};
            class interface_soldat_liste_joueurs_proches {};
            class interface_soldat_liste_items_illegals {};
            class interface_soldat_bouton_detruire {};
            class interface_soldat_select_licences_item {};
            class interface_soldat_bouton_amende {};
        };
        class interface_chef_soldats
        {
            file = "fonctions\interfaces\admin\interface_chef_soldats";
            class interface_chef_soldats {};
            class interface_chef_soldats_liste_joueurs {};
            class interface_chef_soldats_bouton_wl_soldat {};
        };
        class interface_admin_5
        {
            file = "fonctions\interfaces\admin\interface_admin";
            class admin_invisibilite {};
            class admin_invinsibilite {};
            class interface_admin {};
            class admin_tp_loc {};
            class interface_admin_liste_joueurs {};
            class interface_admin_bouton_wl_soldat {};
            class admin_tuer_joueur {};
            class admin_get_player {};
            class admin_tp_joueur {};
            class admin_ajout_xp {};
            class admin_reset_bdd {};
            class admin_liste_bdd {};
            class admin_bouton_mode_spec {};
            class admin_bouton_tp_to_pos {};
            class admin_liste_licences_planetes {};
        };
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
            class addActionsQuetes {};
            class affichage_icons {};
            class quete_type_1 {};
            class quetesActives {};
            class get_config_quetes {};
            class giveQueteRecompence {};
            class quete_type_2 {};
            class quete_type_3 {};
            class quete_type_4 {};
        };
        class interfaces_docs
        {
            file = "fonctions\interfaces\menu_docs";
            class interface_docs_db_clicks {};
            class interface_docs {};
        };
        class interfaces_planetes
        {
            file = "fonctions\interfaces\menu_planetes";
            class interface_planetes_db_clicks {};
            class interface_planetes {};
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
            class set_damage_player {};
            class get_player_with_uid {};
            class prison {};
            class amende {};
            class popup_ammende {};
            class getPoidInventaire {};
        };
        class interfaces_garage
        {
            file = "fonctions\interfaces\garage";
            class interface_garage {};
            class garage_liste_vehicules {};
            class garage_bouton_location {};
            class garage_bouton_achat {};
            class garage_bouton_louer {};
            class garage_bouton_acheter {};
            class garage_bouton_sortir {};
            class garage_db_click_liste_vehicules {};
        };
        class interfaces_achat_licences
        {
            file = "fonctions\interfaces\menu_achat_licences";
            class interface_licences_db_clicks {};
            class interface_licences {};
            class interface_licences_liste {};
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
            class menuY_open_admin {};
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
        class interfaces_marcher_modulaire
        {
            file = "fonctions\interfaces\marchers_modulaire";
            class interface_marcher_modulaire {};
            class marcher_modulaire_liste_objets {};
            class marcher_modulaire_bouton_magasin {};
            class marcher_modulaire_bouton_inventaire {};
            class marcher_modulaire_bouton_acheter {};
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
        class interfaces_dealer
        {
            file = "fonctions\interfaces\marchers_dealer";
            class interface_dealer {};
            class dealer_liste_objets {};
            class dealer_bouton_magasin {};
            class dealer_bouton_inventaire {};
            class dealer_bouton_acheter {};
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
            class marcher_bouton_magasin {};
            class marcher_bouton_inventaire {};
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
            class disable_vocal {};
            class add_action_recolte {};
            class traitement {};
            class recolte {};
        };
        class serveur
        {
            file = "fonctions\serveur";
            class events_server {};
            class kill_cadavre {};
            class canaux {};
            class chasse {};
        };
        class vehicles
        {
            file = "fonctions\client\vehicle";
            class add_action_vehicle {};
            class ajout_vehicle {};
            class fourriere {};
            class delete_all_vehicles {};
            class repair_vehicules {};
        };

        //STARGATE
        class stargate
        {
            file = "fonctions\stargate";
            class addAction_bis {};
            class iris {};
            class stargate_bis {};
            class kawoosh {};
            class ring {};
            class light {};
            class transport {};
            class detectionTransport {};
            class createLight {};
            class ring_bis {};
            class dhd {};
        };
    };
};


private _tabRecolte = param [0];

recolte_ON = true;

hint (_tabRecolte select 5);

[true] call mission_fnc_chargement;

// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _indexObjet = _liste_objets_config findIf {
	((_x select 0) == (_tabRecolte select 2))
};

private _objet = (_liste_objets_config select _indexObjet);

private _invVirtuelPlayer = ["inventaire virtuel"] call mission_fnc_getBDD;

private _return = [player, (_objet select 5)] call mission_fnc_calcul_poid;

if (_return) then 
{
	[(_objet select 0)] call mission_fnc_add_item;
} else {
	hint localize "STR_recolte_erreur_poid";
};

sleep 1;

recolte_ON = false;


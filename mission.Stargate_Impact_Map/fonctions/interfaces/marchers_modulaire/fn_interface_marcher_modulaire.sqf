
// [items_achetables, items_vendables] call mission_fnc_interface_marcher_modulaire

createDialog "menu_modulaire";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 20000) displayCtrl 20050;

if ((_variable select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_achats\marcher_general\menumagasin_goauld.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_achats\marcher_general\menumagasin.paa";
};

bouton_A_OK = true; // magasin
//isMilitaire = param [0, false];

private _itemsAchetables = param [0];
private _itemsVendables = param [1];

liste_joueurs_groupe = [_itemsAchetables, _itemsVendables];

[] call mission_fnc_marcher_modulaire_bouton_magasin;

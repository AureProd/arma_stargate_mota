
createDialog "menu_poissonerie";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 20000) displayCtrl 20050;

if ((_variable select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_achats\poissonerie\menupoissonnerie_goauld.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_achats\poissonerie\menupoissonnerie.paa";
};

bouton_A_OK = true; // magasin
//isMilitaire = param [0, false];

[] call mission_fnc_poissonerie_bouton_magasin;

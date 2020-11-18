
createDialog "menu_marcher";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 6000) displayCtrl 6008;

if ((_variable select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_achats\menumarcher_goauld.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_achats\menu_marcher.paa";
};

bouton_A_OK = true;
isMilitaire = param [0, false];

[] call mission_fnc_marcher_bouton_nourriture;

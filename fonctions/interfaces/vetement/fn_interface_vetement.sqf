
createDialog "menu_vetement";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 9000) displayCtrl 9014;

if ((_variable select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_achats\menu_vetement.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_achats\menu_vetement.paa";
};

bouton_A_OK_bis = 1;
isMilitaire = param [0, false];

[] call mission_fnc_vetement_bouton_tenue;

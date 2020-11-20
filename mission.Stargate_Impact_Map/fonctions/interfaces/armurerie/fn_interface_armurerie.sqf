
createDialog "menu_armurerie";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 8000) displayCtrl 8010;

if ((_variable select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_achats\menu_armurerie.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_achats\menu_armurerie.paa";
};

bouton_A_OK_bis = 1;

[] call mission_fnc_armurerie_bouton_armes;


createDialog "menu_garage";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 30000) displayCtrl 30010;

if ((_variable select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\garage\menu_garage_goauld.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\garage\menu_garage.paa";
};

bouton_A_OK = true;
pts_spawn = param [0]; // objet pts spawn
isMilitaire = param [1, 0]; // 0 = voiture civil / 1 voiture armée / 2 bateau / 3 voiture gendarme

[] call mission_fnc_garage_bouton_location;

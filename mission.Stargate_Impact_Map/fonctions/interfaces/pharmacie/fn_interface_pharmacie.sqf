
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

if ((_variable select 1) == 1) then 
{
	createDialog "menu_pharmacie_bis";
	waitUntil {dialog};
} 
else 
{
	createDialog "menu_pharmacie";
	waitUntil {dialog};
};

bouton_A_OK = true;
isMilitaire = param [0, false];

[] call mission_fnc_pharmacie_bouton_nourriture;

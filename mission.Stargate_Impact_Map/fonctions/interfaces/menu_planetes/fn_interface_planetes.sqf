
createDialog "menu_planetes";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 60000) displayCtrl 60001;

if ((_variable select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_planetes\menuplanete_goauld.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_planetes\menuplanete.paa";
};

private _liste = (findDisplay 60000) displayCtrl 60002;

{
	if ([(_x select 0), 1] call mission_fnc_has_planetes) then {
		_liste lbAdd (format ["%1", (_x select 1)]);
	};
} forEach (getArray(missionConfigFile >> "docs_planetes" >> "planetes" >> "liste"));


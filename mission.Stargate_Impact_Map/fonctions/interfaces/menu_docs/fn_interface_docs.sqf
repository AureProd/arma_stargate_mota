
createDialog "menu_docs";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 5000) displayCtrl 5005;

if ((_variable select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_documents\menudoc02_goauld.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_documents\menudoc02.paa";
};

private _liste = (findDisplay 5000) displayCtrl 5001;

{
	if ([(_x select 0)] call mission_fnc_has_docs) then {
		_liste lbAdd (format ["%1", (_x select 1)]);
	};
} forEach (getArray(missionConfigFile >> "docs_planetes" >> "documents" >> "liste"));


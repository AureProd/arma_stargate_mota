
menu_y_ok = false;

createDialog "menu_y";
waitUntil {dialog};

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

private _image_fond = (findDisplay 3000) displayCtrl 3017;

if ((_variable select 1) == 1) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menuY\menuY_goauld.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menuY\menuY.paa";
};

private _listbox_competences = (findDisplay 3000) displayCtrl 3001;

lbClear _listbox_competences;

private _bar_xp = (findDisplay 3000) displayCtrl 3003;
private _texte_xp = (findDisplay 3000) displayCtrl 3004;
private _texte_xp_bar = (findDisplay 3000) displayCtrl 3018;

private _texte_poid_bar = (findDisplay 3000) displayCtrl 3051;
private _bar_poid = (findDisplay 3000) displayCtrl 3050;

/*
	A modifier dans le config
	1 = licence archeologie
	2 = licence recherches
	3 = licence armes
*/
private _licences = getArray(missionConfigFile >> "stargate" >> "licences" >> "licences_tableau");

{
	private _licence_active = _x;

	{
		if ((_x select 0) == _licence_active) then 
		{
			private _index = _listbox_competences lbAdd (_x select 1);
			_listbox_competences lbSetPicture [_index, (_x select 2)];
		};
	} forEach _licences;
} forEach (_variable select 3);

private _levelMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "level_max");
private _xpMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "xp_max");
private _tableauLevels = getArray(missionConfigFile >> "stargate_xp" >> "xp" >> "tableau_levels");

{
	if ((_variable select 4) == _levelMax) then 
	{
		_bar_xp progressSetPosition ((_variable select 2) / _xpMax);
		_texte_xp_bar ctrlSetText format ["%1 / %2 xp", (_variable select 2), _xpMax];
	}
	else
	{
		if ((_x select 0) == ((_variable select 4) + 1)) then 
		{
			_bar_xp progressSetPosition ((_variable select 2) / (_x select 1));
			_texte_xp_bar ctrlSetText format ["%1 / %2 xp", (_variable select 2), (_x select 1)];
		};
	};
} forEach _tableauLevels;

private _poidMaxPlayer = (_variable select 4) + 40;
private _poidInventairePlayer = [] call mission_fnc_getPoidInventaire;
_bar_poid progressSetPosition (_poidInventairePlayer / _poidMaxPlayer);
_texte_poid_bar ctrlSetText format ["%1 / %2 kg", _poidInventairePlayer, _poidMaxPlayer];

_texte_xp ctrlSetText format [localize "STR_menu_y_level", (_variable select 4)];

[] call mission_fnc_actualise_menu_y;


bouton_A_OK_bis = 3;

private _fond_bouton_armes = (findDisplay 8000) displayCtrl 8003;
private _fond_bouton_munitions = (findDisplay 8000) displayCtrl 8005;
private _fond_bouton_viseurs = (findDisplay 8000) displayCtrl 8007;

private _liste_objets = (findDisplay 8000) displayCtrl 8009;
private _bouton_acheter = (findDisplay 8000) displayCtrl 8008;

_fond_bouton_armes ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_munitions ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_viseurs ctrlSetBackgroundColor [0.6,0,0,0.25];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

// { id / xp / nom / lien image / type objets / poid / ismilitaire}
private _liste_objets_config = nil;

if ((_playerBdd select 1) == 2) then 
{
	_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> "guns_tauri" >> "viseurs");	
} 
else 
{
	_liste_objets_config = getArray(missionConfigFile >> "stargate_armes" >> "guns_goauld" >> "viseurs");
};

lbClear _liste_objets;

{
	if ((_x select 1) <= (_playerBdd select 4)) then 
	{
		if ((_x select 2) == 0) then 
		{
			private _picture_arme_id = getText(configFile >>  "CfgWeapons" >> (_x select 3) >> "picture");
			private _index = _liste_objets lbAdd (format ["%1 (gratuit)", (_x select 0)]);
			_liste_objets lbSetPicture [_index, _picture_arme_id];
		} 
		else 
		{
			private _picture_arme_id = getText(configFile >>  "CfgWeapons" >> (_x select 3) >> "picture");
			private _index = _liste_objets lbAdd (format ["%1 (%2XP)", (_x select 0), (_x select 2)]);
			_liste_objets lbSetPicture [_index, _picture_arme_id];
		};
	} 
	else 
	{
		private _picture_arme_id = getText(configFile >>  "CfgWeapons" >> (_x select 3) >> "picture");
		private _index = _liste_objets lbAdd (format ["%1 (level %2)", (_x select 0), (_x select 1)]);
		_liste_objets lbSetPicture [_index, _picture_arme_id];
		_liste_objets lbSetColor [_index, [1,0,0,1]];
	};
} forEach _liste_objets_config;

_liste_objets lbSetCurSel -1;

_bouton_acheter ctrlEnable false;

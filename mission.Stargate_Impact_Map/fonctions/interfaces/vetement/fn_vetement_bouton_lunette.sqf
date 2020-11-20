
bouton_A_OK_bis = 5;

private _fond_bouton_tenue = (findDisplay 9000) displayCtrl 9003;
private _fond_bouton_veste = (findDisplay 9000) displayCtrl 9005;
private _fond_bouton_sac = (findDisplay 9000) displayCtrl 9007;
private _fond_bouton_casque = (findDisplay 9000) displayCtrl 9009;
private _fond_bouton_lunette = (findDisplay 9000) displayCtrl 9011;

private _liste_objets = (findDisplay 9000) displayCtrl 9013;
private _bouton_acheter = (findDisplay 9000) displayCtrl 9012;

_fond_bouton_tenue ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_veste ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_sac ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_casque ctrlSetBackgroundColor [0,0,0,0];
_fond_bouton_lunette ctrlSetBackgroundColor [0.6,0,0,0.25];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

// { id / xp / nom / lien image / type objets / poid / ismilitaire}
private _liste_objets_config = nil;

if ((_playerBdd select 1) == 2) then 
{
	private _nom_config = "vetements_tauri";
	
	if (isMilitaire) then 
	{
		/*	
			classes :
			1 = archeoloque
			2 = scientifique
			3 = soldat 
			races :
			1 = goauld
			2 = tauri	
		*/
		switch (_playerBdd select 0) do 
		{
			case 1: 
			{ 
				_nom_config = "vetements_tauri_archeologue";
			};
			case 2: 
			{ 
				_nom_config = "vetements_tauri_scientifique";
			};
			case 3: 
			{ 
				_nom_config = "vetements_tauri_militaire";
			};
		};
	};

	_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> _nom_config >> "lunette");	
} 
else 
{
	_liste_objets_config = getArray(missionConfigFile >> "stargate_vetements" >> "vetements_goauld" >> "lunette");
};

lbClear _liste_objets;

{
	if ((_x select 1) <= (_playerBdd select 4)) then 
	{
		if ((_x select 2) == 0) then 
		{
			private _picture_arme_id = getText(configFile >> "CfgGlasses" >> (_x select 3) >> "picture");
			private _index = _liste_objets lbAdd (format ["%1 (gratuit)", (_x select 0)]);
			_liste_objets lbSetPicture [_index, _picture_arme_id];
		} 
		else 
		{
			private _picture_arme_id = getText(configFile >> "CfgGlasses" >> (_x select 3) >> "picture");
			private _index = _liste_objets lbAdd (format ["%1 (%2XP)", (_x select 0), (_x select 2)]);
			_liste_objets lbSetPicture [_index, _picture_arme_id];
		};
	} 
	else 
	{
		private _picture_arme_id = getText(configFile >> "CfgGlasses" >> (_x select 3) >> "picture");
		private _index = _liste_objets lbAdd (format ["%1 (level %2)", (_x select 0), (_x select 1)]);
		_liste_objets lbSetPicture [_index, _picture_arme_id];
		_liste_objets lbSetColor [_index, [1,0,0,1]];
	};
} forEach _liste_objets_config;

_liste_objets lbSetCurSel -1;

_bouton_acheter ctrlEnable false;

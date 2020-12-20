
menu_y_ok = true;

//[] call mission_fnc_quetesActives; // <-- relance les quetes actives apres deco-reco

private _posPlayer = param [0];

enableEnvironment [true, true];

/*	
	classes 1 :
	1 = archeologue
	2 = scientifique
	3 = soldat 
	classes 2 :
	1 = goauld
	2 = tauri	
*/
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, garage, vehicules player]
private _variable = missionNamespace getVariable nomVarPlayerUID;

[] spawn mission_fnc_disable_vocal;

if ((_variable select 1) == 1) then 
{
	Canal_Tauri radioChannelRemove [player];
	Canal_Tauri_Soldats radioChannelRemove [player];
	Canal_Goauld radioChannelAdd [player];

	if ((_variable select 0) == 3) then 
	{
		Canal_Goauld_Soldats radioChannelAdd [player];
	} else {
		Canal_Goauld_Soldats radioChannelRemove [player];
	};
} 
else 
{
	Canal_Goauld radioChannelRemove [player];
	Canal_Goauld_Soldats radioChannelRemove [player];
	Canal_Tauri radioChannelAdd [player];

	if ((_variable select 0) == 3) then 
	{
		Canal_Tauri_Soldats radioChannelAdd [player];
	} else {
		Canal_Tauri_Soldats radioChannelRemove [player];
	};
};

//player allowDamage false;

player setPos [_posPlayer select 0, _posPlayer select 1, _posPlayer select 2];

sleep 0.5;

//player allowDamage true;

private _vie = _variable select 5;
player setDamage (1 - (_vie / 100));

[] spawn mission_fnc_prison;

["video\horison_events.ogv", [10, 10], [1,1,1,1], "skipPorteVar", [0,0,0,0], false] spawn BIS_fnc_playVideo;

[] call mission_fnc_syns_data;

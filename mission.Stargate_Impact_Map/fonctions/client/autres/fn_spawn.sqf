
menu_y_ok = true;

[] call mission_fnc_quetesActives;

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

if ((_variable select 1) == 1) then 
{
	Canal_Tauri radioChannelRemove [player];
	Canal_Goauld radioChannelAdd [player];
} 
else 
{
	Canal_Goauld radioChannelRemove [player];
	Canal_Tauri radioChannelAdd [player];
};

//player allowDamage false;

player setPos [_posPlayer select 0, _posPlayer select 1, _posPlayer select 2];

sleep 0.5;

//player allowDamage true;

private _vie = _variable select 5;
player setDamage (1 - (_vie / 100));

[] call mission_fnc_syns_data;

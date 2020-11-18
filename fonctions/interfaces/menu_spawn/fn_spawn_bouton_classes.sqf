
/*	
	classes :
	1 = archeoloque
	2 = scientifique
	3 = soldat 
	races :
	1 = goauld
	2 = tauri	
*/
//player setVariable ["classe", 1, true];
//player setVariable ["race", 1, true];

/*	
	classes :
	1 = archeoloque
	2 = scientifique
	3 = soldat 
	4 = goauld
	5 = tauri	
*/
private _classe = param [0];

private _blanc = [0,0,0,0];
private _rouge = [0.6,0,0,1];

private _fondArcheologue = (findDisplay 1000) displayCtrl 1011;
private _fondScientifique = (findDisplay 1000) displayCtrl 1012;
private _fondSoldat = (findDisplay 1000) displayCtrl 1013;
private _fondGoauld = (findDisplay 1000) displayCtrl 1015;
private _fondTauri = (findDisplay 1000) displayCtrl 1016;

switch (_classe) do 
{
	case 1: 
	{ 
		_fondArcheologue ctrlSetBackgroundColor _rouge;
		_fondScientifique ctrlSetBackgroundColor _blanc;
		_fondSoldat ctrlSetBackgroundColor _blanc;

		[[0, 1]] call mission_fnc_modif_var_bdd;
	};
	case 2: 
	{ 
		_fondArcheologue ctrlSetBackgroundColor _blanc;
		_fondScientifique ctrlSetBackgroundColor _rouge;
		_fondSoldat ctrlSetBackgroundColor _blanc;
		
		[[0, 2]] call mission_fnc_modif_var_bdd;
	};
	case 3: 
	{ 
		_fondArcheologue ctrlSetBackgroundColor _blanc;
		_fondScientifique ctrlSetBackgroundColor _blanc;
		_fondSoldat ctrlSetBackgroundColor _rouge;
		
		[[0, 3]] call mission_fnc_modif_var_bdd;
	};
	case 4: 
	{ 
		_fondGoauld ctrlSetBackgroundColor _rouge;
		_fondTauri ctrlSetBackgroundColor _blanc;
		
		[[1, 1]] call mission_fnc_modif_var_bdd;
	};
	case 5: 
	{ 
		_fondGoauld ctrlSetBackgroundColor _blanc;
		_fondTauri ctrlSetBackgroundColor _rouge;
		
		[[1, 2]] call mission_fnc_modif_var_bdd;
	};
};
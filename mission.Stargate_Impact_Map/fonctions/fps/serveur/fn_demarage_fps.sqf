
// DECLARATION DES ID DES DRAPEAUX

private _drapeaux = getArray(missionConfigFile >> "fps" >> "mission" >> "drapeaux");

tableau_drapeaux = [];
{
	private _drapID = call compile _x;
	tableau_drapeaux pushBack _drapID;
} forEach _drapeaux;

publicVariable "tableau_drapeaux";

// DECLARATION DES ETATS DES DRAPEAUX
/*
	etat blanc = 0
	etat bleu = 1
	etat doré = 2
*/

{
	_x setVariable ["etat_drapeau", 0, true];	
} forEach tableau_drapeaux;


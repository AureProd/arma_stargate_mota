
private _listeDocuments = [];

{
	if ([(_x select 0)] call mission_fnc_has_docs) then {
		_listeDocuments pushBack _x;
	};
} forEach (getArray(missionConfigFile >> "docs_planetes" >> "documents" >> "liste"));

private _liste = (findDisplay 60000) displayCtrl 60002;
private _index = lbCurSel _liste;

if (_index != -1) then 
{
	private _document = _listeDocuments select _index;

	closeDialog 1;

	[(_document select 2)] call mission_fnc_interface_maps;
};
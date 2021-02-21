
private _listeDocuments = [];

{
	if ([(_x select 0)] call mission_fnc_has_docs) then {
		_listeDocuments pushBack _x;
	};
} forEach (getArray(missionConfigFile >> "docs_planetes" >> "documents" >> "liste"));

private _liste = (findDisplay 5000) displayCtrl 5001;
private _index = lbCurSel _liste;

if (_index != -1) then 
{
	private _document = _listeDocuments select _index;

	private _image_fond = (findDisplay 5000) displayCtrl 5002;

	_image_fond ctrlSetText (_document select 2);
};
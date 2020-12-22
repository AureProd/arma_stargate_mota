
private _listePlanetes = [];

{
	if ([(_x select 0), 1] call mission_fnc_has_planetes) then {
		_listePlanetes pushBack _x;
	};
} forEach (getArray(missionConfigFile >> "docs_planetes" >> "planetes" >> "liste"));

private _liste = (findDisplay 60000) displayCtrl 60002;
private _index = lbCurSel _liste;

if (_index != -1) then 
{
	private _planete = _listePlanetes select _index;

	closeDialog 1;

	[(_planete select 2)] call mission_fnc_interface_maps;
};
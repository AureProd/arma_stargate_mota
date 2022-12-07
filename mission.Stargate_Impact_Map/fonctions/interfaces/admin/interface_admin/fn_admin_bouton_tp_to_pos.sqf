
private _liste_pos = (findDisplay 12000) displayCtrl 12022;
private _index__liste_pos = lbCurSel _liste_pos;

private _tableau = [];

{
	if (((getMarkerType _x) == "flag_France") and ((markerText _x) != "")) then {
		_tableau pushBack _x;
	};
} forEach allMapMarkers;

private _marker = _tableau select _index__liste_pos;

private _pos_marker = getMarkerPos _marker;

player setPos _pos_marker;
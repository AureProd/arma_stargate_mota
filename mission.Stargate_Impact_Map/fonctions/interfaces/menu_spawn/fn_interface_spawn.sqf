
createDialog "menu_spawn";
waitUntil {dialog};

playMusic "spawnchoix";

private _fondSoldat = (findDisplay 1000) displayCtrl 1013;
private _boutonSoldat = (findDisplay 1000) displayCtrl 1003;

if ([] call mission_fnc_is_wl_soldat) then {
	_fondSoldat ctrlShow true;
	_boutonSoldat ctrlShow true;
} else {
	_fondSoldat ctrlShow false;
	_boutonSoldat ctrlShow false;
};

createDialog "menu_spawn";
waitUntil {dialog};

playMusic "spawnchoix";

private _fondSoldat = (findDisplay 1000) displayCtrl 1013;

if ([] call mission_fnc_is_wl_soldat) then {
	_fondSoldat ctrlShow true;
} else {
	_fondSoldat ctrlShow false;
};
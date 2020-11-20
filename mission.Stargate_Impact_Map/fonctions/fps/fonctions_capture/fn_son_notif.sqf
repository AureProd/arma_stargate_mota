
private _etat_drapeau = param [0];

if (_etat_drapeau == 1) then {
	["notif_bleu", ["Drapeau Capturé", "Les tau'ris ont capturés un territoire"]] call BIS_fnc_showNotification;

	//playSound "capture_goauld";
} else {
	["notif_rouge", ["Drapeau Capturé", "Les goa'ulds ont capturés un territoire"]] call BIS_fnc_showNotification;

	//playSound "capture_tauri";
};


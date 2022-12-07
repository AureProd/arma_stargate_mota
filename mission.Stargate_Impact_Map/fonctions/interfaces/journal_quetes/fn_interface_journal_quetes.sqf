
// quete
private _liste_quete = param [0];

createDialog "menu_journal_quetes";
waitUntil {dialog};

private _image_fond = (findDisplay 10000) displayCtrl 10001;

if ([] call mission_fnc_is_tauri) then 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_quetes\menu_journal.paa";
} 
else 
{
	_image_fond ctrlSetText "pictures\interfaces\menu_quetes\menu_journal_goauld.paa";
};

liste_joueurs_groupe = [];
liste_joueurs_groupe pushBack _liste_quete;

private _listeBox = (findDisplay 10000) displayCtrl 10003;

{
	private _index = _listeBox lbAdd format ["%1", (_x select 2)];
	_listeBox lbsetColor [_index, [1, 1, 1, 1]]; // blanc
} forEach liste_joueurs_groupe;

_listeBox lbSetCurSel -1;

private _description = (findDisplay 10000) displayCtrl 10004;
private _recompence = (findDisplay 10000) displayCtrl 10005;
private _objectif = (findDisplay 10000) displayCtrl 10006;

_description ctrlSetText "";
_recompence ctrlSetText "";
_objectif ctrlSetText "";
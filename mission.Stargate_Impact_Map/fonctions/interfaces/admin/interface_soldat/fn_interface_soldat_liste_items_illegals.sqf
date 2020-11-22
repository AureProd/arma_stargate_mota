
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;
private _bouton_detruire = (findDisplay 12000) displayCtrl 12010;

private _index_liste_items = lbCurSel _liste_items_illegals;

if (_index_liste_items != -1) then {
	_bouton_detruire ctrlEnable true;
} else {
	_bouton_detruire ctrlEnable false;
};




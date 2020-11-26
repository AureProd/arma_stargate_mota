
private _liste_joueurs_proches = (findDisplay 12000) displayCtrl 12001;
private _liste_items_illegals = (findDisplay 12000) displayCtrl 12002;

private _bouton_detruire = (findDisplay 12000) displayCtrl 12010;
private _bouton_amende = (findDisplay 12000) displayCtrl 12032;
private _prix_amende = (findDisplay 12000) displayCtrl 12033;

private _index_liste = lbCurSel _liste_joueurs_proches;

if (_index_liste != -1) then {
	[] call mission_fnc_interface_soldat_select_licences_item;

	_bouton_detruire ctrlEnable false;
	_bouton_amende ctrlEnable true;
	_prix_amende ctrlShow true;
};

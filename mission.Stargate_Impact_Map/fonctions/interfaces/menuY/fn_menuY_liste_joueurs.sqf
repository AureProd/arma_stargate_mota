
private _liste_objets = (findDisplay 3000) displayCtrl 3002;
private _liste_players = (findDisplay 3000) displayCtrl 3006;

private _bouton_donner = (findDisplay 3000) displayCtrl 3012;

if (((lbCurSel _liste_objets) != -1) and (lbCurSel _liste_players) != -1) then 
{
	_bouton_donner ctrlEnable true;
}
else
{
	_bouton_donner ctrlEnable false;
};
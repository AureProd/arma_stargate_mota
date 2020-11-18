
// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _variable = missionNamespace getVariable nomVarPlayerUID;

if ((_variable select 1) == 1) then 
{
	createDialog "menu_medical_goauld";
	waitUntil {dialog};
} 
else 
{
	createDialog "menu_medical";
	waitUntil {dialog};
};

private _bar_vie = (findDisplay 5000) displayCtrl 5006;
private _bar_bouffe = (findDisplay 5000) displayCtrl 5007;
private _bar_soif = (findDisplay 5000) displayCtrl 5008;

[] call mission_fnc_medical_bouton_nourriture;

while {dialog} do
{
	// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif]
	private _variablesPlayer = missionNamespace getVariable nomVarPlayerUID;
	private _vie = _variablesPlayer select 5;
	private _faim = _variablesPlayer select 6;
	private _soif = _variablesPlayer select 7;

	_bar_vie progressSetPosition (_vie / 100);
	_bar_bouffe progressSetPosition (_faim / 100);
	_bar_soif progressSetPosition (_soif / 100);

	sleep 0.5;
};
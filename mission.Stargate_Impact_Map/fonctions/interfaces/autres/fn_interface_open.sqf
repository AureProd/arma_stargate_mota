
private _nom_interface = param[0];
private _closeOK = param [1, false];

if (_closeOK) then 
{
	closeDialog 1;	
};

createDialog _nom_interface;
waitUntil {dialog};
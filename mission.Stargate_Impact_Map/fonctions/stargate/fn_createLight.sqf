// mission_fnc_createLight
// params = [porte]

private _porte = param [0];

private _inpos = _porte selectionPosition ["ring", "Memory"];

private _light = "#lightpoint" createVehicle (getPos _porte);  
_light setLightBrightness 0.7;  
_light setLightAmbient [0, 0, 0.1];  
_light setLightColor [0, 0, 1];  
_light setLightDayLight true;
_light lightAttachObject [_porte, _inpos];

_light;
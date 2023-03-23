// sg_fnc_enabled_chevrons_lights
// this function is used to enable chevron lights on the gate
// params = [gate]

private _gate = param [0];

[_gate] call sg_fnc_check_gate;

if ((typeOf _gate) == "SGI_gate") then { // if the gate is the tauri gate
	_gate setObjectTexture [1, "#(rgb,8,8,3)color(1,0,0,1)"];
	_gate setObjectTexture [3, "#(rgb,8,8,3)color(1,0,0,1)"];
	_gate setObjectTexture [5, "#(rgb,8,8,3)color(1,0,0,1)"];
	_gate setObjectTexture [7, "#(rgb,8,8,3)color(1,0,0,1)"];
	_gate setObjectTexture [13, "#(rgb,8,8,3)color(1,0,0,1)"];
	_gate setObjectTexture [15, "#(rgb,8,8,3)color(1,0,0,1)"];
	_gate setObjectTexture [17, "#(rgb,8,8,3)color(1,0,0,1)"];
}
else {
	_gate setObjectTexture [0, "#(rgb,8,8,3)color(0,0.5,1,1)"];
	_gate setObjectTexture [1, "#(rgb,8,8,3)color(0,0.5,1,1)"];
	_gate setObjectTexture [2, "#(rgb,8,8,3)color(0,0.5,1,1)"];
	_gate setObjectTexture [3, "#(rgb,8,8,3)color(0,0.5,1,1)"];
	_gate setObjectTexture [6, "#(rgb,8,8,3)color(0,0.5,1,1)"];
	_gate setObjectTexture [7, "#(rgb,8,8,3)color(0,0.5,1,1)"];
	_gate setObjectTexture [8, "#(rgb,8,8,3)color(0,0.5,1,1)"];
};
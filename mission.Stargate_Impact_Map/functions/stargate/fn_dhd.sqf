// sg_fnc_dhd_controller
// params = [gate, remote_gate]

// get the gate props and the remote gate props and the callback function from the parameters
private _gate = param [0];
private _remote_gate = param [1];

// get planets and address logos from the config file 'planets_config'
private _planets = (getArray (missionConfigFile >> "planets" >> "gates" >> "planets"));
private _address_logos = (getArray (missionConfigFile >> "planets" >> "gates" >> "address_logos"));

// find the index of the gate in the planets array
private _gate_planet_index = _planets findIf {
	(call compile (_x select 3)) == _gate
};

// find the index of the remote gate in the planets array
private _remote_gate_planet_index = _planets findIf {
	(call compile (_x select 3)) == _remote_gate
};

// exit if the gate or the remote gate is not found
if ((_gate_planet_index == -1) or (_remote_gate_planet_index == -1)) exitWith {};

// get the gate and the remote gate from the planets config array
private _gate_planet = _planets select _gate_planet_index;
private _remote_gate_planet = _planets select _remote_gate_planet_index;

// create the array with the address logos for the remote gate
private _address_logos_building_list = [];
{
	private _id_address_logo = _x;

	// find the id of the address logo in the address logos config array
	private _address_logo_index = _address_logos findIf {
		_id_address_logo == (_x select 0)
	};

	// push the address logo to the array with the address logos for the remote gate
	_address_logos_building_list pushBack (_address_logos select _address_logo_index);
} forEach (_remote_gate_planet select 5);

// get the dhd props from the planets config array
private _dhd = (call compile (_gate_planet select 4));

// exit if the dhd is not found
if ((typeOf _dhd) != "SGI_dhd") exitWith {};

_gate setVariable ["isOpen", [false, nil, false, true, false], true]; // TODO: change that

// define the list of sounds for the dhd
private _dhd_sounds = ["dhd_1", "dhd_2", "dhd_3", "dhd_4", "dhd_5", "dhd_6"];

// play the dhd sounds and enter in dhd the address to the remote gate
{
	// get random sound
	private _dhd_sound = selectRandom _dhd_sounds;

 	// change the material of the dhd for simulate pushing the button of the address logo on the dhd
	[_dhd, [(_x select 3), "a3\data_f\lights\car_headlight.rvmat"]] remoteExec ["setObjectMaterial", 0];

	// play sound
	[_dhd, [_dhd_sound, 30]] remoteExec ["say3D", 0];
	
	sleep 0.8;
} forEach _address_logos_building_list;

sleep 0.5;

// play sound of middle button pushing
[_dhd, ["dhd_middle_button", 30]] remoteExec ["say3D", 0];

// play animation on the dhd for pushing the middle button
[_dhd, ["anim_aquila", 1]] remoteExec ["animate", 0];

// change the material of the dhd for simulate pushing the button on the dhd
[_dhd, [12, "a3\data_f\lights\car_headlight.rvmat"]] remoteExec ["setObjectMaterial", 0];

sleep 0.5;

// play animation on the dhd for unpushing the middle button
[_dhd, ["anim_aquila", 0]] remoteExec ["animate", 0];

sleep 0.5;

// change the material of the dhd for simulate unpushing the button on the dhd
[_dhd, [12, "\SGI_DHD\Rvmat\sgi_dhd.rvmat"]] remoteExec ["setObjectMaterial", 0];

sleep 0.5;

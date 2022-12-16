// sg_fnc_play_ring_tauri
// this function is used to the ring animation of the gate for the tauri gate
// params = [gate, position of animation of ring rotation, light number]

private _gate = param [0];
private _logo_animation_position = param [1];
private _light_number = param [2];

private _sound_object = "#particlesource" createVehicle (ASLToAGL (getPosWorld _gate)); // create a sound object to play the sound of the ring at the gate position
[_sound_object, ["rotate_gate_ring", 50]] remoteExec ["say3D", 0]; // play the sound of the ring in 3D for all players

[_gate, ["anim_ring", _logo_animation_position]] remoteExec ["animate", 0]; // animate the ring of the gate to rotate to the logo number

if ((_gate animationPhase "anim_ring") > _logo_animation_position) then { // if the ring is after the logo number
	sleep (10 * ((_gate animationPhase "anim_ring") - _logo_animation_position)); // wait for the ring to rotate to the logo number
} 
else { // if the ring is before the logo number
	sleep (10 * (_logo_animation_position - (_gate animationPhase "anim_ring"))); // wait for the ring to rotate to the logo number
};

deleteVehicle _sound_object; // delete the sound object

sleep 1; // wait 1 second

[_gate, ["lock_chevron_goauld", 50]] remoteExec ["say3D", 0]; // play the sound of the chevron locking in 3D for all players
[_gate, ["lock_chevron", 1]] remoteExec ["animate", 0]; // animate the central chevron to simulate the locking
[_gate, [1, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0]; // set the light texture of the central chevron to red with big intensity 

sleep 0.2; // wait 200 milliseconds

[_gate, [_light_number, "#(rgb,8,8,3)color(1,0,0,1)"]] remoteExec ["setObjectTexture", 0]; // set the light texture to red with big intensity

sleep 0.5; // wait 1/2 second

[_gate, ["lock_chevron", 0]] remoteExec ["animate", 0]; // animate the central chevron to simulate the unlocking

if (_light_number != 1) then { // not disable the light if the light is the central chevron because it rest on at the end of the animation
	[_gate, [1, "#(rgb,8,8,3)color(0.05,0,0,1)"]] remoteExec ["setObjectTexture", 0]; // set the light texture of the central chevron to red with low intensity
};

sleep 1; // wait 1 second

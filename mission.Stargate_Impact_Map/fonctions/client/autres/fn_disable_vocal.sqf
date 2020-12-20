// nom fonction : mission_fnc_disable_vocal
// paramettre : []

private _var_id = currentChannel;

while {true} do {
	waitUntil { _var_id != currentChannel };

	_var_id = currentChannel;

	if ((_var_id == Canal_Goauld) or (_var_id == Canal_Tauri) or (_var_id == 0)) then {
		_var_id enableChannel [true, false]; 
	} else {
		_var_id enableChannel [true, true]; 
	};
};

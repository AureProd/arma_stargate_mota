// sg_fnc_check_gate
// throws an error if the gate object is not valid
// params = [gate object]

private _gate = param [0, objNull, [objNull]];

private _valid_gates_types = [
    "SGI_porte_des_etoiles",
    "SGI_porte_des_etoiles_iris",
    "SGI_gate"
];

if (isNull _gate) throw "Gate variable is null";
if (typeName _gate != "OBJECT") throw "Gate variable is not an object";
if (!((typeOf _gate) in _valid_gates_types)) throw "Gate variable is not a valid gate object type";

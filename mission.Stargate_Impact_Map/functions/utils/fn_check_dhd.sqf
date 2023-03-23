// sg_fnc_check_dhd
// throws an error if the gate dhd object is not valid
// params = [dhd object]

private _dhd = param [0, objNull, [objNull]];

private _valid_dhds_types = [
    "SGI_dhd",
    "sga_sgc_gate_computer"
];

if (isNull _dhd) throw "Dhd variable is null";
if (typeName _dhd != "OBJECT") throw "Dhd variable is not an object";
if (!((typeOf _dhd) in _valid_dhds_types)) throw "Dhd variable is not a valid dhd object type";

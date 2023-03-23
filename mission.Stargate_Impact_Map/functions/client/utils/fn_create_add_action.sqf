// sg_fnc_create_add_action
// this function creates a new add action
// params = [object id, text, code, condition in string, params in array, priority in number (default 1.5)]

private _object_id = param [0];
private _text = param [1];
private _script = param [2];
private _condition = param [3, "true"];
private _params = param [4, []];
private _priority = param [5, 1.5];

// check if params are defined
if (isNil "_object_id") throw "Undefined object id in creation of add action";
if (isNil "_text") throw "Undefined text in creation of add action";
if (isNil "_script") throw "Undefined script in creation of add action";

// check if params are valid
if ((typeName _object_id) != "OBJECT") throw "Object id is not an object in creation of add action";
if ((typeName _text) != "STRING") throw "Text is not a string in creation of add action";
if ((typeName _script) != "CODE") throw "Script is not a code type in creation of add action";
if ((typeName _condition) != "STRING") throw "Condition is not a string in creation of add action";
if ((typeName _params) != "ARRAY") throw "Params is not an array in creation of add action";
if ((typeName _priority) != "NUMBER") throw "Priority is not a number in creation of add action";

// add condition to check if caller player is alive
_condition = _condition + " && {alive _this}";

// create add action and return his id
private _add_action_id = _id addAction [
    _text, 
    _script, 
    _params, 
    _priority, 
    true, 
    true, 
    "", 
    _condition, 
    10
];

_add_action_id;
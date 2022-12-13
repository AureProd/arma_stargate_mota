
class DefaultEventhandlers;
class CfgPatches
{
    class mod_server 
    {
        units[] = {};
        weapons[] = {};
        requiredAddons[] = {};
        fileName = "mod_server.pbo";
        author = "AureProd";
    };
};

class CfgFunctions 
{
    class db_functions 
    {
        tag = "db";
        
        class database
        {
            file = "\mod_server\functions";
            class fn_init {};
            class fn_bbd_call {};
            class fn_get_player {};
            class fn_save_player {};
        };
        class conversions
        {
            file = "\mod_server\functions\conversions";
            class fn_array_to_string {}; // _string = [_array] call db_fnc_array_to_string;
            class fn_string_to_array {}; // _array = [_string] call db_fnc_string_to_array;
        };
    };
};
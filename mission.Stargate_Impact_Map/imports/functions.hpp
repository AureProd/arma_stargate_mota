
class CfgFunctions 
{
    class sg_functions 
    {
        tag = "sg";
        
        class stargate_server
        {
            file = "functions\server\stargate";
            class create_gate_light {}; // sg_fnc_create_gate_light
            class dhd_controller {}; // sg_fnc_dhd_controller
            class disabled_chevrons_lights {}; // sg_fnc_disabled_chevrons_lights
            class on_off_iris {}; // sg_fnc_on_off_iris
            class play_kawoosh {}; // sg_fnc_play_kawoosh
            class play_ring_goauld {}; // sg_fnc_play_ring_goauld
            class play_ring_tauri {}; // sg_fnc_play_ring_tauri
            class ring_controller {}; // sg_fnc_ring_controller
            class stargate_controller {}; // sg_fnc_stargate_controller
        };

        class stargate_client
        {
            file = "functions\client\stargate";
            class enabled_chevrons_lights {}; // sg_fnc_enabled_chevrons_lights
            class gate_player_listener {}; // sg_fnc_gate_player_listener
            class player_transport_detection {}; // sg_fnc_player_transport_detection
            class player_transport {}; // sg_fnc_player_transport
        };

        class utils_common
        {
            file = "functions\utils";
            class check_dhd {}; // sg_fnc_check_dhd
            class check_gate {}; // sg_fnc_check_gate
        };

        class utils_server
        {
            file = "functions\server\utils";
        };

        class utils_client
        {
            file = "functions\client\utils";
            class create_add_action {}; // sg_fnc_create_add_action
        };
    };
};


class CfgMusic 
{
	tracks[] = {};
	class spawn_choice
	{ 
		name = "spawn_choice"; 
		sound[] = {"sounds\music\spawn_choice.ogg", 5, 1.0}; 
	}; 
};

class CfgSounds 
{
	sounds[] = {}; 
	class button 
	{ 
		name = "button"; 
		sound[] = {"sounds\interfaces\button.ogg", 3, 1}; 
		titles[] = {}; 
	};
	class level_up 
	{ 
		name = "level_up"; 
		sound[] = {"sounds\xp\level_up.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class player_jump {
        name = "player_jump";
        sound[] = {"sounds\player\player_jump.wav", 10, 1};
        titles[] = {};
    };
	class player_tp  
	{ 
		name = "player_tp"; 
		sound[] = {"sounds\player\player_tp.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class player_damage 
	{ 
		name = "player_damage"; 
		sound[] = {"sounds\player\player_damage.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class car_lock {
        name = "car_lock";
        sound[] = {"sounds\vehicle\car_lock.ogg", 1.0, 1};
        titles[] = {};
    };
    class car_unlock {
        name = "car_unlock";
        sound[] = {"sounds\vehicle\car_unlock.ogg", 0.75, 1};
        titles[] = {};
    };
	
	// STARGATE
	class close_iris 
	{ 
		name = "close_iris"; 
		sound[] = {"sounds\gate\close_iris.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class open_iris  
	{ 
		name = "open_iris"; 
		sound[] = {"sounds\gate\open_iris.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class open_gate  
	{ 
		name = "open_gate"; 
		sound[] = {"sounds\gate\open_gate.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class close_gate
	{ 
		name = "close_gate"; 
		sound[] = {"sounds\gate\close_gate.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class rotate_gate_ring
	{ 
		name = "rotate_gate_ring"; 
		sound[] = {"sounds\gate\rotate_gate_ring.ogg", 10, 1}; 
		titles[] = {}; 
	};
	class stop_gate  
	{ 
		name = "stop_gate"; 
		sound[] = {"sounds\gate\stop_gate.ogg", 50, 1}; 
		titles[] = {}; 
	};
	class lock_chevron_goauld
	{ 
		name = "lock_chevron_goauld"; 
		sound[] = {"sounds\gate\lock_chevron_goauld.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class lock_chevron_tauri  
	{ 
		name = "lock_chevron_tauri"; 
		sound[] = {"sounds\gate\lock_chevron_tauri.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class push_dhd_middle_button
	{ 
		name = "push_dhd_middle_button"; 
		sound[] = {"sounds\dhd\push_dhd_middle_button.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd_1  
	{ 
		name = "dhd_1"; 
		sound[] = {"sounds\dhd\dhd_1.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd_2 
	{ 
		name = "dhd_2"; 
		sound[] = {"sounds\dhd\dhd_2.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd_3  
	{ 
		name = "dhd_3"; 
		sound[] = {"sounds\dhd\dhd_3.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd_4  
	{ 
		name = "dhd_4"; 
		sound[] = {"sounds\dhd\dhd_4.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd_5  
	{ 
		name = "dhd_5"; 
		sound[] = {"sounds\dhd\dhd_5.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd_6  
	{ 
		name = "dhd_6"; 
		sound[] = {"sounds\dhd\dhd_6.ogg", 20, 1}; 
		titles[] = {}; 
	};
};
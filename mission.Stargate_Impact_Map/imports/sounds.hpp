
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
	class joueur_tp  
	{ 
		name = "joueur_tp"; 
		sound[] = {"sounds\player\joueur_tp.ogg", 1, 1}; 
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
	class gate_open  
	{ 
		name = "gate_open"; 
		sound[] = {"sounds\gate\gate_open.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class gate_close
	{ 
		name = "gate_close"; 
		sound[] = {"sounds\gate\gate_close.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class gate_ring  
	{ 
		name = "gate_ring"; 
		sound[] = {"sounds\gate\gate_ring.ogg", 10, 1}; 
		titles[] = {}; 
	};
	class gate_stop  
	{ 
		name = "gate_stop"; 
		sound[] = {"sounds\gate\gate_stop.ogg", 50, 1}; 
		titles[] = {}; 
	};
	class chevron_goauld_lock  
	{ 
		name = "chevron_goauld_lock"; 
		sound[] = {"sounds\gate\chevron_goauld_lock.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class chevron_tauri_lock  
	{ 
		name = "chevron_tauri_lock"; 
		sound[] = {"sounds\gate\chevron_tauri_lock.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd_middle_button
	{ 
		name = "dhd_middle_button"; 
		sound[] = {"sounds\dhd\dhd_middle_button.ogg", 20, 1}; 
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
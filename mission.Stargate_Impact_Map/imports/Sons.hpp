
class CfgMusic 
{
	tracks[] = {};
	class spawnchoix 
	{ 
		name = "spawn choix"; 
		sound[] = {"sounds\musiques\spawnchoix.ogg", 5, 1.0}; 
	}; 
};

class CfgSounds 
{
	sounds[] = {}; 
	class button 
	{ 
		name = "button"; 
		sound[] = {"sounds\sons\interfaces\button.ogg", 3, 1}; 
		titles[] = {}; 
	};
	class level_up 
	{ 
		name = "level_up"; 
		sound[] = {"sounds\sons\xp\lvl_up.ogg", 1, 1}; 
		titles[] = {}; 
	};

	// FPS CTF
	/*class capture_goauld 
	{ 
		name = "capture_goauld"; 
		sound[] = {"", 5, 1}; 
		titles[] = {}; 
	};
	class capture_tauri
	{ 
		name = "capture_tauri"; 
		sound[] = {"", 5, 1}; 
		titles[] = {}; 
	};*/
	class jump {
        name = "jump";
        sound[] = {"sons\jump.wav", 10, 1};
        titles[] = {};
    };
	
	// STARGATE
	class close_iris 
	{ 
		name = "close_iris"; 
		sound[] = {"sons\close_iris.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class open_iris  
	{ 
		name = "open_iris"; 
		sound[] = {"sons\open_iris.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class gate_open  
	{ 
		name = "gate_open"; 
		sound[] = {"sons\gate_open.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class gate_close
	{ 
		name = "gate_close"; 
		sound[] = {"sons\gate_close.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class gate_ring  
	{ 
		name = "gate_ring"; 
		sound[] = {"sons\gate_ring.ogg", 10, 1}; 
		titles[] = {}; 
	};
	class gate_stop  
	{ 
		name = "gate_stop"; 
		sound[] = {"sons\gate_stop.ogg", 50, 1}; 
		titles[] = {}; 
	};
	class tp_joueur  
	{ 
		name = "tp_joueur"; 
		sound[] = {"sons\tp_joueur.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class degat_payer  
	{ 
		name = "degat_payer"; 
		sound[] = {"sons\degat_payer.ogg", 1, 1}; 
		titles[] = {}; 
	};
	class chevron_lock  
	{ 
		name = "chevron_lock"; 
		sound[] = {"sons\chevron_lock.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class sg_chevron_lock  
	{ 
		name = "sg_chevron_lock"; 
		sound[] = {"sons\sg_chevron_lock.ogg", 20, 1}; 
		titles[] = {}; 
	};
};

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
	class dhd_central_bouton  
	{ 
		name = "dhd_central_bouton"; 
		sound[] = {"sons\dhd\dhd_central_bouton.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd1  
	{ 
		name = "dhd1"; 
		sound[] = {"sons\dhd\dhd1.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd2 
	{ 
		name = "dhd2"; 
		sound[] = {"sons\dhd\dhd2.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd3  
	{ 
		name = "dhd3"; 
		sound[] = {"sons\dhd\dhd3.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd4  
	{ 
		name = "dhd4"; 
		sound[] = {"sons\dhd\dhd4.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd5  
	{ 
		name = "dhd5"; 
		sound[] = {"sons\dhd\dhd5.ogg", 20, 1}; 
		titles[] = {}; 
	};
	class dhd6  
	{ 
		name = "dhd6"; 
		sound[] = {"sons\dhd\dhd6.ogg", 20, 1}; 
		titles[] = {}; 
	};
};
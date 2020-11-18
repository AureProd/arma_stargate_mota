
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
};
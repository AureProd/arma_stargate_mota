
if (isServer) then {
	private _id_drapeau = param [0];

	switch (_id_drapeau getVariable "etat_drapeau") do {
		case 1: { 
			_id_drapeau setFlagTexture "\A3\Data_F\Flags\flag_fd_blue_CO.paa";
		};
		case 2: { 
			_id_drapeau setFlagTexture "\A3\Data_F\Flags\flag_fd_orange_CO.paa";
		};
	};
};
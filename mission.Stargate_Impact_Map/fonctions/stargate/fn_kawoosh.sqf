// mission_fnc_kawoosh
// params = [porte]

private _porte = param [0];

sleep 0.9;

private _lanceKawoosh = {
	private _porte = param [0];

	private _gate = "#particlesource" createVehicleLocal (getPosATL _porte);

	_gray = [[0.2,0.3,0.5,0.2],[0.3,0.3,0.6,0.2],[0.2,0.2,0.4,0.1],[0.1,0.3,0.5,0.3]];
	_blue = [[0.8,0.7,0.7,0.1],[0.9,1.0,0.9,0.2],[0.8,0.8,1.0,0.2],[0.95,0.8,1.0,0.1]];
	_blue_bis = [[0.9,1.0,0.9,0.2],[0.9,1.0,0.9,0.2],[0.9,1.0,0.9,0.2],[0.9,1.0,0.9,0.2]];

	_shape = "A3\data_f\ParticleEffects\Universal\smoke.p3d";

	_j = 0;

	_sizeX = 5.2;
	_lifetime =2.8;

	private _porteDistanteDir = (getDir _porte);

	if (((_porteDistanteDir > 315) or (_porteDistanteDir <= 45)) or ((_porteDistanteDir > 135) and (_porteDistanteDir <= 225))) then {
		if (((_porteDistanteDir > 315) or (_porteDistanteDir <= 45))) then {
			_x = 0;
			_z = -0.5;
			_y = 0;

			while {_j < 14} do
			{
				_i = 0;

				while {_i < 11} do
				{
					if(true)then
					{
						_z =_z-.03;

						_lifetime =_lifetime-0.01;
						_sizeX = _sizeX+0.015;

						_ontimer=0.5;

						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer,_lifetime, [_x, _z,_y +  3.4], [0,0,0], 1, 0.2, 0.157, 0.00, _size, _gray, [0], 0.1, 0.02, "", "", _gate];
						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer,_lifetime, [_x, _z,_y +  3.4], [0,0,0], 0.5, 0.2, 0.157, 0.00, _size, _blue, [0], 0.1, 0.02, "", "", _gate];
						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer, _lifetime, [_x, _z,_y +  3.4], [0,0,0], 3, 0.2, 0.157, 0.00, _size, _blue_bis, [0], 0.1, 0.02, "", "", _gate];
					};
					_i = _i + 1;
				};
				sleep .001;
				_j = _j + 1;
			};
		} else {
			_x = 0;
			_z = +0.5;
			_y = 0;

			while {_j < 14} do
			{
				_i = 0;

				while {_i < 11} do
				{
					if(true)then
					{
						_z =_z+.03;

						_lifetime =_lifetime-0.01;
						_sizeX = _sizeX+0.015;

						_ontimer=0.5;

						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer,_lifetime, [_x, _z,_y +  3.4], [0,0,0], 1, 0.2, 0.157, 0.00, _size, _gray, [0], 0.1, 0.02, "", "", _gate];
						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer,_lifetime, [_x, _z,_y +  3.4], [0,0,0], 0.5, 0.2, 0.157, 0.00, _size, _blue, [0], 0.1, 0.02, "", "", _gate];
						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer, _lifetime, [_x, _z,_y +  3.4], [0,0,0], 3, 0.2, 0.157, 0.00, _size, _blue_bis, [0], 0.1, 0.02, "", "", _gate];
					};
					_i = _i + 1;
				};
				sleep .001;
				_j = _j + 1;
			};
		};
	} else {
		if (((_porteDistanteDir > 45) and (_porteDistanteDir <= 135))) then {
			_x = -0.5;
			_z = 0;
			_y = 0;

			while {_j < 14} do
			{
				_i = 0;

				while {_i < 11} do
				{
					if(true)then
					{
						_x =_x-.03;

						_lifetime =_lifetime-0.01;
						_sizeX = _sizeX+0.015;

						_ontimer=0.5;

						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer,_lifetime, [_x, _z,_y +  3.4], [0,0,0], 1, 0.2, 0.157, 0.00, _size, _gray, [0], 0.1, 0.02, "", "", _gate];
						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer,_lifetime, [_x, _z,_y +  3.4], [0,0,0], 0.5, 0.2, 0.157, 0.00, _size, _blue, [0], 0.1, 0.02, "", "", _gate];
						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer, _lifetime, [_x, _z,_y +  3.4], [0,0,0], 3, 0.2, 0.157, 0.00, _size, _blue_bis, [0], 0.1, 0.02, "", "", _gate];
					};
					_i = _i + 1;
				};
				sleep .001;
				_j = _j + 1;
			};
		} else {
			_x = +0.5;
			_z = 0;
			_y = 0;

			while {_j < 14} do
			{
				_i = 0;

				while {_i < 11} do
				{
					if(true)then
					{
						_x =_x+.03;

						_lifetime =_lifetime-0.01;
						_sizeX = _sizeX+0.015;

						_ontimer=0.5;

						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer,_lifetime, [_x, _z,_y +  3.4], [0,0,0], 1, 0.2, 0.157, 0.00, _size, _blue, [0], 0.1, 0.02, "", "", _gate];
						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer,_lifetime, [_x, _z,_y +  3.4], [0,0,0], 0.5, 0.2, 0.157, 0.00, _size, _gray, [0], 0.1, 0.02, "", "", _gate];
						_size1 = random (_sizeX);
						_size = [_size1, _size1*0.6];
						drop [_shape, "", "Billboard", _ontimer, _lifetime, [_x, _z,_y +  3.4], [0,0,0], 3, 0.2, 0.157, 0.00, _size, _blue, [0], 0.1, 0.02, "", "", _gate];
					};
					_i = _i + 1;
				};
				sleep .001;
				_j = _j + 1;
			};
		};
	};
};

if (((typeOf _porte) == "SGI_gate") or ((typeOf _porte) == "SGI_porte_des_etoiles_iris")) then {
	if (!((_porte animationPhase 'anim_iris1') == 1)) then {
		[_porte] call _lanceKawoosh;
	};
} else {
	[_porte] call _lanceKawoosh;
};
	


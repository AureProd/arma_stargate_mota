
player addEventHandler ["HandleDamage", { 
	params  [ "_unit" ,  "_selection" ,  "_damage" ,  "_source" ,  "_projectile" ,  "_hitIndex" ,  "_instigator" ,  "_hitPoint" ]; 

	private _return = _damage;

	if (ISINVICIBLE) then {
		_return = 0;
	};

	_return;
}];
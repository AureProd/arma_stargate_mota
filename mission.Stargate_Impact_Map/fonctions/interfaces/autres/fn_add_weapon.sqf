
private _arme_id = param [0];
private _chargeur_id = param [1];

player addmagazines [_chargeur_id, 1];
player addweapon _arme_id;
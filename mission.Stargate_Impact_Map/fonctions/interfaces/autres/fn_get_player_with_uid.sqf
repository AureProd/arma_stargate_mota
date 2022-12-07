
// fonction name : mission_fnc_get_player_with_uid
// parmettres : [player uid]

private _joueur_UID = param [0, (getPlayerUID player)];

private _index_joueur = allPlayers findif {
	(getPlayerUID _x) == _joueur_UID
};

private _joueur = nil;

if (_index_joueur != -1) then {
	_joueur = allPlayers select _index_joueur;
};

_joueur;
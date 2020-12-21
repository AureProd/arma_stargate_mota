
private _isPremier = param [0, false];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
//private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

if (!_isPremier) then 
{
	if ([] call mission_fnc_is_tauri) then 
	{
		createDialog "menu_groupe";
		waitUntil {dialog};
	} 
	else 
	{
		createDialog "menu_groupe_goauld";
		waitUntil {dialog};
	};
};

private _listbox_players = (findDisplay 2000) displayCtrl 2002;
private _listbox_team = (findDisplay 2000) displayCtrl 2001;

private _bouton_inviter = (findDisplay 2000) displayCtrl 2004;
private _bouton_quitter = (findDisplay 2000) displayCtrl 2005;
private _bouton_rejoindre = (findDisplay 2000) displayCtrl 2006;

lbClear _listbox_players;
lbClear _listbox_team;

private _team = [] call mission_fnc_get_team;
private _isChef = [] call mission_fnc_is_chef_team;

private _invitePar = [] call mission_fnc_get_invite_par_team;
private _invitations = [] call mission_fnc_get_invitations_team;

liste_joueurs_groupe = [];

{
	if ((_x != player) and ((["race"] call mission_fnc_getBDD) == (["race", _x] call mission_fnc_getBDD))) then {
		private _index = _listbox_players lbAdd format ["%1", name _x];

		liste_joueurs_groupe pushBack (getPlayerUID _x);

		if ((getPlayerUID _x) in _team) then 
		{
			_listbox_players lbSetPicture [_index, "pictures\interfaces\menu_groupe\deja_dans_team.paa"];
		} 
		else 
		{
			if (((getPlayerUID _x) in _invitePar) and ((getPlayerUID _x) in _invitations)) then 
			{
				_listbox_players lbSetPicture [_index, "pictures\interfaces\menu_groupe\fleche_double.paa"];
			}
			else
			{
				if ((getPlayerUID _x) in _invitations) then 
				{
					_listbox_players lbSetPicture [_index, "pictures\interfaces\menu_groupe\flechedroite.paa"];
				};

				if ((getPlayerUID _x) in _invitePar) then 
				{
					_listbox_players lbSetPicture [_index, "pictures\interfaces\menu_groupe\flechegauche.paa"];
				};
			};
		};
	};
} forEach allPlayers;

_bouton_inviter ctrlEnable false;
_bouton_quitter ctrlEnable false;
_bouton_rejoindre ctrlEnable false;

if ([] call mission_fnc_is_in_team) then 
{
	if (_isChef) then 
	{
		if (((count liste_joueurs_groupe) > 0) and ((count _team) < 5)) then
		{
			_bouton_inviter ctrlEnable true;
		}
		else
		{
			if ((count _team) >= 5) then 
			{
				[] call mission_fnc_create_reset_invitations;
			};
		};
	};

	_bouton_quitter ctrlEnable true;

	{
		private _joueur = [_x] call mission_fnc_get_player_with_uid;

		private _index = _listbox_team lbAdd format ["%1", name _joueur];

		if (_forEachIndex == 0) then 
		{
			_listbox_team lbSetPicture [_index, "pictures\interfaces\menu_groupe\image_chef.paa"];
		};
	} forEach _team;
} 
else 
{
	_listbox_team lbAdd format ["%1", name player];

	if ((lbSize _listbox_players) > 0) then
	{
		_bouton_inviter ctrlEnable true;
	};
};

_listbox_team lbSetCurSel -1;



/* if ((lbSize _listbox_players) > 0) then 
{
	_listbox_players lbSetCurSel 0;

	private _joueurUid = liste_joueurs_groupe select 0;
	private _joueur = nil;

	{
		if ((getPlayerUID _x) == _joueurUid) then {
			_joueur = _x;
		};
	} forEach allPlayers;

	private _ok = false;

	if ((getPlayerUID _joueur) in _invitePar) then 
	{
		_bouton_rejoindre ctrlEnable true;
	};

	{
		if (((getPlayerUID _joueur) in _x) and ((getPlayerUID player) in _x)) then 
		{
			_ok = true;
		};
	} forEach (missionNamespace getVariable ["team", []]);

	if (!_ok) then 
	{
		_bouton_inviter ctrlEnable true;
	}
	else
	{
		_bouton_inviter ctrlEnable false;
	};
};  */

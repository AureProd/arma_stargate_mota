
player addEventHandler ["Killed", 
{
	_this spawn
	{
		private _killer = (_this select 1);

		if (!isNil "_killer") then {
			private _variable = missionNamespace getVariable nomVarPlayerUID;

			private _killer_var = format ["variable_%1", getPlayerUID (_this select 1)];
			private _variable_killer = missionNamespace getVariable _killer_var;

			if (!isNil "_variable_killer") then {
				if ((_variable select 1) != (_variable_killer select 1)) then {
					[player, (_this select 1)] remoteExec ["mission_fnc_elimination", -2];

					titleText [format [localize "STR_tuer_message", name (_this select 1)], "BLACK OUT", 0.1];

					sleep 2;

					titleFadeOut 1;
				};
			};
		};
	};
}];
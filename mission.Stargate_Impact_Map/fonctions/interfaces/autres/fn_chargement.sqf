
private _bool = param [0, true];

waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

5999 cutRsc ["chargement_logo_stargate", "PLAIN"];

((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1001) ctrlShow true;
((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1005) ctrlShow false;
((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1004) ctrlShow false;
((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1003) ctrlShow false;
((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1002) ctrlShow false;

if (_bool) then {
	[player, "AinvPknlMstpSnonWnonDnon_medicUp2"] remoteExec ["switchMove", 0];
};

private _time = 1;

for "_i" from 0 to 4 do { 
	switch (_i) do {
		case 0: { };
		case 1: { 
			((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1005) ctrlShow true;
		};
		case 2: { 
			((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1004) ctrlShow true;
		};
		case 3: { 
			((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1003) ctrlShow true;
		};
		case 4: { 
			((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1002) ctrlShow true;
		};
	};

	sleep _time; 
};

((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1001) ctrlShow false;
((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1005) ctrlShow false;
((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1004) ctrlShow false;
((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1003) ctrlShow false;
((uiNamespace getVariable "chargement_logo_stargate") displayCtrl 1002) ctrlShow false;
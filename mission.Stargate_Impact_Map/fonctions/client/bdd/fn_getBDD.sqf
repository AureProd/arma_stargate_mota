
// fonction name : mission_fnc_getBDD
// parmettres : [choix, player]

private _valeurs = [
    "classe", "race", "xp", "licences", "level", "vie", "faim", "soif", "inventaire virtuel",
    "liste vies", "quetes faites", "quetes dispo", "planete visite", "quetes actives", "garage", "wl soldat", "documents"
];

private _choix = param [0, "rien"];
private _player = param [1, player];

if (!(_choix in _valeurs)) exitWith {
    hint localize "STR_erreur";
};

private _indexChoix = _valeurs find _choix;

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives, quetes actives, garage]
private _nomVarPlayer = format ["variable_%1", getPlayerUID _player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _valeur = _variable select _indexChoix;

_valeur;

// DOUBLE CLICK

if (bouton_A_OK_bis == 1) then 
{
	playSound 'button';

	[] call mission_fnc_utiliser_item_medical;

	[] call mission_fnc_medical_bouton_nourriture;
};

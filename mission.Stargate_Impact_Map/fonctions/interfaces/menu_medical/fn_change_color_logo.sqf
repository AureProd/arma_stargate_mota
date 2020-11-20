
/*  
	couleurs des logos :
	[0,0,0,0] <-- transparent
	[0,1,0,0.1] <-- color green
	[1,0.5,0,0.1] <-- color orange
	[1,0,0,0.1] <-- color rouge        
*/

private _logo_param = param [0];
private _pourcentage_vie = param [1];

if (_pourcentage_vie < 55) then 
{
	_logo_param ctrlSetBackgroundColor [1,0,0,0.1];
} 
else 
{
	if (_pourcentage_vie < 100) then 
	{
		_logo_param ctrlSetBackgroundColor [1,0.5,0,0.1];
	} 
	else 
	{
		_logo_param ctrlSetBackgroundColor [0,1,0,0.1];
	};
};

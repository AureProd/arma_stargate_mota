
private _image = param [0];

createDialog "menu_maps";
waitUntil {dialog};

private _image_fond = (findDisplay 61000) displayCtrl 61001;

_image_fond ctrlSetText _image;
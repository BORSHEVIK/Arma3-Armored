findDisplay 12 displayCtrl 51 ctrlAddEventHandler ["Draw", {
  _thisVar = _this;

  	{
  	   _markerColor = [0,0.5,0,1];

  switch (side _x) do {
      case west: {
          _markerColor = [0,0.3,0.6,1]
      };
      case east: {
          _markerColor = [0.5,0,0,1]
      };
  };
  	  _thisVar select 0 drawIcon [
  		'\A3\ui_f\data\map\markers\military\warning_CA.paa',
  		_markerColor,
  		getPos _x,
  		24,
  		24,
  		getDir _x,
  		(name _x),
  		1,
  		0.03,
  		'TahomaB',
  		'right'
  	]
  	} foreach AllUnits;
}

];


addMissionEventHandler ["Draw3D", { 
 
 { 

   if (_x != player) then {
       _markerColor = [0,0.5,0,1];

switch (side _x) do {
    case west: {
        _markerColor = [0,0.3,0.6,1];
    };
    case east: {
        _markerColor = [0.5,0,0,1];
    };
};

  _pos = getPosWorld _x; 
   drawIcon3D ["\A3\ui_f\data\map\markers\military\warning_CA.paa", _markerColor, [(_pos select 0),(_pos select 1), (_pos select 2) - 3], 1, 1, 0, "", 0, 0.0315, "EtelkaMonospacePro"];
   drawIcon3D ["", [1,1,1,1], [(_pos select 0),(_pos select 1), (_pos select 2) - 3], 1, 1, 0, (name _x), 0, 0.0315, "EtelkaMonospacePro"];
   }
 } foreach AllUnits; 
 
}];

//(findDisplay 46) displayAddEventHandler ["KeyDown", "hint str _this"];

//drawIcon3D ["a3\ui_f\data\gui\Rsc\RscDisplayArsenal\radio_ca.paa", [1,1,1,1], [(_pos select 0),(_pos select 1), 1], 0.8, 0.8, 0, (name player), 1, 0.0315, "EtelkaMonospacePro"];
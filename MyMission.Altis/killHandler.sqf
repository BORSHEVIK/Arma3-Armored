addMissionEventHandler ["entityKilled", 
  { 
   params ["_killed","_killer"];
   _killerName = (name _killer);
   _killedName = (name _killed);
   vehicle player vehicleChat format["type =  %1", (typeOf vehicle _killed)];

   _crewArray = (crew _killed);
   _crewArrayCheck = (isNil "_crewArray");
   vehicle player vehicleChat format["Count of array = %1", (count _crewArray)];

   if (_crewArrayCheck)  then {
      systemChat format["%1 destroy %2", _killerName, _killedName];
   } else {
      systemChat format["%1 kill %2", _killerName, _killedName];
   }
  }
]; 
addMissionEventHandler ["entityKilled", 
  { 
   params ["_killed","_killer"]; 
   _killerName = (name _killer);
   _killedName = (name _killed);
   systemChat format["%1 kill %2", _killerName, _killedName];
  }
]; 
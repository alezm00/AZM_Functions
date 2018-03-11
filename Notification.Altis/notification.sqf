AZM_Notification ={
	_myvarg=format["Goodmorning %1 in green",name player];
	_myvarr=format["Goodmorning %1 in red",name player];
	_myvarn=format["Goodmorning %1 in blu",name player];
	["verde",[_myvarg]] call BIS_fnc_showNotification;
	sleep 1;
	["rosso",[_myvarr]] call BIS_fnc_showNotification;
	sleep 1;
	["neutro",[_myvarn]] call BIS_fnc_showNotification;
	sleep 1;
};




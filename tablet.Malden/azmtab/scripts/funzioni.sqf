
amz_homegui_open = {
	createDialog "HOME";
};

azm_radiogui_open = {
	_null=closeDialog 6660;
	createDialog "RADIO";
};

azm_radioclode = {
	_null=closeDialog 6661;
	createDialog "HOME";
};

azm_ace_action1 = {
	_acesefl = ['gameMenu','azm_telefono','',{[] call amz_homegui_open;},{(player distance (getMarkerPos "marker_0") < 15)}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _acesefl] call ace_interact_menu_fnc_addActionToObject;
};

azm_ace_action2 = {
	_acesefl = ['gameMenu','azm_telefono','',{[] call amz_homegui_open;},{(player distance (getMarkerPos "marker_3") < 15)}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _acesefl] call ace_interact_menu_fnc_addActionToObject;
};





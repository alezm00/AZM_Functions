azm_lradio_freqset = {
	_listazainiradio = ["tf_rt1523g", "tf_rt1523g_big", "tf_rt1523g_black", "tf_rt1523g_fabric", "tf_rt1523g_big_bwmod_tropen", "tf_rt1523g_green", "tf_rt1523g_rhs", "tf_rt1523g_big_bwmod", "tf_rt1523g_sage", "tf_anprc155", "tf_anprc155_coyote", "tf_mr3000", "tf_mr3000_multicam", "tf_rt1523g_big_rhs", "tf_mr3000_rhs"];
	if ((backpack player) in _listazainiradio) then {
		sleep 1;
		[(call TFAR_fnc_activelrRadio), 1, "60"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activelrRadio), 2, "61"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activelrRadio), 3, "62"] call TFAR_fnc_SetChannelFrequency;
		sleep 0.2;
		_line1="<t color='#FF0000' size='2' align='center'>AZM Radio LR set</t>";
		_line2="<br/>CANALE 1 = 60<br/>CANALE 2 = 61<br/>CANALE 3 = 62";
		hint parseText (_line1 + _line2);
	} else {
		_line1nol="<t color='#FF0000' size='2' align='center'>AZM Radio LR set</t>";
		_line2nol="<br/><t color='#FF0000'align='center'>NON HAI UNA RADIO A LUNGO RAGGIO</t>";
		hint parseText (_line1nol + _line2nol);
	};
};

azm_sradio_freqset = {
	sleep 1;
	[(call TFAR_fnc_activeSwRadio), 1, "110"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 2, "111"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 3, "112"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 4, "113"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 5, "114"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 6, "115"] call TFAR_fnc_SetChannelFrequency;
	_line1="<t color='#FF0000' size='2' align='center'>AZM Radio SR set</t>";
	_line2="<br/>CANALE 1 = 110<br/>CANALE 2 = 111<br/>CANALE 3 = 112<br/>CANALE 4 = 113<br/>CANALE 5 = 114<br/>CANALE 6 = 115";
	hint parseText (_line1 + _line2);
};

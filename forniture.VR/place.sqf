azm_oggetti = [
	["Land_CampingTable_F","Tavolo1"],
	["Land_RattanTable_01_F","tavolo2"],
	["Land_ChairPlastic_F","sedia1"]
];

player addAction ["<t color='#7FFF00'>Piazza</t>",{
													ciao attachTo [player, [0,2,0.4]];
													detach ciao;
													ciao enableSimulation false;
													ciao = objNull;
													}];

{
	_class   = _x select 0;
	_nomeadd = _x select 1;
	player addAction [_nomeadd,{ciao = (_this select 3 select 0) createVehicle position player; ciao attachTo [player, [0,2,0.6]];},[_class]];
} forEach (azm_oggetti);

waituntil {
	if (count(attachedObjects player)>1) then {
		{
			detach _x;
			deleteVehicle _x;
		} forEach attachedObjects player;
	};
};

/**
		....###....##.......########.########.##.....##
		...##.##...##.......##............##..###...###
		..##...##..##.......##...........##...####.####
		.##.....##.##.......######......##....##.###.##
		.#########.##.......##.........##.....##.....##
		.##.....##.##.......##........##......##.....##
		.##.....##.########.########.########.##.....##
	Script: Reservedslots.sqf
	Creato il: 09/02/2018																																																																															*/diag_log "Alezm Reserved slot script loaded";/*
	to start the script you need to execute in the init.sqf file with this code  	[] execVM "Reservedslots.sqf";
	then in this file you need to modify the AZM_SLOTS function adding new lines with this ["Arma3 UID", slot variable name] call AZM_RESERVED_SLOT;
	done the scritp now is operative and you can leave your zeus slot free.
	TODO: systemChat 
	TODO: multiple uid per slots

	you can use this script on your server but just leave the credits.
*/

AZM_SLOTS = {
	/*["Arma3 UID", slot variable name] call AZM_RESERVED_SLOT;*/
	["76561198164382639", s1] call AZM_RESERVED_SLOT;
	
	
	_bypass_list = ["",""]	
};


AZM_RESERVED_SLOT = {
	[_this select 0, _this select 1] spawn {
		params ["_uidd","_slot"];
		//hint format ["%1			%2",_uidd,_slot];	
		waitUntil {!isNull player && player == player};
		if (_slot == player) then {
			if ((getPlayerUID player) == _uidd || (getPlayerUID player) in _bypass_list) then {
				hint format ["Benvenuto %1 nel tuo slot ---- %2",name player, getPlayerUID player];
			} else {
				//titleText ["", "BLACK OUT"];
				//sleep 5;
				//disableUserInput true;
				for "_sec" from 10 to 1 step -1 do {
					_kickvar = format ["<t size='3' color='#ff0000'>Slot riservato verrai kickato in %1 ---- %2</t>",_sec, name player];
					titleText [_kickvar, "BLACK IN", -1,true,true];
					playSound "FD_CP_Not_Clear_F"; playSound "FD_CP_Not_Clear_F"; playSound "FD_CP_Not_Clear_F";
					sleep 1;	
				};
				//disableUserInput false;
				[((name player) + " ha provato ad entrare in uno slot riservato")] remoteExec ["AZM_SYSTEMCHAT"];
				diag_log format ["Alezm>> %1 >> %2 ---- %3 ha provato ad entrare in uno slot riservato",time,getPlayerUID player,name player];
				sleep .1;
				//failMission "LOSER";
				["RES SLOT",false,.1] call BIS_fnc_endMission;
			};	
		};
	};
};
[] call AZM_SLOTS;

AZM_SYSTEMCHAT = {
	_syschat = _this select 0;
	systemChat _syschat;
};

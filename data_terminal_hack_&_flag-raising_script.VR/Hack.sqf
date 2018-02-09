/*
	Autore: Alezm
	Script: holdaction.sqf
	Creato il: 09/01/2018
	
	To start the script place a data terminal on your mission "Land_DataTerminal_01_F" and give him a variable name something similar to TERMINAL1
	if you want to add more terminals give a name TERMINAL2 and here copy and paste the new terminal.
	
	in the init.sqf add: [] execVM "hack.sqf";        or if the file is in a folder:   [] execVM "script\hack.sqf";
*/

azm_terminal = {
	[term1] call azm_addactionhandler; 
	[term2] call azm_addactionhandler;
	[term3] call azm_addactionhandler;
};

//BIS_fnc_dataTerminalAnimate      //BIS_fnc_holdActionAdd
azm_variabili = {
	nome = "<t color='#ff0000' size='2'>HACKERA IL TERMINALE</t>";
	img1 = "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa";
	img2 = "";
	cond1 = "true";
	cond2 = "true";
	tickcode = [];
	augumenti = [];
	durata = 25;
	priorita = 0;
	removefinish = true;
	unconscious = false;
};

azm_animazioni = {
	[_this select 0] spawn {
		[(_this select 0), 0] call BIS_fnc_dataTerminalAnimate;
		sleep 1;
		[(_this select 0), 3] call BIS_fnc_dataTerminalAnimate;
	};
};

azm_avviso = {
	testoavviso = format ["<t color='#7FFF00' size='.9'>STO HACKERANDO IL %1 COPRITEMI</t>", _this select 0];
	[testoavviso, .8, -1, 10, 3] call BIS_fnc_dynamicText;
};

azm_hackinterrotto = {
	[_this select 0] spawn {
			testochat = format ["___RIPRISTINO_%1___", _this select 0];   
			systemchat "___HACK_INTERROTO___";
			sleep 0.6;
			removeAllActions (_this select 0);
			systemchat "___HACK_INTERROTO___";     
			sleep 0.6;
			systemchat testochat;
			sleep 0.6;
			systemchat "___RIPRISTINO_CODICI_DI_SICUREZZA___";
			sleep 0.6;
			systemchat "___CHIUSURA_SISTEMA___";
			sleep 2;
			[(_this select 0), 0] call BIS_fnc_dataTerminalAnimate;
	};
};

azm_hackcompleto = {
	[_this select 0] spawn {
		testo = format ["<t color='#ff0000' size='.9'>IL TERMINALE %1 E STATO HACKERATO<br />SONO STATI PRESI TUTTI I DATI CON SUCCESSO</t>",_this select 0];
		[testo, .8, -1, 10, 3] call BIS_fnc_dynamicText;
		removeAllActions (_this select 0);
		[(_this select 0), 2] call BIS_fnc_dataTerminalAnimate;
		sleep 1;
	};
};

azm_azionehackc = {};

azm_addactionhandler = {
	[_this select 0] spawn {
	[] call azm_variabili;
	[(_this select 0), nome, img1,img2, cond1,cond2,{[_this select 0] call azm_animazioni;[_this select 0] remoteExec["azm_avviso"]},{},{[_this select 0] remoteExec ["azm_hackcompleto"]}, {[_this select 0] remoteExec ["azm_hackinterrotto"]}, augumenti,durata,priorita,removefinish,unconscious] call BIS_fnc_holdActionAdd; 
	};
};
sleep 1;
[] call azm_terminal;
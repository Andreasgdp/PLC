
PROGRAM _INIT
	(* Insert code here *)
	enable := TRUE;
	next_state := FALSE;
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	state_machine(EN := enable, NS := next_state);
	state := state_machine.Q;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	
END_PROGRAM


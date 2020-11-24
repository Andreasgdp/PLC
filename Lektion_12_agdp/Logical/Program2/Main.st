
PROGRAM _INIT
	(* Insert code here *)
	 input := FALSE;
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	r_trigger(in := input);
	output := r_trigger.Q;
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


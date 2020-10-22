
PROGRAM _INIT
	(* Insert code here *)
	falling_edge := FALSE;
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	IF input = TRUE THEN
		old_input := FALSE;
	ELSE
		old_input := TRUE;
	END_IF;
	
	IF input = FALSE AND old_input = TRUE THEN
		falling_edge := TRUE;
	ELSE
		falling_edge := FALSE;
	END_IF;
	

	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


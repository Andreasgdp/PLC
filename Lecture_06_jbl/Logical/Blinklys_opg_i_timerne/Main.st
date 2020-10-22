
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	timer(IN := NOT timer.Q, PT := T#1s);
	// Ovenstånde udtryk kan også skrives som følgende, men er mindre smart
	// timer.IN := NOT timer.Q;
	// timer.PT := T#1s;
	// timer();
	
	IF timer.Q THEN
		light := NOT light;
	END_IF
	
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


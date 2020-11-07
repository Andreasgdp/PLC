
PROGRAM _INIT
	(* Insert code here *)
	T1_state := T1_GO;
	T2_state := T2_STOPPED;
	timer.IN := FALSE;
	 
END_PROGRAM

PROGRAM _CYCLIC
	// Trafficlight 1
	// Tilstandsskiftlogik / state change logic
	CASE T1_state OF
		T1_GO:
			IF shift THEN
				T1_state := T1_STOP;
			END_IF
			T2_state := T2_STOPPED;
		T1_STOP:
			timer.PT := T#2s;
			IF timer.Q THEN
				T1_state := T1_STOPPED;
			END_IF
		T1_STOPPED:
			timer.IN := FALSE;
			timer.PT := T#2s;
			IF timer.Q THEN
				T2_state := T2_GO;
			END_IF
			IF shift THEN
				T2_state := T2_STOP;
				timer.IN := FALSE;
				timer.PT := T#2s;
				IF timer.Q THEN
					T1_state := T1_READY;
					T2_state := T2_STOPPED;
					timer.IN := FALSE;
				END_IF
			END_IF
			T2_state := T2_READY;
		T1_READY:
			timer.PT := T#2s;
			IF timer.Q THEN
				T1_state := T1_GO;
				timer.IN := FALSE;
			END_IF
	END_CASE
	timer();

	// OUTPUT LOGIC
	CASE T1_state OF
		T1_GO:
			T1_red := FALSE;
			T1_yellow := FALSE;
			T1_green := TRUE;
		T1_STOP:
			T1_red := FALSE;
			T1_yellow := TRUE;
			T1_green := FALSE;
		T1_STOPPED:
			T1_red := TRUE;
			T1_yellow := FALSE;
			T1_green := FALSE;
		T1_READY:
			T1_red := TRUE;
			T1_yellow := TRUE;
			T1_green := FALSE;
	END_CASE
	
	
	// Trafficlight 2
	// OUTPUT LOGIC
	CASE T2_state OF
		T2_GO:
			T2_red := FALSE;
			T2_yellow := FALSE;
			T2_green := TRUE;
		T2_STOP:
			T2_red := FALSE;
			T2_yellow := TRUE;
			T2_green := FALSE;
		T2_STOPPED:
			T2_red := TRUE;
			T2_yellow := FALSE;
			T2_green := FALSE;
		T2_READY:
			T2_red := TRUE;
			T2_yellow := TRUE;
			T2_green := FALSE;
	END_CASE
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


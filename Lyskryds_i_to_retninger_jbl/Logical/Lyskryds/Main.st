
PROGRAM _INIT
	(* Insert code here *)
	T1_state := GO;
	T2_state := STOPPED;
	castate := a;
	
END_PROGRAM

PROGRAM _CYCLIC
	// Trafficlight 1
	// Tilstandsskiftlogik / state change logic
	timer.IN := TRUE;
	CASE T1_state OF
		GO:
			timer.PT := T#2s;
			IF timer.Q AND shift THEN
				T1_state := STOP;
				timer.IN := FALSE;
			END_IF
			T2_state := STOPPED;
			
		STOP:
			timer.PT := T#2s;
			IF timer.Q THEN
				T1_state := STOPPED;
				timer.IN := FALSE;
			END_IF
			T2_state := STOPPED;
			
		STOPPED:
			CASE castate OF
				a:
					T2_state := READY;
					castate := b;
				b:
					timer.PT := T#2s;
					IF timer.Q THEN
						T2_state := GO;
						timer.IN := FALSE;
						castate := c;
					END_IF
				c:
					timer.PT := T#2s;
					IF T2_state = GO AND timer.Q AND shift THEN
						T2_state := STOP;
						timer.IN := FALSE;
						castate := d;
					END_IF
				d:	
					timer.PT := T#2s;
					IF timer.Q THEN
						T2_state := STOPPED;
						T1_state := READY;
						timer.IN := FALSE;
					END_IF
			END_CASE
			
		READY:
			castate := a;
			timer.PT := T#2s;
			IF timer.Q THEN
				T1_state := GO;
				timer.IN := FALSE;
			END_IF
	END_CASE
	timer();

	// OUTPUT LOGIC
	CASE T1_state OF
		GO:
			T1_red := FALSE;
			T1_yellow := FALSE;
			T1_green := TRUE;
		STOP:
			T1_red := FALSE;
			T1_yellow := TRUE;
			T1_green := FALSE;
		STOPPED:
			T1_red := TRUE;
			T1_yellow := FALSE;
			T1_green := FALSE;
		READY:
			T1_red := TRUE;
			T1_yellow := TRUE;
			T1_green := FALSE;
	END_CASE
	
	
	// Trafficlight 2
	// OUTPUT LOGIC
	CASE T2_state OF
		GO:
			T2_red := FALSE;
			T2_yellow := FALSE;
			T2_green := TRUE;
		STOP:
			T2_red := FALSE;
			T2_yellow := TRUE;
			T2_green := FALSE;
		STOPPED:
			T2_red := TRUE;
			T2_yellow := FALSE;
			T2_green := FALSE;
		READY:
			T2_red := TRUE;
			T2_yellow := TRUE;
			T2_green := FALSE;
	END_CASE
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


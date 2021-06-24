
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	// Tilstandsskiftlogik / state change logic
	timer.IN := TRUE;
	CASE castate OF
		STOPPED:
			timer.PT := T#5s;
			IF timer.Q THEN
				castate := READY;
				timer.IN := FALSE;
			END_IF;
		READY:
			timer.PT := T#3s;
			IF timer.Q THEN
				castate := GO;
				timer.IN := FALSE;
			END_IF;
		GO:
			timer.PT := T#7s;
			IF timer.Q THEN
				castate := STOP;
				timer.IN := FALSE;
			END_IF;
		STOP:
			timer.PT := T#3s;
			IF timer.Q THEN
				castate := STOPPED;
				timer.IN := FALSE;
			END_IF;
	END_CASE
	timer();

	
	// OUTPUT LOGIC
	CASE castate OF
		STOPPED:
			yellow := FALSE;
			red := TRUE;
		READY:
			yellow := TRUE;
		GO:
			red := FALSE;
			yellow := FALSE;
			green := TRUE;
		STOP:
			yellow := TRUE;
			green := FALSE;
			
	END_CASE
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


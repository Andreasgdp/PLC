
PROGRAM _INIT
	(* Insert code here *)
	timer.IN := FALSE;
END_PROGRAM

PROGRAM _CYCLIC
	// Tilstandsskiftlogik / state change logic
	// "di" stands for digital input.
	CASE castate OF
		OPEN:
			timer.IN := FALSE;
			IF diClose THEN
	  			castate := CLOSING;
			END_IF;
		CLOSING:
			timer.IN := TRUE;
			timer.PT := T#5s;
			IF timer.Q THEN
				castate := CLOSED;
			END_IF;
		CLOSED:
			timer.IN := FALSE;
			IF diOpen THEN
				castate := OPENING;
			END_IF;
		OPENING:
			timer.IN := TRUE;
			timer.PT := T#6s;
			IF timer.Q THEN
				castate := OPEN;
			END_IF;
			
	END_CASE
	timer();

	
	// OUTPUT LOGIC
	// "do" stands for digital output.
	CASE castate OF
		OPEN:
			doMoveUp := FALSE;
			doMoveDown := FALSE;
		CLOSING:
			doMoveUp := FALSE;
			doMoveDown := TRUE;
		CLOSED:
			doMoveUp := FALSE;
			doMoveDown := FALSE;
		OPENING:
			doMoveUp := TRUE;
			doMoveDown := FALSE;
			
			
	END_CASE
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


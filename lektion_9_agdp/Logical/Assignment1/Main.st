
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	// Tilstandsskiftlogik / state change logic
	CASE castate OF
		CARALARM_DISARMED:
			IF diRemote AND flag THEN
				castate := CARALARM_ARMED;
			END_IF
			
		CARALARM_ARMED:
			IF diRemote AND flag THEN
				castate := CARALARM_DISARMED;
			ELSIF diSensorVibration THEN
				castate := CARALARM_INTRUSION;
			END_IF
			
		CARALARM_INTRUSION:
			IF diRemote AND flag THEN
				castate := CARALARM_DISARMED;
			END_IF
	END_CASE

	flag := NOT old_remote AND diRemote;
	old_remote := diRemote;

	
	// Output logic
	CASE castate OF
		CARALARM_DISARMED:
			doSiren := FALSE;
			
		CARALARM_ARMED:
			
		CARALARM_INTRUSION:
			doSiren := TRUE;
	END_CASE
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

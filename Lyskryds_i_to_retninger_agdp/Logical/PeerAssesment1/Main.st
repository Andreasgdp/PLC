
PROGRAM _INIT
	(* Insert code here *)
END_PROGRAM

PROGRAM _CYCLIC
	
	// Tilstandsskift
	
	CASE trafficst OF
		TRAFFIC_LIGHT1_RED:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q AND shift THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT1_REDYELLOW;
			END_IF
		
		TRAFFIC_LIGHT1_GREEN:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q AND shift THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT1_YELLOW;
			END_IF
			
		TRAFFIC_LIGHT1_REDYELLOW:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT1_GREEN;
			END_IF
			
		TRAFFIC_LIGHT1_YELLOW:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT1_RED;
				trafficst := TRAFFIC_LIGHT2_REDYELLOW;
			END_IF
			
		
		
		TRAFFIC_LIGHT2_RED:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q AND shift THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT2_REDYELLOW;
			END_IF
			
		TRAFFIC_LIGHT2_GREEN:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q AND shift THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT2_YELLOW;
			END_IF
			
		TRAFFIC_LIGHT2_REDYELLOW:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT2_GREEN;
			END_IF
			
		TRAFFIC_LIGHT2_YELLOW:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT2_RED;
				trafficst := TRAFFIC_LIGHT1_REDYELLOW;
			END_IF
			
	END_CASE
	
	
	
	// Output logic
	CASE trafficst OF
		TRAFFIC_LIGHT1_RED:
			doRed := TRUE;
			doYellow := FALSE;
			doGreen := FALSE;
			doRed2 := FALSE;
			doYellow2 := FALSE;
			doGreen2 := TRUE;
			
		TRAFFIC_LIGHT1_REDYELLOW:
			doRed := TRUE;
			doYellow := TRUE;
			doGreen := FALSE;
			doRed2 := TRUE;
			doYellow2 := FALSE;
			doGreen2 := FALSE;
			
		TRAFFIC_LIGHT1_YELLOW:
			doRed := FALSE;
			doYellow := TRUE;
			doGreen := FALSE;
			doRed2 := TRUE;
			doYellow2 := FALSE;
			doGreen2 := FALSE;
			
		TRAFFIC_LIGHT1_GREEN:
			doRed := FALSE;
			doYellow := FALSE;
			doGreen := TRUE;
			doRed2 := TRUE;
			doYellow2 := FALSE;
			doGreen2 := FALSE;
		
		TRAFFIC_LIGHT2_RED:
			doRed2 := TRUE;
			doYellow2 := FALSE;
			doGreen2 := FALSE;
			doRed := FALSE;
			doYellow := FALSE;
			doGreen := TRUE;
		
		TRAFFIC_LIGHT2_REDYELLOW:
			doRed2 := TRUE;
			doYellow2 := TRUE;
			doGreen2 := FALSE;
			doRed := TRUE;
			doYellow := FALSE;
			doGreen := FALSE;
			
		TRAFFIC_LIGHT2_YELLOW:
			doRed2 := FALSE;
			doYellow2 := TRUE;
			doGreen2 := FALSE;
			doRed := TRUE;
			doYellow := FALSE;
			doGreen := FALSE;
			
		TRAFFIC_LIGHT2_GREEN:
			doRed2 := FALSE;
			doYellow2 := FALSE;
			doGreen2 := TRUE;
			doRed := TRUE;
			doYellow := FALSE;
			doGreen := FALSE;			
	END_CASE
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


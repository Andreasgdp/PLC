
PROGRAM _INIT
	(* Insert code here *)
 trafficst := TRAFFIC_LIGHT_RED;		 
END_PROGRAM

PROGRAM _CYCLIC
//Når der er grønt i en retning skal modsatte retning have rødt
//Når der er gul i en retning skal der være rødt i modsat retning
//Når der skiftes fra gul til rød i en retning skal der skiftes til gulrød i anden retning
//Der skal anvendes timer til at have 2 sekunder mellem farveskift.
//Der skal anvendes et signal til at signalere start for hvornår, der skal skiftes fra grøn til gul
	
	(* Insert code here *)
	// Tilstandsskift
	
	CASE trafficst OF
		TRAFFIC_LIGHT_RED:
			IF (traffic2st = TRAFFIC_LIGHT_RED) THEN
				trafficst := TRAFFIC_LIGHT_REDYELLOW;
			END_IF
			
		TRAFFIC_LIGHT_REDYELLOW:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT_GREEN;
			END_IF
			
		TRAFFIC_LIGHT_YELLOW:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT_RED;
			END_IF
			
		TRAFFIC_LIGHT_GREEN:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q AND shift THEN
				timer(IN := FALSE);
				trafficst := TRAFFIC_LIGHT_YELLOW;
			END_IF
		
	END_CASE
	
	CASE traffic2st OF
		TRAFFIC_LIGHT_RED:
			IF (trafficst = TRAFFIC_LIGHT_RED) THEN
				traffic2st := TRAFFIC_LIGHT_REDYELLOW;
			END_IF
			
		TRAFFIC_LIGHT_REDYELLOW:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q THEN
				timer(IN := FALSE);
				traffic2st := TRAFFIC_LIGHT_GREEN;
			END_IF
			
		TRAFFIC_LIGHT_YELLOW:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q THEN
				timer(IN := FALSE);
				traffic2st := TRAFFIC_LIGHT_RED;
			END_IF
			
		TRAFFIC_LIGHT_GREEN:
			timer(IN := TRUE, PT := T#2000ms);
			IF timer.Q AND shift THEN
				timer(IN := FALSE);
				traffic2st := TRAFFIC_LIGHT_YELLOW;
			END_IF
			
		END_CASE
	
	
	
	// Output logic
	CASE trafficst OF
		TRAFFIC_LIGHT_RED:
			doRed := TRUE;
			doYellow := FALSE;
			doGreen := FALSE;
			
		TRAFFIC_LIGHT_REDYELLOW:
			doRed := TRUE;
			doYellow := TRUE;
			doGreen := FALSE;
			
		TRAFFIC_LIGHT_YELLOW:
			doRed := FALSE;
			doYellow := TRUE;
			doGreen := FALSE;
			
		TRAFFIC_LIGHT_GREEN:
			doRed := FALSE;
			doYellow := FALSE;
			doGreen := TRUE;
	END_CASE
	
	CASE traffic2st OF
		TRAFFIC_LIGHT_RED:
			doRed2 := TRUE;
			doYellow2 := FALSE;
			doGreen2 := FALSE;
			
		TRAFFIC_LIGHT_REDYELLOW:
			doRed2 := TRUE;
			doYellow2 := TRUE;
			doGreen2 := FALSE;
			
		TRAFFIC_LIGHT_YELLOW:
			doRed2 := FALSE;
			doYellow2 := TRUE;
			doGreen2 := FALSE;
			
		TRAFFIC_LIGHT_GREEN:
			doRed2 := FALSE;
			doYellow2 := FALSE;
			doGreen2 := TRUE;
		
	END_CASE
	
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


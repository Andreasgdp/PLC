
PROGRAM _INIT
	(* Insert code here *)
	ready := TRUE;
	 
END_PROGRAM

PROGRAM _CYCLIC
	// Tilstandsskiftlogik / state change logic
	timer1.IN := TRUE;
	CASE tlight1 OF
		RED:
			timer1.PT := T#2s;
			IF timer1.Q AND direction AND ready THEN
				ready := FALSE;
				tlight1 := REDYELLOW;
				timer1.IN := FALSE;
			END_IF;
		REDYELLOW:
			timer1.PT := T#2s;
			IF timer1.Q AND direction THEN
				tlight1 := GREEN;
				timer1.IN := FALSE;
			END_IF;
		GREEN:
			timer1.PT := T#2s;
			IF timer1.Q AND direction AND shift THEN
				tlight1 := YELLOW;
				timer1.IN := FALSE;
			END_IF;
		YELLOW:
			direction := 0;
			timer1.PT := T#2s;
			IF timer1.Q THEN
				ready := TRUE;
				tlight1 := RED;
				timer1.IN := FALSE;
			END_IF;
	END_CASE
	timer1();
	
	timer2.IN := TRUE;
	CASE tlight2 OF
		RED:
			timer2.PT := T#2s;
			IF timer2.Q AND NOT(direction) AND ready THEN
				ready := FALSE;
				tlight2 := REDYELLOW;
				timer2.IN := FALSE;
			END_IF;
		REDYELLOW:
			timer2.PT := T#2s;
			IF timer2.Q AND NOT(direction) THEN
				tlight2 := GREEN;
				timer2.IN := FALSE;
			END_IF;
		GREEN:
			timer2.PT := T#2s;
			IF timer2.Q AND NOT(direction) AND shift THEN
				tlight2 := YELLOW;
				timer2.IN := FALSE;
			END_IF;
		YELLOW:
			direction := 1;
			timer2.PT := T#2s;
			IF timer2.Q THEN
				ready := TRUE;
				tlight2 := RED;
				timer2.IN := FALSE;
			END_IF;
	END_CASE
	timer2();
	
	// OUTPUT LOGIC
	CASE tlight1 OF
		RED:
			red1 := TRUE;
			yellow1 := FALSE;
			green1 := FALSE;
		REDYELLOW:
			red1 := TRUE;
			yellow1 := TRUE;
			green1 := FALSE;
		GREEN:
			red1 := FALSE;
			yellow1 := FALSE;
			green1 := TRUE;
		YELLOW:
			red1 := FALSE;
			yellow1 := TRUE;
			green1 := FALSE;
	END_CASE

	// OUTPUT LOGIC
	CASE tlight2 OF
		RED:
			red2 := TRUE;
			yellow2 := FALSE;
			green2 := FALSE;
		REDYELLOW:
			red2 := TRUE;
			yellow2 := TRUE;
			green2 := FALSE;
		GREEN:
			red2 := FALSE;
			yellow2 := FALSE;
			green2 := TRUE;
		YELLOW:
			red2 := FALSE;
			yellow2 := TRUE;
			green2 := FALSE;
	END_CASE
	
	
	shift := NOT old_sensor AND diSensor;
	old_sensor := diSensor;
	IF shift = NOT(diSensor) THEN
		diSensor := FALSE;
	END_IF;

END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


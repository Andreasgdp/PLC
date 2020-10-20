
PROGRAM _INIT
	(* Insert code here *)
	lights[15] := TRUE;
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	IF (shift) THEN
		timer(IN := NOT timer.Q, PT := T#10ms);
		FOR i := 0 TO 15 BY 1 DO
			IF timer.Q THEN
				IF (i = 0) THEN
					lights[0] := lights[15];
					lights[15] := FALSE;
				ELSE
					lights[i] := lights[i - 1];
					lights[i - 1] := FALSE;
				END_IF;
			END_IF
		END_FOR;
	END_IF;		
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


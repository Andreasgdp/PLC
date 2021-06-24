
PROGRAM _INIT
	(* Insert code here *)
	
	lights[0] := TRUE;
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	IF (shift) THEN
		tmp := lights[0];
		lights[0] := lights[1];
		lights[1] := lights[2];
		lights[2] := lights[3];
		lights[3] := lights[4];
		lights[4] := lights[5];
		lights[5] := lights[6];
		lights[6] := lights[7];
		lights[7] := lights[8];
		lights[8] := lights[9];
		lights[9] := lights[10];
		lights[10] := lights[11];
		lights[11] := lights[12];
		lights[12] := lights[13];
		lights[13] := lights[14];
		lights[14] := lights[15];
		lights[15] := tmp;
	END_IF
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


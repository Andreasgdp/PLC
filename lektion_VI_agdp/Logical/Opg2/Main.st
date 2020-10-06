
PROGRAM _INIT
	(* Insert code here *)
	array[0] := TRUE;
	shift := TRUE;
	


END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	IF shift THEN
		tmp := array[0];
		array[0] := array[1];
		array[1] := array[2];
		array[2] := array[3];
		array[3] := array[4];
		array[4] := array[5];
		array[5] := array[6];
		array[6] := array[7];
		array[7] := array[8];
		array[8] := array[9];
		array[9] := array[10];
		array[10] := array[11];
		array[11] := array[12];
		array[12] := array[13];
		array[13] := array[14];
		array[14] := array[15];
		array[15] := tmp;
	END_IF;

END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)

END_PROGRAM



PROGRAM _INIT
	(* Insert code here *)
	
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	doConvTop := NOT(doConvBottom) AND NOT(doLiftUnload) AND doLiftTop AND NOT(doBoxLift);
	doConvBottom := NOT(doConvTop) AND NOT(doLiftUnload) AND doLiftBottom AND NOT(doBoxLift);
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


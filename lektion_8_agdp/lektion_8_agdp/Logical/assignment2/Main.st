
PROGRAM _INIT
	(* Insert code here *)
	
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	doConvTop    := NOT(doConvBot) AND NOT(doLiftUnload) AND doLiftTop AND NOT(doBoxLift);
	doConvBot    := NOT(doConvTop) AND NOT(doLiftUnload) AND doLiftBot AND NOT(doBoxLift);
	doConvLift   := ((doConvTop OR doConvBot) AND NOT(doBoxLift)) OR (doLiftUnload);
	doLiftTop    := NOT(doLiftBot) AND NOT(doLiftUnload);
	doLiftBot    := NOT(doLiftTop) AND NOT(doLiftUnload);
	doLiftUnload := doBoxLift;
	

	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


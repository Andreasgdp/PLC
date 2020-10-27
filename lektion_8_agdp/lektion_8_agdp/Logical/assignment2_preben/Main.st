PROGRAM _INIT
	doConvTop := FALSE;
	doConvBottom := FALSE;
	doLiftTop := FALSE;
	doLiftBottom := FALSE;
	doLiftUnload := FALSE;

 END_PROGRAM



PROGRAM _CYCLIC

 	(* diConvTop : Packagage ready at top lift position *)
 	(* diConvBottom : Packagage ready at bottom lift position *)
 	(* diLiftTop : Lift is at top position *)
 	(* diLiftBottom : Lift is at bottom position *)
 	(* diLiftUnload : Lift is at unload position *)
 	(* diBoxOnLift : Box is on the lift *)

 	// Conveyers kører altid med mindre censor har registreret en pakke
 	// (eller liften er klar til pakke)
	doConvTop := (NOT diConvTop) OR (diLiftTop AND NOT diBoxOnLift AND NOT doLiftBottom);
	doConvBottom := (NOT diConvBottom) OR (diLiftBottom AND NOT diBoxOnLift AND NOT doLiftTop);

	// Hvis der er noget at hente, skal lift køre til top hvis den ikke allerede er på vej et andet sted hen
	// derudover har nederste conveyer første prioritet
	// heri indgår ikke diLiftBottom, da nederste har første prioritet og sensor vil blive
	// aktiveret når den går gennem.
	doLiftTop := (doLiftTop AND NOT diLiftTop) OR (diConvTop AND NOT diLiftTop AND NOT diConvBottom AND NOT doLiftBottom AND NOT doLiftUnload);

	// Samme strategi til nederste, her prioriteres denne dog først
	doLiftBottom := (doLiftBottom AND NOT diLiftBottom) OR (diConvBottom AND NOT diLiftTop AND NOT diLiftBottom AND NOT doLiftTop AND NOT doLiftUnload);

	// Kør til unload position: box på liften
	doLiftUnload := diBoxOnLift;

	// Der mangler logik til at læsse af liften, men dette er ikke en del af opgaven
	// Her "fjerner" vi kassen fra liften
	
	IF (diLiftUnload) THEN
		diBoxOnLift := FALSE;
	END_IF

 END_PROGRAM


PROGRAM _EXIT
 (* Insert code here *)

 END_PROGRAM
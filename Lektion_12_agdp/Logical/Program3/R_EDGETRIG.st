
(* TODO: Add your comment here *)
FUNCTION_BLOCK RF_EDGETRIG
	
	Q := (NOT old_in AND in) OR (old_in AND NOT in);
	old_in := in;
	
END_FUNCTION_BLOCK


(* TODO: Add your comment here *)
FUNCTION_BLOCK R_EDGETRIG
	
	Q := NOT old_in AND in;
	old_in := in;
	
END_FUNCTION_BLOCK

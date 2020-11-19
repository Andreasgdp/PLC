
(* TODO: Add your comment here *)
FUNCTION_BLOCK STATE_MACHINE
	
	CASE Q OF
		STOP:
			IF EN THEN
				Q := STARTING;
			END_IF;
		STARTING:
			IF NOT EN THEN
				Q := STOP;
			ELSE
				IF NS THEN
					Q := EXECUTE;
				END_IF;
			END_IF;
		EXECUTE:
			IF NOT EN THEN
				Q := STOP;
			ELSE
				IF NS THEN
	  				Q := COMPLETE;
				END_IF;
			END_IF;
			
		COMPLETE:
			IF NOT EN THEN
				Q := STOP;
			ELSE
				IF NS THEN
					Q := RESETTING;
				END_IF;
			END_IF;
			
		RESETTING:
			IF NOT EN THEN
				Q := STOP;
			ELSE
				IF NS THEN
					Q := STARTING;
				END_IF;
			END_IF;
			
		  

	END_CASE;
	
END_FUNCTION_BLOCK


{REDUND_ERROR} FUNCTION Addition : INT (* *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		a : INT;
		b : INT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION_BLOCK FUNKBLOK (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		a : {REDUND_UNREPLICABLE} INT;
		b : {REDUND_UNREPLICABLE} INT;
	END_VAR
	VAR_OUTPUT
		Q : INT;
	END_VAR
	VAR RETAIN
		d : INT;
	END_VAR
END_FUNCTION_BLOCK
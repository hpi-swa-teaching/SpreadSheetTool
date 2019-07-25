initialize-release
initialize

	super initialize.
	input := output := ''.
	isFormula := false.
	servers := WeakSet new.
	compiler := Compiler new.
	isBusy := false.
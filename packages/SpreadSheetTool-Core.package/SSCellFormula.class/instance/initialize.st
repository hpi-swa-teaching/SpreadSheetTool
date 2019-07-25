initialize-release
initialize

	super initialize.
	input := output := ''.
	isFormula := false.
	servers := WeakSet new.
	isBusy := false.
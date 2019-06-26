initialize-release
initialize

	super initialize.
	self basicEditMode: false.
	hasUnacceptedEdits := false.
	latestValue := ''.
	isBusy := false.
	clients := Set new.
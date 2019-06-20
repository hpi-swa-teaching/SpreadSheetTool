initialize-release
initialize

	super initialize.
	self basicEditMode: false.
	hasUnacceptedEdits := false.
	isBusy := false.
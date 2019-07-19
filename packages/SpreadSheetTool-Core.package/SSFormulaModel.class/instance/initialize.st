initialize-release
initialize

	super initialize.
	isBusy := false.
	unacceptedContents := ''.
	clients := Set new.
	servers := Set new.
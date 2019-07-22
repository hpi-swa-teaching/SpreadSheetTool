initialize-release
initialize

	super initialize.
	self input: ''.
	output := ''.
	servers := WeakSet new.
	isBusy := false.
	self isHybrid: false.
initialize-release
initialize

	super initialize.
	self input: ''.
	servers := WeakSet new.
	isBusy := false.
	self isHybrid: false.
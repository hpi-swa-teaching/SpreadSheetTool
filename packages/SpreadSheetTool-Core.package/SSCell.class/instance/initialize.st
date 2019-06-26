initialize-release
initialize

	super initialize.
	self rawValue: ''.
	clients := Set new.
	servers := Set new.
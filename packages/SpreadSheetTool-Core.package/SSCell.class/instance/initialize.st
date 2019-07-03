initialize-release
initialize

	super initialize.
	value := ''.
	self rawValue: value.
	servers := Set new.
testing
testIsRegisteredInWorldMenu

	| menuEntry |
	menuEntry := (TheWorldMenu registry detect: [:anEntry |
		anEntry first = 'SqueakSheet']) second.
	self 
		assertWindowOpensWhile: [menuEntry first perform: menuEntry second] 
		in: [self findAllToolWindows]
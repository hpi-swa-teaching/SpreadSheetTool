testing
testIsRegisteredInWorldMenu

	| menuEntry |
	menuEntry := (TheWorldMenu registry detect: [:anEntry |
		anEntry first = 'SqueakSheet']) second.
	self testWindowOpensWhile: [menuEntry first perform: menuEntry second]
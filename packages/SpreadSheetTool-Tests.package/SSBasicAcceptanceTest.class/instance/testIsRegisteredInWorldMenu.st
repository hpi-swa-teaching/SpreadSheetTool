testing
testIsRegisteredInWorldMenu
	"Test for #13 (Button to open a SqueakSheet)"

	| menuEntry |
	menuEntry := (TheWorldMenu registry
		detect: [:anEntry |
			anEntry first = 'SqueakSheet']
		ifNone: [self fail: 'SqueakSheet button not found']) second.
	
	self assertWindowOpensWhile: [
		menuEntry first perform: menuEntry second].
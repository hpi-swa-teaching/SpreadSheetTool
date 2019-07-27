testing
testIsRegisteredInWorldMenu
	"Acceptance test for #13 (Button to open a SqueakSheet)"

	| menuEntry |
	menuEntry := (TheWorldMenu registry
		detect: [:anEntry |
			anEntry first = 'SqueakSheet']
		ifNone: [self fail: 'SqueakSheet button not found']) second.	
	self assertToolWindowOpensWhile: [
		menuEntry first perform: menuEntry second].
assertions
assertWindowOpensWhile: anActionBlock in: aCollectBlock
	"We cannot use MFT here as we want to test the opening procedure itself"

	| newWindows |
	newWindows := self findWindowsOpenedWhile: anActionBlock in: aCollectBlock.
	self 
		assert: 1 
		equals: newWindows size 
		description: 'Expected new window but it wasn''t opened'.	
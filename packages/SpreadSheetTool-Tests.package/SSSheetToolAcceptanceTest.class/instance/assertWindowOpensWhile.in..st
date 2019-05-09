assertions
assertWindowOpensWhile: anActionBlock in: aCollectBlock

	| newWindows |
	newWindows := self findWindowsOpenedWhile: anActionBlock in: aCollectBlock.
	self 
		assert: 1 
		equals: newWindows size 
		description: 'Expected new window but it wasn''t opened'.	
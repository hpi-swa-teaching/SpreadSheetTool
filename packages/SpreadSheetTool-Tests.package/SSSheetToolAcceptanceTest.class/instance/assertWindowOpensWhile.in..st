assertions
assertWindowOpensWhile: anActionBlock in: aCollectBlock

	| newWindows |
	newWindows := self findWindowsOpenedWhile: anActionBlock in: aCollectBlock.
	self 
		assert: newWindows isSingleton
		description: 'Expected new window but it wasn''t opened'.	
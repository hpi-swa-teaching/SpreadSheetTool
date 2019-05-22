assertions
assertWindowOpensWhile: anActionBlock

	| newWindows |
	newWindows := self
		findWindowsOpenedWhile: anActionBlock
		in: [self findAllToolWindows].
	self 
		assert: newWindows isSingleton
		description: 'Expected new window but it wasn''t opened'.
	^ newWindows
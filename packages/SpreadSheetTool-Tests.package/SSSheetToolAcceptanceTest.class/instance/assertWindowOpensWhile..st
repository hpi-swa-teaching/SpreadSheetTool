assertions
assertWindowOpensWhile: anActionBlock

	| newWindows |
	newWindows := self
		findWindowsOpenedWhile: anActionBlock.
	self 
		assert: newWindows isSingleton
		description: 'Expected new window but it wasn''t opened'.
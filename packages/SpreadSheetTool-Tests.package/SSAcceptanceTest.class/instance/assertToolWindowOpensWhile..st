assertions
assertToolWindowOpensWhile: anActionBlock

	| newWindows |
	newWindows := self findToolWindowsOpenedWhile: anActionBlock.
	self 
		assert: newWindows isUnique
		description: 'Expected new window but it wasn''t opened'.
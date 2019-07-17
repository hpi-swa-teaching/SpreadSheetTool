assertions
denyToolWindowOpensWhile: anActionBlock

	| newWindows |
	newWindows := self findToolWindowsOpenedWhile: anActionBlock.
	self 
		assert: newWindows isNegative
		description: 'Expected no window but at least one was opened'.
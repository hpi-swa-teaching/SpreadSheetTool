testing
testSheetItHotkey

	| workspace |
	workspace := self findWindowOpenedWhile: [Workspace open].
	self wantsToTest: (self findWindowOpenedWhile: [
		(workspace findByCriteria: #isTextView)
			sendKeys: 'World';
			sendControl: $Q]).
	self setFormulaAt: self someCellIndex getter: 'self identityHash' setter: #default.
	self assert: World identityHash asString equals: (self findCellAt: self someCellIndex) read.
testing
testSheetItMenu

	| workspace menu |
	workspace := (self findWindowOpenedWhile: [Workspace open])
		findByCriteria: #isTextView.
	workspace
		sendKeys: 'World';
		sendKey: Character end. "close autocompletion"
	menu := self findMenuOpenedWhile: [
		workspace rightClick].
	self wantsToTest: (self findToolWindowOpenedWhile: [menu
		sendKeys: 'sheet it';
		sendKey: Character cr]).
	self setFormulaAt: self someCellIndex getter: 'self identityHash' setter: #default.
	self assert: World identityHash asString equals: (self findCellAt: self someCellIndex) read.
testing
testSheetItHaloIntegration

	| menu morph |
	morph := Morph new.
	menu := self subject createWrapperFor: (morph buildDebugMenu: self subject hand).
	self wantsToTest: (self findToolWindowOpenedWhile: [
		menu
			sendKeys: 'SqueakSheet';
			sendKey: Character cr]).
	self setFormulaAt: self someCellIndex getter: 'self identityHash' setter: #default.
	self assert: morph identityHash asString equals: (self findCellAt: self someCellIndex) read.
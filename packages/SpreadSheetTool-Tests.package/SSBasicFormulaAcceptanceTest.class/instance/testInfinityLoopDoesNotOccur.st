testing
testInfinityLoopDoesNotOccur
	"Regression test for #51"
	<longStage>
	
	| firstCell secondCell |
	firstCell := self findCellAtRow: 1 atColumn: 1.
	secondCell := self findCellAtRow: 1 atColumn: 2.
	
	firstCell sendKeys: '^ self right'.
	firstCell sendControlSave.
	
	secondCell sendKeys: '^ self left'.
	self
		should: [secondCell sendControlSave]
		raise: Error
		that: [:e | '*reference*' match: e messageText].
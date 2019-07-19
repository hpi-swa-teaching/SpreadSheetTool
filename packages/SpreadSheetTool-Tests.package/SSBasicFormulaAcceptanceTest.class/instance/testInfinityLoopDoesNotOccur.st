testing
testInfinityLoopDoesNotOccur
	"Regression test for #51"
	
	| firstCell secondCell |
	firstCell := self findCellAtRow: 1 atColumn: 1.
	secondCell := self findCellAtRow: 1 atColumn: 2.
	
	firstCell sendKeys: '^ cell right'.
	firstCell sendControlSave.
	
	secondCell sendKeys: '^ cell left'.
	self
		should: [secondCell sendControlSave]
		raise: Error
		that: [:e | '*reference*' match: e messageText].
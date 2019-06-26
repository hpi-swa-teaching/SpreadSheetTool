testing
testInfinityLoopDoesNotOccur
	"Regression test for #51"
	<longStage>
	
	| firstCell secondCell |
	firstCell := self findCellAtRow: 1 atColumn: 1.
	secondCell := self findCellAtRow: 1 atColumn: 2.
	
	firstCell sendKeys: '^ self right + 1'.
	self shouldOpenDebugger: [firstCell sendControlSave].
	
	secondCell sendKeys: '^ self left'.
	self
		should: [secondCell sendControlSave]
		notTakeMoreThan: self defaultTimeout seconds.
	secondCell releaseFocus.
	
	self assert: '' equals: secondCell read.
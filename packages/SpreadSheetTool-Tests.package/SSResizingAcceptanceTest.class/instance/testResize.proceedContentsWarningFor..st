testing per dimension
testResize: rowsOrColumns proceedContentsWarningFor: aMorph
	"Acceptance test for #36 (Warning for deleting cells by resizing dimensions)"

	| oldRange newRange |
	aMorph
		sendClearTextField;
		sendKeys: self someContent.
	
	oldRange := self measureRangeFor: rowsOrColumns.
	newRange := oldRange - 1.
	self
		should: [self resize: rowsOrColumns to: newRange]
		notify: 'delete'
		thenAnswer: true.
	self assert: newRange equals: (self measureRangeFor: rowsOrColumns).
testing per dimension
testResize: rowsOrColumns cancelContentsWarningFor: aMorph
	"Acceptance test for #36 (Warning for deleting cells by resizing dimensions)"

	| newRange oldRange |
	aMorph
		sendClearTextField;
		sendKeys: self someContent.

	oldRange := self measureRangeFor: rowsOrColumns.
	newRange := oldRange - 1.
	self
		should: [self resize: rowsOrColumns to: newRange]
		notify: 'delete'
		thenAnswer: false.
	self
		assert: oldRange equals: (self measureRangeFor: rowsOrColumns);
		assert: self someContent equals: aMorph read.
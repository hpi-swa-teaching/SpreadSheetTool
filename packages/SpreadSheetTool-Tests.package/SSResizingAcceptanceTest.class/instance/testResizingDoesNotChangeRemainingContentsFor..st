testing per dimension
testResizingDoesNotChangeRemainingContentsFor: dimension
	"Acceptance test for #5 (Resizable tables)"

	self
		into: (self findCellAt: self someCellIndex) put: self someFormula;
		into: (self findRowHeaderAt: self someRowIndex) put: self someContent;
		into: (self findColumnHeaderAt: self someColumnIndex) put: self someOtherContent.
	
	self resize: dimension to: (self someLargerRangeFor: dimension).
	
	self
		assert: self someFormula equals: (self findCellAt: self someCellIndex) focusAndRead;
		assert: self someContent equals: (self findRowHeaderAt: self someRowIndex) read;
		assert: self someOtherContent equals: (self findColumnHeaderAt: self someRowIndex) read.
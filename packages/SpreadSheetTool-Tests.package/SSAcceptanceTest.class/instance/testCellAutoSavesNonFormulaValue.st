testing
testCellAutoSavesNonFormulaValue
	"Test for #17"

	| cell |
	cell := self findAnyCell.
	
	cell sendKeys: self someContent.
	
	self
		assert: self someContent equals: cell focusAndRead;
		deny: cell hasUnacceptedEdits.
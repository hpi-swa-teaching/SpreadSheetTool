testing
testCellAutoSavesValue
	"Test for #17"

	| cell |
	cell := self findAnyCell.
	
	cell sendKeys: self someContent.
	
	self
		assert: self someContent equals: cell text asString;
		deny: cell hasUnacceptedEdits.
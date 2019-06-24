testing
testNonReferencedCellDoesAutosave

	| cell |
	cell := self findAnyCell.
	
	cell sendKeys: self someContent.
	
	self
		assert: self someContent equals: cell read;
		deny: cell hasUnacceptedEdits.
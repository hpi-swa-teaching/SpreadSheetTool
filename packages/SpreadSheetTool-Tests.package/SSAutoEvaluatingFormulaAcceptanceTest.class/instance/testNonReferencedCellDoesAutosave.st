testing
testNonReferencedCellDoesAutosave
	"Acceptance test for #48 (Automatic formula evaluation)"
	
	| cell |
	cell := self findCellAt: self someNotReferencedCellIndex.
	cell sendKeys: self someContent.
	self
		assert: self someContent equals: cell read;
		deny: cell hasUnacceptedEdits.
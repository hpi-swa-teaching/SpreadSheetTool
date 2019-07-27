testing
testReferencedCellDoesNotAutosave
	"Acceptance test for #48 (Automatic formula evaluation)"
	
	referencedCell sendKeys: self someContent.
	self assert: referencedCell hasUnacceptedEdits.
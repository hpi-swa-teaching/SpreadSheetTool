testing
testReferencedCellDoesNotAutosave

	referencedCell sendKeys: self someContent.
	
	self assert: referencedCell hasUnacceptedEdits.
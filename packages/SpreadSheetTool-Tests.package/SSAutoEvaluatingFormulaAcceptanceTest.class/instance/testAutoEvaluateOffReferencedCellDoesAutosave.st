testing
testAutoEvaluateOffReferencedCellDoesAutosave

	self disableAutoEvaluate.
	
	referencedCell sendKeys: self someContent.
	
	self deny: referencedCell hasUnacceptedChanges.
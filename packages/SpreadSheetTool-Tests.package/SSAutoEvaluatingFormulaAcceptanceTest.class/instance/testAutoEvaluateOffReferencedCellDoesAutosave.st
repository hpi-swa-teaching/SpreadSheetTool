testing
testAutoEvaluateOffReferencedCellDoesAutosave
	"acceptance test for #48 (Automatic formula evaluation)"
	
	self disableAutoEvaluate.
	
	referencedCell sendKeys: self someContent.
	
	self deny: referencedCell hasUnacceptedEdits.
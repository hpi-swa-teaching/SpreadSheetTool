testing
testContentsEditedWithNonFormulaChangesCellRawValue

	model contentsEdited: self someText.
	
	self assert: self someText asString equals: cell rawValue.
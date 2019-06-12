testing
testContentsEditedWithFormulaChangesCellRawValue

	model contentsEdited: self someText.
	
	model contentsEdited: self someFormula.
	
	self assert: self someText asString equals: cell rawValue.
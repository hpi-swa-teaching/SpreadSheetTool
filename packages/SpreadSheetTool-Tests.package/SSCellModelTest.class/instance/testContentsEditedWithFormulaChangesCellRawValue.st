testing
testContentsEditedWithFormulaChangesCellRawValue

	model editContents: self someText.
	
	model editContents: self someFormula.
	
	self assert: self someText asString equals: cell rawValue.
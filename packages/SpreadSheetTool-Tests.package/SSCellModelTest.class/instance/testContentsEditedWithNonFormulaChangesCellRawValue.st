testing
testContentsEditedWithNonFormulaChangesCellRawValue

	model editContents: self someText.
	
	self assert: self someText asString equals: cell rawValue.
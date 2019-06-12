testing
testContentsEditModeOff

	model editMode: false.
	cell rawValue: self someFormula.
	
	self assert: self someFormulaResult asString equals: model contents.
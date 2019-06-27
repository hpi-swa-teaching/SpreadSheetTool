testing
testContentsEditModeOff

	model editMode: false.
	cell rawValue: self someFormula.
	model evaluate.
	
	self assert: self someFormulaResult asString equals: model contents.
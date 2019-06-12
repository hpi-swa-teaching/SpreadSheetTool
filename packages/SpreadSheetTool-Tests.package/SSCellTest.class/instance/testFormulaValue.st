testing
testFormulaValue
	
	cell rawValue: self someFormula.
	self assert: self someFormulaResult equals: cell formulaValue.
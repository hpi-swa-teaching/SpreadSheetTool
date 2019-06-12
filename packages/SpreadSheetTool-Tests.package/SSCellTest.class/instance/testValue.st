testing
testValue
	
	cell rawValue: self someFormula.
	self assert: self someFormulaResult equals: cell value.
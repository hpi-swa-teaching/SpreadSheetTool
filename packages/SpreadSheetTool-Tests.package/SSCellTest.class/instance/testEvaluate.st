testing
testEvaluate
	
	cell rawValue: self someFormula.
	cell evaluate.
	self assert: self someFormulaResult equals: cell value.
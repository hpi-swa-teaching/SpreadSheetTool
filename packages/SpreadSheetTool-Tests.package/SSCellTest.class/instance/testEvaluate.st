testing
testEvaluate
	
	cell rawValue: self someFormula.
	cell evaluateSynchronizing: [].
	self assert: self someFormulaResult equals: cell value.
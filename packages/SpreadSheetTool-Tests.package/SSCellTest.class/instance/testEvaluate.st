testing
testEvaluate
	
	cell rawValue: self someFormula.
	cell evaluateNotifying: nil.
	self assert: self someFormulaResult equals: cell value.
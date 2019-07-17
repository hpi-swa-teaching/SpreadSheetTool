testing
testEvaluate
	
	cell rawValue: self someFormula.
	cell evaluateNotifying: nil synchronizing: [].
	self assert: self someFormulaResult equals: cell value.
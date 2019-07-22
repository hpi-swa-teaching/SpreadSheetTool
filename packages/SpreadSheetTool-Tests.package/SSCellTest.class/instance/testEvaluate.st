testing
testEvaluate
	
	cell input: self someFormula.
	cell evaluateNotifying: nil.
	self assert: self someFormulaResult equals: cell output.
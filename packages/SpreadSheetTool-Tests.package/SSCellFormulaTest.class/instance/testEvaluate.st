testing
testEvaluate
	
	cell input: self someFormula notifying: nil ifFail: [self error]..
	cell evaluate.
	self assert: self someFormulaResult equals: cell output.
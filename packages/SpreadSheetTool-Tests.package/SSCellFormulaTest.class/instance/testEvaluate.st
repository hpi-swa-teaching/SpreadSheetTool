testing
testEvaluate
	
	cell
		input: self someFormula notifying: nil ifFail: [self error];
		evaluate.
	self assert: self someFormulaResult equals: cell output.
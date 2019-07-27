evaluation
evaluateFormula

	compiledMethod ifNil: [^ nil].
	^ self receiver withArgs: {self context} executeMethod: compiledMethod
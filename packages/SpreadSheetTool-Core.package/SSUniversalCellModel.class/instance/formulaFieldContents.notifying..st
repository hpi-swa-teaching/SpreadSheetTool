accessing
formulaFieldContents: aFormula notifying: requestor

	formulaSelection caseOf: {
		[#getter] -> [self compileGetter: aFormula].
		[#setter] -> [self compileSetter: aFormula]
	}
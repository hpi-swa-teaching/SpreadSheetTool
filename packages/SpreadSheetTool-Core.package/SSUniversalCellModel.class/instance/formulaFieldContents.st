accessing
formulaFieldContents

	^ formulaSelection caseOf: {
		[#getter] -> [getterFormula].
		[#setter] -> [setterFormula]
	}
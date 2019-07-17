accessing
formulaFor: aSymbol
	
	^ aSymbol caseOf: {
		[#getter] -> [getterFormula].
		[#setter] -> [setterFormula] }
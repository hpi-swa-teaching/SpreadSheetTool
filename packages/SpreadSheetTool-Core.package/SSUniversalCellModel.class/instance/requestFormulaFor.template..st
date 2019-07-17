interaction
requestFormulaFor: aSymbol template: aTemplate

	^ UIManager default
		request: ('Please enter {1} formula' format: {aSymbol})
		initialAnswer: ((self formulaFor: aSymbol) ifNil: [aTemplate])
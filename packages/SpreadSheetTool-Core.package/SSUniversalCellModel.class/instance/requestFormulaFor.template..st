interaction
requestFormulaFor: aSymbol template: aTemplate

	^ UIManager default
		request: ('Please enter {1}' format: {aSymbol})
		initialAnswer: ((self in: aSymbol)
			ifNotNil: [:formula | formula decompile block decompileString
				in: [:source | source copyFrom: 2 to: source size - 1]]
			ifNil: aTemplate)
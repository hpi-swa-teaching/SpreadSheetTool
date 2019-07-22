toolbuilder
buildFormulaField

	| builder spec formulaModel |
	builder := ToolBuilder default.
	formulaModel := formulaSelection caseOf: {
		[#getter] -> [getterModel].
		[#setter] -> [setterModel] }.
	spec := (formulaModel createSpecWith: builder)
		frame: (0 @ 0 extent: 1 @ 1);
		yourself.
	^ {spec buildWith: builder}
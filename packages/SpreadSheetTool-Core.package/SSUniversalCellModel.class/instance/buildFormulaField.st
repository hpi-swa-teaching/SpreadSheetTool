toolbuilder
buildFormulaField

	| builder spec formulaModel |
	builder := ToolBuilder default.
	formulaModel := self formulaSelection caseOf: {
		[#getter] -> [self getterModel].
		[#setter] -> [self setterModel] }.
	spec := (formulaModel createSpecWith: builder)
		frame: (0 @ 0 extent: 1 @ 1);
		yourself.
	visibleModel := formulaModel.
	^ {spec buildWith: builder}
toolbuilder
buildFormulaField

	| builder spec |
	builder := ToolBuilder default.
	spec := builder pluggableCodePaneSpec new
		model: self;
		getText: #formulaFieldContents;
		setText: #formulaFieldContents:notifying:;
		frame: (0 @ 0 extent: 1 @ 1);
		yourself.
	^ {spec buildWith: builder}
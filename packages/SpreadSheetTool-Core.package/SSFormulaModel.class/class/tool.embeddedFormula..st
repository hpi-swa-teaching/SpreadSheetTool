instance creation
tool: sheetTool embeddedFormula: formula

	| model |
	^ (model := self new)
		tool: sheetTool;
		formula: formula;
		yourself
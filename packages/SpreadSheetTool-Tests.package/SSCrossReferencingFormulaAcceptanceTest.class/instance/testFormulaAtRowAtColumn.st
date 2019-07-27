testing
testFormulaAtRowAtColumn
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell atRow: 2 atColumn: 4'
		in: 3 @ 3
		evaluateTo: (cellContents at: 2 at: 4).
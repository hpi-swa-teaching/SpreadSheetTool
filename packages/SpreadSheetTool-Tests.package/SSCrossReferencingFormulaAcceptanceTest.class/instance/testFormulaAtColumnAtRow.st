testing
testFormulaAtColumnAtRow
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell atColumn: 2 atRow: 4'
		in: 3 @ 3
		evaluateTo: (cellContents at: 4 at: 2).
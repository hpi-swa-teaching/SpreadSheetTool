testing
testFormulaAt
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self at: 2 @ 4'
		in: 3 @ 3
		evaluateTo: (cellContents at: 4 at: 2).
testing
testFormulaLeft
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self left'
		in: 3 @ 3
		evaluateTo: (cellContents at: 3 at: 2).
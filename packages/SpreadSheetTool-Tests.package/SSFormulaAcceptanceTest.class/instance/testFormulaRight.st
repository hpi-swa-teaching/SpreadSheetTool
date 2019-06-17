testing
testFormulaRight
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self right'
		in: 3 @ 3
		evaluateTo: (cellContents at: 3 at: 4).
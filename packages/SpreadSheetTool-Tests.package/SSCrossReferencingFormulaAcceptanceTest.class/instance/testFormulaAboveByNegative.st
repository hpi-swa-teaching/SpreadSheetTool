testing
testFormulaAboveByNegative
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self aboveBy: -2'
		in: 3 @ 3
		evaluateTo: (cellContents at: 5 at: 3).
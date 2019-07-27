testing
testFormulaLeftByNegative
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell leftBy: -2'
		in: 3 @ 3
		evaluateTo: (cellContents at: 3 at: 5).
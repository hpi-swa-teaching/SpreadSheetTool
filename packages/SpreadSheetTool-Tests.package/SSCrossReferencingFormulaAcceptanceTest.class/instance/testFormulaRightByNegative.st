testing
testFormulaRightByNegative
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell rightBy: -2'
		in: 3 @ 3
		evaluateTo: (cellContents at: 3 at: 1).
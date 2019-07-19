testing
testFormulaAbove
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell above'
		in: 3 @ 3
		evaluateTo: (cellContents at: 2 at: 3).
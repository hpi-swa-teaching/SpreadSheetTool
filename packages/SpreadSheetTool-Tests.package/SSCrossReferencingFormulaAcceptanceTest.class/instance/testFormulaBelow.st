testing
testFormulaBelow
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self below'
		in: 3 @ 3
		evaluateTo: (cellContents at: 4 at: 3).
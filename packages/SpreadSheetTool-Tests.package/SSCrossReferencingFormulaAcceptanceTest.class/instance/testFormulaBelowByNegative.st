testing
testFormulaBelowByNegative
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell belowBy: -2'
		in: 3 @ 3
		evaluateTo: (cellContents at: 1 at: 3).
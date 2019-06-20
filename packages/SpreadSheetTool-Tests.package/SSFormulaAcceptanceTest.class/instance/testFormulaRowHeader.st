testing
testFormulaRowHeader
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self rowHeader'
		in: 3 @ 3
		evaluateTo: '3'.
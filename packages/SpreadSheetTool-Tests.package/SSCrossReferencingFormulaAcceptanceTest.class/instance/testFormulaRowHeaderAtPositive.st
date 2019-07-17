testing
testFormulaRowHeaderAtPositive
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ self rowHeaderAt: 2'
		in: 3 @ 3
		evaluateTo: '2'.
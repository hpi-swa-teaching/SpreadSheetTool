testing
testFormulaRowHeaderAtPositive
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ cell rowHeaderAt: 2'
		in: 3 @ 3
		evaluateTo: '2'.
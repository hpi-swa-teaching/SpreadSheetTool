testing
testFormulaColumnHeaderAtPositive
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ cell columnHeaderAt: 2'
		in: 3 @ 3
		evaluateTo: 'B'.
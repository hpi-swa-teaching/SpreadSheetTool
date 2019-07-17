testing
testFormulaColumnHeaderAtPositive
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ self columnHeaderAt: 2'
		in: 3 @ 3
		evaluateTo: 'B'.
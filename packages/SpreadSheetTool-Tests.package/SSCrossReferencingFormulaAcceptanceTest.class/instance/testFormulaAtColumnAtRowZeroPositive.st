testing
testFormulaAtColumnAtRowZeroPositive
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ cell atColumn: 0 atRow: 4'
		in: 3 @ 3
		evaluateTo: '4'.
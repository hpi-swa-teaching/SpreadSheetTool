testing
testFormulaAtColumnAtRowPositiveZero
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ self atColumn: 4 atRow: 0'
		in: 3 @ 3
		evaluateTo: 'D'.
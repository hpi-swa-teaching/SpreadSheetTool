testing
testFormulaColumnHeader
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell columnHeader'
		in: 3 @ 3
		evaluateTo: 'C'.
testing
testFormulaAtRowAtColumnSelfReference
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self atRow: 3 atColumn: 3'
		in: 3 @ 3
		notify: 'self'.
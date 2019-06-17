testing
testFormulaAtColumnAtRowSelfReference
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self atColumn: 3 atRow: 3'
		in: 3 @ 3
		notify: 'self'.
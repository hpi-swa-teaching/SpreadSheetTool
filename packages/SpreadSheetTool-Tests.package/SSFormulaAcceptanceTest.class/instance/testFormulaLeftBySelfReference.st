testing
testFormulaLeftBySelfReference
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self leftBy: 0'
		in: 3 @ 3
		notify: 'self'.
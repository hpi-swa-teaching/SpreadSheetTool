testing
testFormulaLeftBySelfReference
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell leftBy: 0'
		in: 3 @ 3
		openDebuggerNotifying: 'self'.
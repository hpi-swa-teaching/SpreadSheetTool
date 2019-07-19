testing
testFormulaAtSelfReference
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell at: 3 @ 3'
		in: 3 @ 3
		openDebuggerNotifying: 'self'.
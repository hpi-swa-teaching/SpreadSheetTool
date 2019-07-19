testing
testFormulaAtRowAtColumnSelfReference
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ cell atRow: 3 atColumn: 3'
		in: 3 @ 3
		openDebuggerNotifying: 'self'.
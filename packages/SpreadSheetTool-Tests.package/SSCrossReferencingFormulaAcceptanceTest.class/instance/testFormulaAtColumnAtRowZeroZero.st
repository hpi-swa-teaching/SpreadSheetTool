testing
testFormulaAtColumnAtRowZeroZero
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ self atColumn: 0 atRow: 0'
		in: 3 @ 3
		openDebuggerNotifying: 'invalid'.
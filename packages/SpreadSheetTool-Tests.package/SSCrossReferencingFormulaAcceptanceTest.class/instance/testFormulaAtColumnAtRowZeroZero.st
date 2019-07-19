testing
testFormulaAtColumnAtRowZeroZero
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ cell atColumn: 0 atRow: 0'
		in: 3 @ 3
		openDebuggerNotifying: 'out of range'.
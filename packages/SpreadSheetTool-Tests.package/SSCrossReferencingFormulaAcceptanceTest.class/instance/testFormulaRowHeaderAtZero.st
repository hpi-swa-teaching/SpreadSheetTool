testing
testFormulaRowHeaderAtZero
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ self rowHeaderAt: 0'
		in: 3 @ 3
		openDebuggerNotifying: 'invalid'
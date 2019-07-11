testing
testFormulaColumnHeaderAtZero
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ self columnHeaderAt: 0'
		in: 3 @ 3
		openDebuggerNotifying: 'invalid'
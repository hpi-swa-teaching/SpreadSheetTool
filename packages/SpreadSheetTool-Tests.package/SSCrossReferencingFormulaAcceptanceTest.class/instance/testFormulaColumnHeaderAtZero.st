testing
testFormulaColumnHeaderAtZero
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ cell columnHeaderAt: 0'
		in: 3 @ 3
		openDebuggerNotifying: 'subscript'
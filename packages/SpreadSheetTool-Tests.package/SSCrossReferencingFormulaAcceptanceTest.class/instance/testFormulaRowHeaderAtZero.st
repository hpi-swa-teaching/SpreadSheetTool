testing
testFormulaRowHeaderAtZero
	"Test for #45 (Enhance protocol)"

	self
		shouldFormula: '^ cell rowHeaderAt: 0'
		in: 3 @ 3
		openDebuggerNotifying: 'subscript'
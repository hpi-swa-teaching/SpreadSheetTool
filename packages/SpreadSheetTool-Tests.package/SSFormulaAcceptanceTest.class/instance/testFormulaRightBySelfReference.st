testing
testFormulaRightBySelfReference
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self rightBy: 0'
		in: 3 @ 3
		openDebuggerNotifying: 'self'.
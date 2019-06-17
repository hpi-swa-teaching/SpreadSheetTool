testing
testFormulaBelowBySelfReference
	"Test for #39 (Simple cross-referencing formulas)"

	self
		shouldFormula: '^ self belowBy: 0'
		in: 3 @ 3
		notify: 'self'.
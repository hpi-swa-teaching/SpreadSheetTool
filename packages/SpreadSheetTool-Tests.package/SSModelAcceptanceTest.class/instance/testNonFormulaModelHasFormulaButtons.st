testing
testNonFormulaModelHasFormulaButtons
	"Acceptance test for #65 (Unify different formula approaches)"

	| getButton setButton |
	getButton := self findGetFormulaButtonAt: self someCellIndex.
	self assert: getButton isUnique.
	setButton := self findSetFormulaButtonAt: self someCellIndex.
	self assert: setButton isUnique.
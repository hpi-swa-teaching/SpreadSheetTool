testing
testFormulaModelHasNoFormulaButton
	"Acceptance test for #65 (Unify different formula approaches)"

	self chooseFormulaModelAt: self someCellIndex.
	self assert: (self findButtonAt: self someCellIndex byLabel: 'formula') isNegative.
testing
testFormulaModelHasNoFormulaButton

	self chooseFormulaModelAt: self someCellIndex.
	self assert: (self findButtonAt: self someCellIndex byLabel: 'formula') isNegative.
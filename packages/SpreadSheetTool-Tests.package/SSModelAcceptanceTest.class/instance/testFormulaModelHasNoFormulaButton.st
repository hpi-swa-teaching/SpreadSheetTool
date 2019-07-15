testing
testFormulaModelHasNoFormulaButton

	self chooseFormulaModelAt: self someCellIndex.
	self assert: (self findFormulaButtonAt: self someCellIndex) isNegative.
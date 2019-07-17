testing
testNonFormulaModelHasFormulaButtons

	| getButton setButton |
	self chooseEvaluatorModelAt: self someCellIndex.
	getButton := self findGetFormulaButtonAt: self someCellIndex.
	self assert: getButton isUnique.
	setButton := self findSetFormulaButtonAt: self someCellIndex.
	self assert: setButton isUnique.
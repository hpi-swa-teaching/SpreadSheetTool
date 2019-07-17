testing
testSetFormulaFieldHasAutocompletion

	| formulaField |
	(self findSetFormulaButtonAt: self someCellIndex) click.
	formulaField := self findCellAt: self someCellIndex byCriteria: #isTextView.
	self shouldShowAutocompletion: formulaField.
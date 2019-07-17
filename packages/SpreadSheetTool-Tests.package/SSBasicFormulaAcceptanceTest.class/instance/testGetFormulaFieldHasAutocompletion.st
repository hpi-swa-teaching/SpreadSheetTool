testing
testGetFormulaFieldHasAutocompletion

	| formulaField |
	(self findGetFormulaButtonAt: self someCellIndex) click.
	formulaField := self findCellAt: self someCellIndex byCriteria: #isTextView.
	self shouldShowAutocompletion: formulaField.
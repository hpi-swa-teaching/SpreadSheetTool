testing
testGetFormulaFieldHasAutocompletion
	"Acceptance test for #65 (Unify different formula approaches)"

	| formulaField |
	self chooseInspectorModelAt: self someCellIndex.
	(self findGetFormulaButtonAt: self someCellIndex) click.
	formulaField := self findCellAt: self someCellIndex byCriteria: #isTextView.
	self shouldShowAutocompletion: formulaField.
tools
at: aPoint putFormula: aFormula button: aButton

	| formulaField |
	aButton click.
	formulaField := self findCellAt: aPoint byCriteria: #isTextView.
	self into: formulaField put: aFormula.
	aButton click.
	self fullWait.
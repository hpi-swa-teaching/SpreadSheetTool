testing
testClickButtonAgain: aButton

	| formulaField cellField |
	aButton click.
	formulaField := self findCellAt: self someCellIndex byCriteria: #isTextView.
	aButton click.
	cellField := self findCellAt: self someCellIndex byCriteria: #isTextView.
	
	self assert: aButton isOff.
	self deny: formulaField equals: cellField.
	
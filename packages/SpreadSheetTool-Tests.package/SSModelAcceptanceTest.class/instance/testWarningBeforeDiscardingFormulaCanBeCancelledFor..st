testing
testWarningBeforeDiscardingFormulaCanBeCancelledFor: aButton

	| formulaField visibleField |
	aButton click.
	formulaField := self findCellAt: self someCellIndex byCriteria: #isTextView.
	formulaField sendKeys: self someContent.
	self
		should: [aButton click]
		notify: 'changes'
		thenAnswer: false.
	visibleField := self findCellAt: self someCellIndex byCriteria: #isTextView.
	self assert: self someContent equals: visibleField read.
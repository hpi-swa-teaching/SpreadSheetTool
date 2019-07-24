testing
testWarningBeforeDiscardingFormulaCanBeSkippedFor: aButton

	| formulaField visibleField |
	aButton click.
	formulaField := self findCellAt: self someCellIndex byCriteria: #isTextView.
	formulaField sendKeys: self someContent.
	self
		should: [aButton click]
		notify: 'changes'
		thenAnswer: true.
	visibleField := self findCellAt: self someCellIndex byCriteria: #isTextView.
	self deny: formulaField equals: visibleField read.
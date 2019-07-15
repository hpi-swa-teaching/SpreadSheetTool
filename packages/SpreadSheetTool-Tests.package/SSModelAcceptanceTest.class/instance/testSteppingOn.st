testing
testSteppingOn

	| cell newContent oldContent |
	(self subject findByLabelFilter: 'Stepping*')
		assureOn.
	
	self chooseTextModelAt: self someCellIndex.
	self
		setFormulaAt: self someCellIndex
		getter: 'Time current'
		setter: self someSetterFormula.
	cell := self findCellAt: self someCellIndex.
	
	oldContent := cell read.
	1 second wait.
	World doOneCycleNow.
	newContent := cell read.
	self deny: oldContent equals: newContent.
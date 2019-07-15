testing
testSteppingActivated: aBoolean

	| cell newContent oldContent |
	(self subject findByLabelFilter: 'Stepping*')
		assureOn: aBoolean.
	
	self chooseTextModelAt: self someCellIndex.
	self
		setFormulaAt: self someCellIndex
		getter: 'Time current'
		setter: self someSetterFormula.
	cell := self findCellAt: self someCellIndex.
	
	oldContent := cell read.
	(Delay forSeconds: 1) wait.
	World doOneCycleNow.
	newContent := cell read.
	aBoolean
		ifTrue: [self deny: oldContent equals: newContent]
		ifFalse: [self assert: oldContent equals: newContent].
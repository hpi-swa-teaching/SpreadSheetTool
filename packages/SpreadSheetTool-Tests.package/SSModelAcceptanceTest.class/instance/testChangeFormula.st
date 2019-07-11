testing
testChangeFormula

	| cell formulaButton |
	self chooseTextModelAt: self someCellIndex.
	
	formulaButton := self findButtonAt: self someCellIndex byLabel: 'formula'.
	self
		should: [self
			should: [formulaButton click]
			notify: 'get*formula'
			thenAnswer: ('{1} anObject' format: {self class name})]
		notify: 'set*formula'
		thenAnswer: ('[:x | {1} anObject: x]' format: {self class name}).
	self subject wait.	
	cell := self findCellAt: self someCellIndex.
	
	self class anObject: self someContent.
	self fullWait.	
	self assert: self class anObject asString equals: cell read.
	
	cell
		sendClearTextField;
		sendKeys: self someOtherContent;
		sendControlSave.
	cell wait.
	self assert: self someOtherContent equals: self class anObject asString.
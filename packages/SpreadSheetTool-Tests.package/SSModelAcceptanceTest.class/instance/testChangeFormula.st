as yet unclassified
testChangeFormula

	| cell formulaButton |
	cell := self findCellAt: self someCellIndex.
	formulaButton := self findButtonAt: self someCellIndex byLabel: 'formula'.
	self
		should: [self
			should: [formulaButton click]
			notify: 'get*formula'
			thenAnswer: ('{1} anObject' format: {self class name})]
		notify: 'set*formula'
		thenAnswer: ('[:x | {1} anObject: x]' format: {self class name}).
	
	self class anObject: self someContent.
	self fullWait.	
	self assert: self class anObject asString equals: cell read.
	
	cell sendKeys: self someOtherContent.
	self assert: self someOtherContent equals: self class anObject asString.
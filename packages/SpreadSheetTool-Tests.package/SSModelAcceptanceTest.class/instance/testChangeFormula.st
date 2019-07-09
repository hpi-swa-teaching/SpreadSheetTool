as yet unclassified
testChangeFormula

	| button cell |
	cell := self findCellAt: self someCellIndex.
	button := self findCellAt: self someCellIndex byCriteria: [:m | m isButton and: ['*formula*' match: m label]].
	self
		should: [self
			should: [button click]
			notify: 'get*formula'
			thenAnswer: ('{1} anObject' format: {self class name})]
		notify: 'set*formula'
		thenAnswer: ('[:x | {1} anObject: x]' format: {self class name}).
	
	self class anObject: self someContent.
	self fullWait.	
	self assert: self class anObject asString equals: cell read.
	
	cell sendKeys: self someOtherContent.
	self assert: self someOtherContent equals: self class anObject asString.
testing
testChangeGetFormula

	| cell |
	self chooseEvaluatorModelAt: self someCellIndex.
	self
		into: self someCellIndex
		putGetter: ('{1} anObject identityHash' format: {self class name}).
	cell := self findCellAt: self someCellIndex.
	
	self class anObject: Object new.
	self fullWait.
	self assert: self class anObject identityHash equals: cell read asNumber.
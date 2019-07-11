testing
testChangeFormula

	| cell |
	self chooseTextModelAt: self someCellIndex.
	self
		setFormulaAt: self someCellIndex
		getter: ('{1} anObject' format: {self class name})
		setter: ('[:x | {1} anObject: x]' format: {self class name}).
	cell := self findCellAt: self someCellIndex.
	
	self class anObject: self someContent.
	self fullWait.	
	self assert: self class anObject asString equals: cell read.
	
	self into: cell put: self someOtherContent.
	self assert: self someOtherContent equals: self class anObject asString.
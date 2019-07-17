testing
testChangeFormula

	| cell |
	self chooseEvaluatorModelAt: self someCellIndex.
	self
		setFormulaAt: self someCellIndex
		getter: ('{1} anObject identityHash' format: {self class name})
		setter: ('[:x | {1} anObject: x]' format: {self class name}).
	cell := self findCellAt: self someCellIndex.
	
	self class anObject: Object new.
	self fullWait.
	self assert: self class anObject identityHash equals: cell read asNumber.
	
	self into: cell put: ('''{1}''' format: {self someContent}).
	self assert: self someContent equals: self class anObject.
testing
testChangeSetFormula

	| cell |
	self chooseEvaluatorModelAt: self someCellIndex.
	self
		into: self someCellIndex
		putSetter: ('[:x | {1} anObject: x]' format: {self class name}).
	cell := self findCellAt: self someCellIndex.
	
	self into: cell put: ('''{1}''' format: {self someContent}).
	self assert: self someContent equals: self class anObject.
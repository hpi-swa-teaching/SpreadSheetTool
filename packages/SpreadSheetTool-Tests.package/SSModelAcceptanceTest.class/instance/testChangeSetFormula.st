testing
testChangeSetFormula
	"Acceptance test for #65 (Unify different formula approaches)"

	| cell |
	self
		at: self someCellIndex
		putSetter: ('{1} anObject: value' format: {self class name}).
	cell := self findCellAt: self someCellIndex.
	
	self into: cell put: ('''{1}''' format: {self someContent}).
	self assert: self someContent equals: self class anObject.
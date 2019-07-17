testing
testCellReference

	| cell |
	cell := self findCellAt: self someCellIndex.
	self at: self someCellIndex putGetter: 'this rowHeaderAt: 1'.
	self assert: '1' equals: cell read.
	
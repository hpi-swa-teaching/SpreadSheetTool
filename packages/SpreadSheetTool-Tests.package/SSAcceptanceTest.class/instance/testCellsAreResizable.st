testing
testCellsAreResizable
	"Test for #6 (Between cells there is a space in which I can drag horizontally/vertically)."

	| horizontalSplitters verticalSplitters |
	
	verticalSplitters := self
		findSplittersByCriteria: #splitsTopAndBottom
		withPositionDeltaForAdjacentCells: 0 @ self splitterThickness.
	horizontalSplitters := self
		findSplittersByCriteria: #splitsLeftAndRight
		withPositionDeltaForAdjacentCells: self splitterThickness @ 0.
	
	self
		assert: (self measureRangeFor: #rows) - 1
			equals: verticalSplitters size;
		assert: (self measureRangeFor: #columns) - 1
			equals: horizontalSplitters size.
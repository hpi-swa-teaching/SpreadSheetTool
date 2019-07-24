testing
testCellsAreResizable
	"Test for #6 (Between cells there is a space in which I can drag horizontally/vertically)."

	| horizontalSplitters verticalSplitters |
	verticalSplitters := self
		findSplittersByCriteria: #splitsTopAndBottom
		adjacentDelta: 0 @ self splitterThickness.
	horizontalSplitters := self
		findSplittersByCriteria: #splitsLeftAndRight
		adjacentDelta: self splitterThickness @ 0.
	
	self
		assert: (self measureRangeFor: #rows)
			equals: verticalSplitters size;
		assert: (self measureRangeFor: #columns)
			equals: horizontalSplitters size.
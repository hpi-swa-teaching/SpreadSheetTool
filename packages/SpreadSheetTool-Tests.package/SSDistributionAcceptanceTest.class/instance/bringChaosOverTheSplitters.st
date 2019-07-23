tools
bringChaosOverTheSplitters

	| horizontalSplitters verticalSplitters |
	verticalSplitters := self
		findSplittersByCriteria: #splitsTopAndBottom
		withPositionDeltaForAdjacentCells: 0 @ self splitterThickness.
	horizontalSplitters := self
		findSplittersByCriteria: #splitsLeftAndRight
		withPositionDeltaForAdjacentCells: self splitterThickness @ 0.
	
	verticalSplitters do: [:splitter |
		splitter repositionBy: (0 @ ((-30 to: 30) atRandom: self random))].
	horizontalSplitters do: [:splitter |
		splitter repositionBy: ((-30 to: 30) atRandom: self random) @ 0].
	
	self subject extent: self subject extent * 2. "Ensure each morph fits into its cell"
	self subject redraw.
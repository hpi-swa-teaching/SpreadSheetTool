tools
bringChaosOverTheSplitters

	| horizontalSplitters random verticalSplitters |
	verticalSplitters := self
		findSplittersByCriteria: #splitsTopAndBottom
		withPositionDeltaForAdjacentCells: 0 @ self splitterThickness.
	horizontalSplitters := self
		findSplittersByCriteria: #splitsLeftAndRight
		withPositionDeltaForAdjacentCells: self splitterThickness @ 0.
	
	random := self random.
	verticalSplitters do: [:splitter |
		splitter repositionBy: (0 @ ((-30 to: 30) atRandom: random))].
	horizontalSplitters do: [:splitter |
		splitter repositionBy: ((-30 to: 30) atRandom: random) @ 0].
	
	self subject redraw.
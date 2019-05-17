running
bringChaosOverTheSplitters

	| horizontalSplitters random verticalSplitters |
	verticalSplitters := self
		findSplittersByCriteria: #splitsTopAndBottom
		withPositionDeltaForAdjacentCells: 0 @ self splitterThickness.
	horizontalSplitters := self
		findSplittersByCriteria: #splitsLeftAndRight
		withPositionDeltaForAdjacentCells: self splitterThickness @ 0.
	
	random := Random seed: 42.
	verticalSplitters do: [:splitter |
		splitter repositionBy: (0 @ ((-10 to: 10) atRandom: random))].
	horizontalSplitters do: [:splitter |
		splitter repositionBy: ((-10 to: 10) atRandom: random) @ 0].
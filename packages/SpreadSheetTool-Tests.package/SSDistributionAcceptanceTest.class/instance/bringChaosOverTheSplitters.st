tools
bringChaosOverTheSplitters

	| horizontalSplitters verticalSplitters |
	verticalSplitters := self
		findSplittersByCriteria: #splitsTopAndBottom
		adjacentDelta: 0 @ self splitterThickness.
	horizontalSplitters := self
		findSplittersByCriteria: #splitsLeftAndRight
		adjacentDelta: self splitterThickness @ 0.
	
	verticalSplitters do: [:splitter |
		splitter repositionBy: (0 @ ((-30 to: 30) atRandom: self random))].
	horizontalSplitters do: [:splitter |
		splitter repositionBy: ((-30 to: 30) atRandom: self random) @ 0].
	
	self subject
		"Assure each morph fits into its cell"
		extent: self subject extent * 2;
		redraw.
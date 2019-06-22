interaction
distributeCellsInDimension: dimensionSymbol splitterSelector: splitterSelector

	| morphScales cellPanel |
	morphScales := cellMorphs collect: dimensionSymbol.
	cellPanel := (cellMorphs collect: #owner as: Set) singleOne.
	cellPanel owner fullBounds.
	cellPanel resizeHandlesWhereSplitter: splitterSelector allTo: morphScales average rounded.
	cellPanel owner fullBounds.
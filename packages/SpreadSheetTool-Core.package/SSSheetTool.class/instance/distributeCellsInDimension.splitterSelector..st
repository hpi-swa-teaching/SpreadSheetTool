interaction
distributeCellsInDimension: dimensionSymbol splitterSelector: splitterSelector

	| morphScales cellPanel |
	morphScales := cellMorphs collect: dimensionSymbol.
	cellPanel := (cellMorphs collect: [:m | m owner owner] as: Set) singleOne.
	cellPanel owner fullBounds.
	cellPanel resizeHandlesWhereSplitter: splitterSelector allTo: morphScales average rounded.
	cellPanel owner fullBounds.
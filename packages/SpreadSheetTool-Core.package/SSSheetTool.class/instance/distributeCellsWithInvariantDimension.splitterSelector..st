interaction
distributeCellsWithInvariantDimension: invariantDimensionSymbol splitterSelector: splitterSelector

	| morphScales cellPanel |
	morphScales := cellMorphs collect: invariantDimensionSymbol.
	self changed: #buildCellsPanel.
	
	cellPanel := (cellMorphs collect: #owner as: Set) singleOne.
	cellPanel owner fullBounds.
	cellPanel resizeHandlesWhereSplitter: splitterSelector to: morphScales.
	cellPanel owner fullBounds.
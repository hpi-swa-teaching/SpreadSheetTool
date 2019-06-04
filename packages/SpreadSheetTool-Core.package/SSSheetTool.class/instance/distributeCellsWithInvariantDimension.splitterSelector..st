interaction
distributeCellsWithInvariantDimension: invariantDimensionSymbol splitterSelector: splitterSelector

	| morphScales cellPanel |
	morphScales := (cellMorphs collect: invariantDimensionSymbol)
		as: Dictionary.
	self changed: #buildCellsPanel.
	
	cellPanel := (cellMorphs collect: #owner) asSet singleOne.
	cellPanel owner fullBounds.
	cellPanel
		resizeHandlesWhereSplitter: splitterSelector
		to: morphScales.
	cellPanel owner fullBounds.
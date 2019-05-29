interaction
distributeCellsWithInvariantDimension: invariantDimensionSymbol splitterSelector: splitterSelector

	| cellMorphs morphScales cellPanel |
	cellMorphs := (contentModels anyOne containingMorphicModel
		owner submorphs select: #isTextView)
		groupByUniqueKey: #model.
	morphScales := (cellMorphs collect: invariantDimensionSymbol)
		as: Dictionary.
	self changed: #buildCellsPanel.
	
	cellMorphs := (contentModels anyOne containingMorphicModel
		owner submorphs select: #isTextView)
		groupByUniqueKey: #model.
	cellPanel := (cellMorphs collect: #owner) asSet singleOne.
	cellPanel owner fullBounds.
	cellPanel
		resizeHandlesWhereSplitter: splitterSelector
		to: morphScales.
	cellPanel owner fullBounds.
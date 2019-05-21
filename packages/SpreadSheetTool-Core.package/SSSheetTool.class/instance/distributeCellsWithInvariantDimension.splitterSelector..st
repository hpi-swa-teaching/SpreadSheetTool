interaction
distributeCellsWithInvariantDimension: invariantDimensionSymbol splitterSelector: splitterSelector

	| cellMorphs cellPanel morphScales splitters |
	cellMorphs := (cellModels anyOne containingMorphicModel
		owner submorphs select: #isTextView)
		groupByUniqueKey: #model.
	morphScales := (cellMorphs collect: invariantDimensionSymbol)
		as: Dictionary.
	self changed: #buildCellsPanel.
	
	cellMorphs := (cellModels anyOne containingMorphicModel
		owner submorphs select: #isTextView)
		groupByUniqueKey: #model.
	cellPanel := (cellMorphs collect: #owner) asSet singleOne.
	splitters := (cellPanel splitters select: splitterSelector)
		sortedBy: [:m | m position r].
	splitters do: [:splitter | 
		cellPanel owner fullBounds.
		splitter
			scalePredecessorsWhere: #isTextView
			to: [:morph | morphScales at: morph model]].
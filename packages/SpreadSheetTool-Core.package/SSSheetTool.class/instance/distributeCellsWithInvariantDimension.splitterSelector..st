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
		Transcript showln: 'Sorry, if I do not output any text I do not work properly :/'.
		splitter scalePredecessorsWhere: [:morph |
			morph isTextView and: [morph model class = SSCellModel flag: #workaround]]
		to: [:morph | morphScales at: morph model]].
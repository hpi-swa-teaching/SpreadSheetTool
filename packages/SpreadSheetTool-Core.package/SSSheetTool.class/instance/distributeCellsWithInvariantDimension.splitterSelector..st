interaction
distributeCellsWithInvariantDimension: invariantDimensionSymbol splitterSelector: splitterSelector

	| morphScales unacceptedChanges cellPanel |
	morphScales := cellMorphs collect: invariantDimensionSymbol.
	unacceptedChanges := contentModels cellsCollect: [:cellModel | cellModel unacceptedChangesOrNil].
	cellMorphs ifNotNil: [cellMorphs do: [:morph | morph model: nil]].
	self changed: #buildCellsPanel.
	
	cellPanel := (cellMorphs collect: #owner as: Set) singleOne.
	cellPanel owner fullBounds.
	cellPanel resizeHandlesWhereSplitter: splitterSelector to: morphScales.
	cellPanel owner fullBounds.
	
	unacceptedChanges withIndicesDo: [:changes :row :column |
		changes ifNotNil: [(contentModels atRow: row atColumn: column) 
			unacceptedChanges: changes]].
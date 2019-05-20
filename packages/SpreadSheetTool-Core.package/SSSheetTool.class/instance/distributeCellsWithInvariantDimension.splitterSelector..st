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
	"CTLogger log: ((cellMorphs values select: #isTextView) collect: #width) asSet.
	CTLogger log: ((cellMorphs values select: #isTextView) collect: #width) asSet."
	"self assert: [(cellMorphs values select: #isTextView) allSatisfy: [:x | x width > 16]]."
	"self halt."
	"CTLogger log: cellMorphs values first width."
	"3 seconds wait."
	cellPanel := (cellMorphs collect: #owner) asSet singleOne.
	cellPanel hide.
	splitters := (cellPanel splitters select: splitterSelector)
		sortedBy: [:m | m position r].
	splitters do: [:splitter |
		Transcript showln: 'Sorry, if I do not output any text I do not work properly :/'.
		splitter scalePredecessorsWhere: #isTextView
		to: [:morph | morphScales at: morph model]].
	cellPanel show.
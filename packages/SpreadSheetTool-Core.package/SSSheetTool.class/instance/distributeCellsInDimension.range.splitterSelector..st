distribution
distributeCellsInDimension: dimensionSymbol range: range splitterSelector: splitterSelector

	| averageScale cellScale headerScale |
	self containingMorphicModels do: #fullBounds.
	averageScale := (cellMorphs collect: dimensionSymbol) average.
	headerScale := self defaultHeaderScale min: averageScale.
	cellScale := averageScale * (range + 1) - headerScale / range.
	self
		scaleCellsAtSplittersThat: splitterSelector
		to: ((OrderedCollection new: range withAll: cellScale)
			copyWithFirst: headerScale).
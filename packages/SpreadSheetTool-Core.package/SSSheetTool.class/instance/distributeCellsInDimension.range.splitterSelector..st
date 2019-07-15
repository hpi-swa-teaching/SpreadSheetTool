interaction
distributeCellsInDimension: dimensionSymbol range: range splitterSelector: splitterSelector

	| averageScale cellScale headerScale |
	averageScale := (cellMorphs collect: dimensionSymbol) average.
	headerScale := self defaultHeaderScale min: averageScale.
	cellScale := (averageScale * (range + 1) - headerScale) / range.
	cellMorphs anyOne owner owner in: [:cellPanel |
		cellPanel owner fullBounds.
		cellPanel
			resizeHandlesAtSplittersThat: splitterSelector
			toScales: (((OrderedCollection new: range withAll: cellScale) copyWithFirst: headerScale)
				dithered: #rounded).
		cellPanel owner fullBounds].
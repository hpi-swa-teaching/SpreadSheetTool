tools
findCellAt: aPoint in: aWindow

	| position rows |
	rows := (((self findCellsIn: aWindow) morphs
		groupBy: [:aCell | aCell position y]) as: OrderedDictionary) sort.
	rows doWithIndex: [:cells :rowIndex | | row |
		row := ((cells groupByUniqueKey: [:aCell | aCell position x])
			as: OrderedDictionary) sort.
		row doWithIndex: [:cell :columnIndex |
			columnIndex @ rowIndex = aPoint ifTrue: [position := cell position]]].
	^ aWindow findByCriteria: [:cell | (cell model isKindOf: SSCellModel) and: [cell position = position]]
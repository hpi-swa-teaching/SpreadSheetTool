tools
findCellAt: aPoint in: aWindow

	| position |
	(((self findCellsIn: aWindow) morphs
		groupBy: [:aCell | aCell position y]) as: OrderedDictionary) sort
		doWithIndex: [:row :rowIndex |
			((row groupByUniqueKey: [:aCell | aCell position x]) as: OrderedDictionary) sort
				doWithIndex: [:cell :columnIndex |
					(rowIndex @ columnIndex = aPoint) ifTrue: [position := cell position]]].
	^ aWindow findByCriteria: [:cell | (cell model isKindOf: SSCellModel) and: [cell position = position]]
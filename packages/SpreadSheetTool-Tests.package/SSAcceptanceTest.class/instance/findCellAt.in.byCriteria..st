tools
findCellAt: aPoint in: aWindow byCriteria: aSelector

	| rows hits |
	hits := Set new.
	rows := (((aWindow findByCriteria: aSelector) morphs
		groupBy: [:aCell | aCell position y]) as: OrderedDictionary) sort.
	rows doWithIndex: [:cells :rowIndex | | row |
		row := ((cells groupByUniqueKey: [:aCell | aCell position x])
			as: OrderedDictionary) sort.
		row doWithIndex: [:cell :columnIndex |
			columnIndex @ rowIndex = aPoint ifTrue: [
				hits add: cell]]].
	^ self subject createWrapperFor: hits
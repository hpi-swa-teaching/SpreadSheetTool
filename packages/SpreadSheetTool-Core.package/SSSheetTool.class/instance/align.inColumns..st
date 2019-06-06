toolbuilder
align: aCollectionOfSpecs inColumns: numberOfColumns

	| extent index numberOfRows |
	numberOfRows := (aCollectionOfSpecs size / numberOfColumns) ceiling.
	extent := (numberOfColumns @ numberOfRows) reciprocal.
	index := 0.
	1 to: numberOfColumns do: [:column |
		1 to: numberOfRows do: [:row |
			(aCollectionOfSpecs at: (index := index + 1))
				frame: column @ row - 1 * extent
				extent: extent]].
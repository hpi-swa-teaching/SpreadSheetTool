as yet unclassified
selectElementsBeyondRow: aRow beyondColumn: aColumn

	^ (cells fromIndicesReject: [:row :column |
		row @ column <= (aRow @ aColumn)]) asOrderedCollection,
		(rowHeaders copyFrom: aRow + 1 to: self rowCount),
		(columnHeaders copyFrom: aColumn + 1 to: self columnCount)
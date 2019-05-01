testing
findCellInUniformGridAtRow: aRow atColumn: aColumn

	| normalizedPoint cells firstCell lastCell position |
	normalizedPoint := (aColumn @ aRow - (1 @ 1)) / (self subject model rowCount @ self subject model columnCount - (1 @ 1)).
	cells := self findCells morphs.
	firstCell := cells detectMin: [:cell | cell center r].
	lastCell := cells detectMax: [:cell | cell center r].
	position := (firstCell center * ((1 @ 1) - normalizedPoint)) + (lastCell center * normalizedPoint).
	^ self subject findByPosition: position andCriteria: [ :morph |
		morph isTextView]
testing
findCells

	^ self subject
		findByCriteria: [:morph | morph isTextView and: [morph model class = SSCellModel]]
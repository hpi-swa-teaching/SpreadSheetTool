testing
findCells

	^ self subject
		findByCriteria: [:morph | morph isTextView]
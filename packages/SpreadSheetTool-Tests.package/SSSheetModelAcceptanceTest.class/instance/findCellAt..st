testing
findCellAt: anIndex

	| count |
	count := 0.
	^ self subject findByCriteria: [:morph |
		 morph isTextView and: [
			count := count + 1.
			count = anIndex]]
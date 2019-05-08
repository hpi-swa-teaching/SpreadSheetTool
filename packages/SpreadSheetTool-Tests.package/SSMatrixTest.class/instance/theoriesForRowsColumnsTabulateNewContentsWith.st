testing data
theoriesForRowsColumnsTabulateNewContentsWith

	^ {
		0 @ 0.
		0 @ self columnCount.
		self rowCount @ 0
	}, ((-1 to: 1 collect: [:rowDelta |
		-1 to: 1 collect: [:colDelta |
			(self rowCount @ self columnCount) + (rowDelta @ colDelta)]])
		fold: [:theories :theory | theories, theory])
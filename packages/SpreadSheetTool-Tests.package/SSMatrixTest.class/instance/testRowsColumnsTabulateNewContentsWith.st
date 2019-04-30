testing
testRowsColumnsTabulateNewContentsWith

	self theoriesForRowsColumnsTabulateNewContentsWith do: [:aTheory |
		| newMatrix |
		newMatrix := matrix
			rows: aTheory x
			columns: aTheory y
			tabulateNewContentsWith: [:r :c | r @ c].
		
		self assert: newMatrix rowCount equals: aTheory x.
		self assert: newMatrix columnCount equals: aTheory y.
		1 to: newMatrix rowCount do: [:r |
			1 to: newMatrix columnCount do: [:c |
				self assert: (newMatrix at: r at: c) equals: (r @ c)]]
		].
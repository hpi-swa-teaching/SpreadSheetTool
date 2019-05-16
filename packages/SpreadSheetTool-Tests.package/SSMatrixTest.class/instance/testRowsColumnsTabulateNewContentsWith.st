testing
testRowsColumnsTabulateNewContentsWith

	self theoriesForRowsColumnsTabulateNewContentsWith do: [:aTheory |
		| newMatrix |
		newMatrix := matrix
			rows: aTheory x
			columns: aTheory y
			tabulateNewContentsWith: [:r :c | (r @ c) negated].
		
		self
			assert: newMatrix rowCount equals: aTheory x;
			assert: newMatrix columnCount equals: aTheory y.
		1 to: newMatrix rowCount do: [:r |
			1 to: newMatrix columnCount do: [:c | | expectedContent |
				expectedContent := (r @ c) <= (matrix rowCount @ matrix columnCount)
					ifTrue: [r @ c]
					ifFalse: [(r @ c) negated].
				self
					assert: expectedContent
					equals: (newMatrix at: r at: c)]]
		].
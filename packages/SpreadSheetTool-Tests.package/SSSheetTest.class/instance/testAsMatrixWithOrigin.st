testing
testAsMatrixWithOrigin

	| matrix origin |
	origin := self someValue.
	matrix := sheet asMatrixWithOrigin: origin.
	
	self
		assert: self rowCount + 1 equals: matrix rowCount;
		assert: self columnCount + 1 equals: matrix columnCount.
	self assert: origin equals: (matrix at: 1 at: 1).
	1
		to: self columnCount do: [:column | self
			assert: (sheet columnHeaderAt: column)
			equals: (matrix at: 1 at: column + 1)];
		to: self rowCount do: [:row | self
			assert: (sheet rowHeaderAt: row)
			equals: (matrix at: row + 1 at: 1)].
	matrix withIndicesDo: [:value :row :column |
		(row @ column) > (1 @ 1) ifTrue: [self
			assert: (sheet atRow: row - 1 atColumn: column - 1)
			equals: value]].
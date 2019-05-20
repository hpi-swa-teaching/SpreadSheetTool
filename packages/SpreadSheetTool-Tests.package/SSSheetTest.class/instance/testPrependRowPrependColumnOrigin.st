testing
testPrependRowPrependColumnOrigin

	| columnBlock rowBlock originConstant matrix |
	columnBlock := [:r | 'My c', r].
	rowBlock := [:c | 'My r', c].
	originConstant := #origin.
	matrix := sheet
		prependColumn: columnBlock
		prependRow: rowBlock
		origin: [originConstant].
	
	self
		assert: sheet rowCount + 1 equals: matrix rowCount;
		assert: sheet columnCount + 1 equals: matrix columnCount.
	self assert: (matrix at: 1 at: 1) equals: originConstant.
	1 to: sheet rowCount do: [:aRow |
		self
			assert: (columnBlock value: aRow)
			equals: (matrix at: aRow + 1 at: 1)].
	1 to: sheet columnCount do: [:aColumn |
		self
			assert: (rowBlock value: aColumn)
			equals: (matrix at: 1 at: aColumn + 1)].
	1 to: sheet rowCount do: [:aRow |
		1 to: sheet columnCount do: [:aColumn |
			self
				assert: (sheet atRow: aRow atColumn: aColumn)
				equals: (matrix at: aRow + 1 at: aColumn + 1)]]
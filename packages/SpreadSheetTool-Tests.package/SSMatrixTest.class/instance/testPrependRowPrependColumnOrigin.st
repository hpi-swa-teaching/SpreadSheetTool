testing
testPrependRowPrependColumnOrigin

	| columnBlock rowBlock originConstant newMatrix |
	columnBlock := [:r | 'My c', r].
	rowBlock := [:c | 'My r', c].
	originConstant := #origin.
	newMatrix := matrix
		prependColumn: columnBlock
		prependRow: rowBlock
		origin: [originConstant].
	
	self
		assert: matrix rowCount + 1 equals: newMatrix rowCount;
		assert: matrix columnCount + 1 equals: newMatrix columnCount.
	self assert: (newMatrix at: 1 at: 1) equals: originConstant.
	1 to: matrix rowCount do: [:aRow |
		self
			assert: (columnBlock value: aRow)
			equals: (newMatrix at: aRow + 1 at: 1)].
	1 to: matrix columnCount do: [:aColumn |
		self
			assert: (rowBlock value: aColumn)
			equals: (newMatrix at: 1 at: aColumn + 1)].
	1 to: matrix rowCount do: [:aRow |
		1 to: matrix columnCount do: [:aColumn |
			self
				assert: (matrix at: aRow at: aColumn)
				equals: (newMatrix at: aRow + 1 at: aColumn + 1)]]
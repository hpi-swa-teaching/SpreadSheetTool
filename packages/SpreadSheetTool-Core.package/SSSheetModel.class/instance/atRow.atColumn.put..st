accessing
atRow: rowIndex atColumn: columnIndex put: aStringOrText
	
	^ (cells at: rowIndex at: columnIndex)
		contents: aStringOrText
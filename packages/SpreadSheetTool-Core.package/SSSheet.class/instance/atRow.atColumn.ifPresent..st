accessing
atRow: rowIndex atColumn: columnIndex ifPresent: aBlock
	
	rowIndex @ columnIndex <= (self rowCount @ self columnCount)
		ifFalse: [^ self].
	^ aBlock value: (cells at: rowIndex at: columnIndex)
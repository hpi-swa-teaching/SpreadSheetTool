accessing
atRow: rowIndex atColumn: columnIndex put: anObject
	
	^ cells
		at: rowIndex
		at: columnIndex
		put: anObject
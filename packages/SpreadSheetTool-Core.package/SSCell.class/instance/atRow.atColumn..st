accessing sheet
atRow: aRow atColumn: aColumn

	aColumn @ aRow = (columnIndex @ rowIndex)
		ifTrue: [self error: 'Formula may not reference itself'].
	^ (sheet atRow: aRow atColumn: aColumn) value
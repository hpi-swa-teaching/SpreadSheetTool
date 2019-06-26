accessing sheet
atRow: aRow atColumn: aColumn

	aColumn @ aRow = (columnIndex @ rowIndex)
		ifTrue: [self error: 'Formula may not reference itself'].
	^ sheet valueAtRow: aRow atColumn: aColumn
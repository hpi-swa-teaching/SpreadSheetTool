accessing
getOutputAtRow: aRow atColumn: aColumn

	aColumn @ aRow = (columnIndex @ rowIndex)
		ifTrue: [self error: 'Formula may not reference itself'].
	^ sheet getOutputAtRow: aRow atColumn: aColumn for: self
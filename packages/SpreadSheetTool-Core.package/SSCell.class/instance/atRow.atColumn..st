accessing sheet
atRow: aRow atColumn: aColumn

	aColumn @ aRow = (columnIndex @ rowIndex)
		ifTrue: [self error: 'Formula may not reference itself'].
	aColumn @ aRow = (0 @ 0)
		ifTrue: [self error: 'Index out of range'].
	aColumn = 0
		ifTrue: [^ self rowHeaderAt: aRow].
	aRow = 0
		ifTrue: [^ self columnHeaderAt: aColumn].
	^ (sheet atRow: aRow atColumn: aColumn)
		getValueFor: model
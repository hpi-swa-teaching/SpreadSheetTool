accessing sheet
atRow: aRow atColumn: aColumn

	| cellModel |
	aColumn @ aRow = (columnIndex @ rowIndex)
		ifTrue: [self error: 'Formula may not reference itself'].
	cellModel := sheet atRow: aRow atColumn: aColumn.
	self addServer: cellModel.
	^ cellModel value
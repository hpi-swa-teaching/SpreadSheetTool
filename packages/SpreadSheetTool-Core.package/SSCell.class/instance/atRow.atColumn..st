accessing sheet
atRow: aRow atColumn: aColumn

	| cellModel |
	aColumn @ aRow = (columnIndex @ rowIndex)
		ifTrue: [self error: 'Formula may not reference itself'].
	cellModel := sheet atRow: aRow atColumn: aColumn.
	model addServer: cellModel.
	^ cellModel value
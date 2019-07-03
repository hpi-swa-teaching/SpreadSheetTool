accessing sheet
rowHeader

	| rowHeaderModel |
	rowHeaderModel := sheet rowHeaderAt: rowIndex.
	model addServer: rowHeaderModel.
	^ rowHeaderModel label
accessing sheet
rowHeader

	| headerModel |
	headerModel := sheet rowHeaderAt: rowIndex.
	model addServer: headerModel.
	^ headerModel label
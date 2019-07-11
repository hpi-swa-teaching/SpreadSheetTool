accessing sheet
rowHeaderAt: aRow

	| headerModel |
	headerModel := sheet rowHeaderAt: aRow.
	model addServer: headerModel.
	^ headerModel label
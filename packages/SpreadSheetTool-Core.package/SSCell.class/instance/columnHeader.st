accessing sheet
columnHeader

	| headerModel |
	headerModel := sheet columnHeaderAt: rowIndex.
	model addServer: headerModel.
	^ headerModel label
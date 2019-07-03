accessing sheet
columnHeader

	| headerModel |
	headerModel := sheet columnHeaderAt: columnIndex.
	model addServer: headerModel.
	^ headerModel label
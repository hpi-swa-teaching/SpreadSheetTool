accessing sheet
columnHeaderAt: aColumn

	| headerModel |
	headerModel := sheet columnHeaderAt: aColumn.
	model addServer: headerModel.
	^ headerModel label
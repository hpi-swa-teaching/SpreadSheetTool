instance creation
parent: aModel sheet: aSheet rowIndex: aRow columnIndex: aColumn

	| model |
	model := self parent: aModel.
	model
		cell: (SSCell
			sheet: aSheet
			model: model
			rowIndex: aRow
			columnIndex: aColumn).
	^ model
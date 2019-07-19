instance creation
parent: aModel sheet: aSheet rowIndex: aRow columnIndex: aColumn

	| model |
	model := self new.
	model
		parent: aModel;
		cell: (SSCell
			sheet: aSheet
			model: model
			rowIndex: aRow
			columnIndex: aColumn).
	^ model
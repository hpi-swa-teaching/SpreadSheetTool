instance creation
parent: aModel sheet: aSheet rowIndex: aRow columnIndex: aColumn

	^ (self parent: aModel)
		cell: (SSCell
			sheet: aSheet
			rowIndex: aRow
			columnIndex: aColumn);
		yourself
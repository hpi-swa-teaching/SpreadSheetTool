instance creation
parent: aModel sheet: aSheet rowIndex: aRow columnIndex: aColumn

	^ (super parent: aModel)
		cell: (SSCell
			sheet: aSheet
			rowIndex: aRow
			columnIndex: aColumn);
		yourself
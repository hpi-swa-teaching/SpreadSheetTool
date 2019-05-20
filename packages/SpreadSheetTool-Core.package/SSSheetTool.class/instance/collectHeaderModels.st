toolbuilder
collectHeaderModels

	^ cellModels
		prependColumn: [:rowIndex |
			columnHeaders
				at: rowIndex
				ifAbsentPut: [SSHeaderModel
					rowHeaderForIndex: rowIndex
					parent: self]]
		prependRow: [:columnIndex |
			rowHeaders
				at: columnIndex
				ifAbsentPut: [SSHeaderModel
					columnHeaderForIndex: columnIndex
					parent: self]]
		origin: [SSOriginHeaderModel new]
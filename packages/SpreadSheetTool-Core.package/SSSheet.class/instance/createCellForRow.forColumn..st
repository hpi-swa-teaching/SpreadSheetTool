private
createCellForRow: aRow forColumn: aColumn

	^ (SSUniversalCellModel
		tool: self tool
		sheet: self
		rowIndex: aRow
		columnIndex: aColumn)
			addDependent: self tool;
			yourself
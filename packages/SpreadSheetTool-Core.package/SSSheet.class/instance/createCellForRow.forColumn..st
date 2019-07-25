private
createCellForRow: aRow forColumn: aColumn

	^ (SSUniversalCellModel parent: parent sheet: self rowIndex: aRow columnIndex: aColumn)
		addDependent: parent;
		yourself
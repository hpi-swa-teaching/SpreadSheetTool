accessing
rowCount: aRowCount columnCount: aColumnCount

	self
		scaleMatrixToRowCount: aRowCount columnCount: aColumnCount;
		scale: rowHeaders to: aRowCount
			factory: [:row | self createHeaderForRow: row];
		scale: columnHeaders to: aColumnCount
			factory: [:column | self createHeaderForColumn: column]
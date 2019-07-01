accessing
rowCount: aRowCount columnCount: aColumnCount
	
	cells := Matrix
		rows: aRowCount
		columns: aColumnCount
		tabulate: [:row :column | 
			row @ column <= (self rowCount @ self columnCount)
				ifTrue: [self atRow: row atColumn: column]
				ifFalse: [self createCellForRow: row forColumn: column]].
	
	self
		scale: rowHeaders
			to: aRowCount
			factory: [:row | self createHeaderForRow: row];
		scale: columnHeaders
			to: aColumnCount
			factory: [:column | self createHeaderForColumn: column].
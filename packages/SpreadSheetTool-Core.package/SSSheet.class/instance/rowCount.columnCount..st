accessing
rowCount: aRowCount columnCount: aColumnCount
	
	cells := Matrix
		rows: aRowCount
		columns: aColumnCount
		tabulate: [ :row :column | 
			row @ column <= (self rowCount @ self columnCount)
				ifTrue: [self atRow: row atColumn: column]
				ifFalse: [self cellFactory value: row value: column]].
	
	self
		scale: rowHeaders to: aRowCount factory: self rowHeaderFactory;
		scale: columnHeaders to: aColumnCount factory: self columnHeaderFactory.
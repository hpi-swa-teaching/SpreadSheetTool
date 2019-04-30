*SpreadSheetTool-Core
rows: rows columns: columns tabulateNewContentsWith: aBlock
	
	^ self class
		rows: rows
		columns: columns
		tabulate: [:row :column |
			(row @ column) <= (self rowCount @ self columnCount)
				ifTrue: [self at: row at: column]
				ifFalse: [aBlock value: row value: column]]
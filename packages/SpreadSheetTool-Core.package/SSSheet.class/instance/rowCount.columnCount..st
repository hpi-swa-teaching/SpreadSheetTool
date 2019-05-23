accessing
rowCount: aRowCount columnCount: aColumnCount

	cells := Matrix
		rows: aRowCount
		columns: aColumnCount
		tabulate: [:row :column |
			(row @ column) <= (self rowCount @ self columnCount)
				ifTrue: [self atRow: row atColumn: column]
				ifFalse: [self cellFactory
					ifNotNil: [:f | f value: row value: column]]]
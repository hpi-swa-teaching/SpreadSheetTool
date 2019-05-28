accessing
rowCount: aRowCount columnCount: aColumnCount

	cells := Matrix
		rows: aRowCount
		columns: aColumnCount
		tabulate: [:row :column |
			(row @ column) <= (self rowCount @ self columnCount)
				ifTrue: [self atRow: row atColumn: column]
				ifFalse: [self cellFactory value]].
	
	(aColumnCount <= self columnCount)
		ifTrue: [columnHeaders removeLast: self columnCount - aColumnCount]
		ifFalse: [(aColumnCount - self columnCount) timesRepeat: [
			columnHeaders add: self headerFactory value]].
	(aRowCount <= self rowCount)
		ifTrue: [rowHeaders removeLast: self rowCount - aRowCount]
		ifFalse: [(aRowCount - self rowCount) timesRepeat: [
			rowHeaders add: self headerFactory value]].
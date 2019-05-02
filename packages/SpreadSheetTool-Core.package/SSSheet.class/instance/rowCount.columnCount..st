accessing
rowCount: aRowCount columnCount: aColumnCount

	cells := cells
		rows: aRowCount
		columns: aColumnCount
		tabulateNewContentsWith: [:row :column | SSCell new]
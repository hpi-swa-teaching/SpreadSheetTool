accessing
rowCount: aRowCount columnCount: aColumnCount

	"TODO: Consider move extension method implementatino hither"
	cells := cells
		rows: aRowCount
		columns: aColumnCount
		tabulateNewContentsWith: [:row :column | SSCell new]
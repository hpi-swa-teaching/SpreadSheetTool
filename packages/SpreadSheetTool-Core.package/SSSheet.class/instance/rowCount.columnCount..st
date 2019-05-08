accessing
rowCount: aRowCount columnCount: aColumnCount

	"TODO: Consider move extension method implementation hither"
	cells := cells
		rows: aRowCount
		columns: aColumnCount
		tabulateNewContentsWith: [:row :column |
			self cellFactory
				ifNotNil: [:f | f value: row value: column]]
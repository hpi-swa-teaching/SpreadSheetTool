initialize-release
initializeWithRowCount: aRowCount columnCount: aColumnCount

	cells := Matrix
		rows: aRowCount
		columns: aColumnCount
		tabulate: [:row :column | SSCellModel new]
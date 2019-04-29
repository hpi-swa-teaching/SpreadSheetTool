initialize-release
initializeWithWidth: aWidth height: aHeight

	cells := Matrix
		rows: aHeight
		columns: aWidth
		tabulate: [:row :column | SSCellModel new]
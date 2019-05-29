initialize-release
initialize

	super initialize.
	template := SSSheetTemplate
		cellFactory: [:r :c | SSCell new]
		rowHeaderFactory: [:row | SSHeader rowHeaderFor: row]
		columnHeaderFactory: [:column | SSHeader columnHeaderFor: column].
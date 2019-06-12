instance creation
newSheet

	^ self
		cellFactory: [:r :c | SSCell new]
		rowHeaderFactory: [:row | SSHeader rowHeaderFor: row]
		columnHeaderFactory: [:column | SSHeader columnHeaderFor: column].
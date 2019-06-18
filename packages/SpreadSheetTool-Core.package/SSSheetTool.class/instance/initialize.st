initialize-release
initialize

	contentModels := SSSheet new.
	contentModels
		cellFactory: [:row :column | SSCellModel
			parent: self
			sheet: contentModels
			rowIndex: row
			columnIndex: column]
		rowHeaderFactory: [:row | SSHeaderModel row: row parent: self]
		columnHeaderFactory: [:column | SSHeaderModel column: column parent: self].
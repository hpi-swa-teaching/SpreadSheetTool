initialize-release
initialize

	sheet := SSSheet new.
	contentModels := SSSheetTemplate
		cellFactory: [:row :column | SSCellModel
			cell: (sheet atRow: row atColumn: column)
			parent: self]
		rowHeaderFactory: [:row | SSHeaderModel
			header: (sheet rowHeaderAt: row) parent: self]
		columnHeaderFactory: [:column | SSHeaderModel
			header: (sheet columnHeaderAt: column) parent: self].
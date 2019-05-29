initialize-release
initialize

	sheet := SSSheet new.
	contentModels := SSSheetTemplate
		cellFactory: [:row :column | SSCellModel
			newWithData: (sheet atRow: row atColumn: column)
			parent: self]
		rowHeaderFactory: [:row | SSHeaderModel
			newWithData: (sheet rowHeaderAt: row) parent: self]
		columnHeaderFactory: [:column | SSHeaderModel
			newWithData: (sheet columnHeaderAt: column) parent: self].
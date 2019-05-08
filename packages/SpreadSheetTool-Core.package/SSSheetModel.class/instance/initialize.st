initialize-release
initialize

	sheet := SSSheet new
		cellFactory: [:row :column | SSCell new].
	cellModels := SSSheet new
		cellFactory: [:row :column | SSCellModel
			newWithData: (sheet atRow: row atColumn: column)
			parent: self].
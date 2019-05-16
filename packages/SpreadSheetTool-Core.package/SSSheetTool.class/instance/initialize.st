initialize-release
initialize

	cellModels := SSSheet new
		cellFactory: [:row :column | SSCellModel
			newWithData: SSCell new
			parent: self].
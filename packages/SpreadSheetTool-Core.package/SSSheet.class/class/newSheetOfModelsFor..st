instance creation
newSheetOfModelsFor: aModel

	^ self
		cellFactory: [:row :column | SSCellModel parent: aModel]
		rowHeaderFactory: [:row | SSHeaderModel row: row parent: aModel]
		columnHeaderFactory: [:column | SSHeaderModel column: column parent: aModel]
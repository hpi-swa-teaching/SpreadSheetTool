instance creation
newWithTool: aSheetTool

	| sheet |
	sheet := self new.
	sheet
		cellFactory: [:row :column | SSCellModel
			parent: aSheetTool
			sheet: sheet
			rowIndex: row
			columnIndex: column]
		rowHeaderFactory: [:row | SSHeaderModel row: row parent: aSheetTool]
		columnHeaderFactory: [:column | SSHeaderModel column: column parent: aSheetTool].
	^ sheet


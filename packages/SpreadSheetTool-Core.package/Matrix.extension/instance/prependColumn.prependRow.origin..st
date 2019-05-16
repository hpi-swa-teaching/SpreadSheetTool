*SpreadSheetTool-Core-copying
prependColumn: aColumnItemBlock prependRow: aRowItemBlock origin: anOriginBlock

	| blocks |
	blocks := Dictionary newFrom: {
		(0 @ 0) -> [:row :column | anOriginBlock value].
		(0 @ 1) -> [:row :column | aRowItemBlock value: column].
		(1 @ 0) -> [:row :column | aColumnItemBlock value: row].
		(1 @ 1) -> [:row :column | self at: row at: column]
	}.
	^ self class
		rows: nrows + 1
		columns: ncols + 1
		tabulate: [:row :column |
			(blocks at: (row > 1) asBit @ (column > 1) asBit)
				value: row - 1 value: column - 1]
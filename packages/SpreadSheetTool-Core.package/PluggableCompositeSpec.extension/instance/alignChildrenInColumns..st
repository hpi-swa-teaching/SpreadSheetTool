*SpreadSheetTool-Core-accessing
alignChildrenInColumns: columns

	| rows extent index |
	rows := (self children size / columns) ceiling.
	extent := (columns @ rows) reciprocal.
	index := 0.
	1 to: columns do: [:column |
		1 to: rows do: [:row |
			(self children at: (index := index + 1))
				frame: (column @ row - 1 * extent
					extent: extent)]].
*SpreadSheetTool-Core
openAsSheet

	| matrix rows |
	rows := self collect: #asOrderedCollection.
	matrix := Matrix
		rows: rows size
		columns: (rows collect: #size) max
		tabulate: [:r :c | (rows at: r) at: c ifAbsent: nil].
	^ matrix openAsSheet
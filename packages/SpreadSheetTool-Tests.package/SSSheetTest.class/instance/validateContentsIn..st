assertions
validateContentsIn: matrix

	matrix withIndicesDo: [:value :row :column |
		(row @ column) > (1 @ 1) ifTrue: [self
			assert: (sheet atRow: row - 1 atColumn: column - 1)
			equals: value]].
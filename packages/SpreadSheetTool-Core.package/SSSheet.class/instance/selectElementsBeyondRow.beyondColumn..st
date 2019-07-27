enumerating
selectElementsBeyondRow: aRow beyondColumn: aColumn

	^ (cells byIndicesReject: [:row :column |
		row @ column <= (aRow @ aColumn)]),
		(rowHeaders allButFirst: aRow),
		(columnHeaders allButFirst: aColumn)
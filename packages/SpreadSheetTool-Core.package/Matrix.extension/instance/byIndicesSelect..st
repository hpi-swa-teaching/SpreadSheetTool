*SpreadSheetTool-Core-enumerating
byIndicesSelect: aBlock

	| selected |
	selected := Set new.
	self withIndicesDo: [:item :row :column |
		(aBlock value: row value: column)
			ifTrue: [selected add: item]].
	^ selected
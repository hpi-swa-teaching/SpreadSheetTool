as yet unclassified
rowHeader

	| index model models tool |
	model := ((Utilities pointersTo: self) select: [:x | x isKindOf: SSCellModel]) singleOne. 
	tool := model parent.
	models := tool instVarNamed: 'contentModels'.
	1 to: tool rowCount do: [:r |
		1 to: tool columnCount do: [:c |
			((models atRow: r atColumn: c) = model)
				ifTrue: [index := r@c]]].
	^ (models rowHeaderAt: index y) contents
tools
findCellsIn: aWindow

	^ aWindow findByCriteria: [:morph | morph isTextView
		and: [morph model isKindOf: SSCellModel]]
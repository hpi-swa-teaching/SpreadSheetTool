tools
findCellAt: anIndex in: aWindow

	| count |
	count := 0.
	^ aWindow findByCriteria: [:morph |
		 morph isTextView
			and: [morph model isKindOf: SSCellModel]
			and: [count := count + 1.
				count = anIndex]]
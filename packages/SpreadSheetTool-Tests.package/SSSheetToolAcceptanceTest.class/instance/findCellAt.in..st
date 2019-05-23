tools
findCellAt: anIndex in: aWindow

	| count |
	count := 0.
	^ aWindow findByCriteria: [:morph |
		 morph isTextView
			and: [morph model inheritsFromAnyIn:
				SSCellModel asOrderedCollection]
			and: [count := count + 1.
				count = anIndex]]
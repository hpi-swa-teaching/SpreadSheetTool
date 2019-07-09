tools
findButtonAt: aPoint byLabel: aFilter

	^ self findCellAt: aPoint byCriteria: [:m |
		m isButton and: [('*', aFilter, '*') match: m label]]
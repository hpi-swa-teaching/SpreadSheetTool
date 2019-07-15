tools
findCellAt: aPoint in: aWindow

	^ self findCellAt: aPoint in: aWindow byCriteria: [:m |
		m isTextView "and: [(m model isKindOf: SSNumericPropertyFieldModel orOf: SSHeaderModel) not]"]
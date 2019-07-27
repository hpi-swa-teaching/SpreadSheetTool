tools-navigating
findCellAt: aPoint in: aWindow byCriteria: aSelector

	| horizontal morphs vertical |
	horizontal := (self findHeaderFor: #columns at: aPoint x in: aWindow) rangeFor: #x.
	vertical := (self findHeaderFor: #rows at: aPoint y in: aWindow) rangeFor: #y.
	morphs := aWindow findInsideOf: horizontal @ vertical.
	^ morphs findByCriteria: aSelector
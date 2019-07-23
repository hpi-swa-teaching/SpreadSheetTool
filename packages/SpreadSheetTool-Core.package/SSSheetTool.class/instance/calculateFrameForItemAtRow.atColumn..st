toolbuilder
calculateFrameForItemAtRow: aRow atColumn: aColumn
	
	false ifTrue: [aRow = 0 ifTrue: [^ LayoutFrame
		fractions: (aColumn - 1 @ 0 * self defaultCellExtent extent: 1 @ 0 * self defaultCellExtent)
		offsets: ("self defaultHeaderScale negated"0 @ 0 corner: 0 @ self defaultHeaderScale)].
	aColumn = 1 ifTrue: [^ LayoutFrame
		fractions: (1 @ aRow - 1 * self defaultCellExtent extent: 0 @ 1 * self defaultCellExtent)
		offsets: (0 @ 0 corner: self defaultHeaderScale @ 0)]].
	^ LayoutFrame
		fractions: ((aColumn @ aRow - 1 * self defaultCellExtent)
			extent: self defaultCellExtent)
		"offsets: (self defaultHeaderScale asPoint corner: 0 @ 0)"
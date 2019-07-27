toolbuilder-constants
minimumExtent

	^ (0 @ self menuHeight)
		+ (self defaultWindowSpace)
		+ ((self columnCount @ self rowCount)
			*  (self minimumCellExtent + self minimumSplitterExtent + self minimumCellSpace))
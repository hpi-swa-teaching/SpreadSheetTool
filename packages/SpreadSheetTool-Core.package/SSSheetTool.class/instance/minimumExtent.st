accessing
minimumExtent

	^ (0 @ self menuHeight)
		+ ((self columnCount @ self rowCount)
			*  (self minimumCellExtent + self minimumSplitterExtent))
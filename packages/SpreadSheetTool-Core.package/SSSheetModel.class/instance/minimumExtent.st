accessing
minimumExtent

	^ (0 @ (self defaultExtent y  *  self menuHeight))
		+ ((self columnCount @ self rowCount)
			*  (self minimumCellExtent + self minimumSplitterExtent))
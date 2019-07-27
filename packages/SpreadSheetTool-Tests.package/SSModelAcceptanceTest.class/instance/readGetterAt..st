tools
readGetterAt: aPoint

	^ self
		activateButton: (self findGetFormulaButtonAt: aPoint)
		during: [(self findCellAt: aPoint byCriteria: #isTextView) read]
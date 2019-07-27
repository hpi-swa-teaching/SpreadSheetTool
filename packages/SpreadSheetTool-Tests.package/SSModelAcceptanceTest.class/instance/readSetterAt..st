tools
readSetterAt: aPoint

	^ self
		activateButton: (self findSetFormulaButtonAt: aPoint)
		during: [(self findCellAt: aPoint byCriteria: #isTextView) read]
interaction
rowCount: aRowCount columnCount: aColumnCount

	(self okToRowCount: aRowCount columnCount: aColumnCount)
		ifFalse: [^ self].
	
	contentModels
		rowCount: aRowCount
		columnCount: aColumnCount.
	self changed: #buildCellsPanel.
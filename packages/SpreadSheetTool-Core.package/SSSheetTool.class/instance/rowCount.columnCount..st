accessing
rowCount: aRowCount columnCount: aColumnCount

	cellModels rowCount: aRowCount columnCount: aColumnCount.
	self changed: #buildCellsPanel.
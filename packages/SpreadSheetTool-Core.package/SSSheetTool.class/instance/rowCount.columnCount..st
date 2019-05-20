interaction
rowCount: aRowCount columnCount: aColumnCount

	rowHeaders removeLastPresent: self columnCount - aColumnCount.
	columnHeaders removeLastPresent: self rowCount - aRowCount.
	cellModels
		rowCount: aRowCount
		columnCount: aColumnCount.
	self changed: #buildCellsPanel.
interaction
rowCount: aRowCount columnCount: aColumnCount

	(self okToChangeRowCount: aRowCount columnCount: aColumnCount)
		ifFalse: [^ self].
	
	self preserveUnacceptedChangesWhile: [
		contentModels
			rowCount: aRowCount
			columnCount: aColumnCount.
		self changed: #buildCellsPanel].
instance creation
rowCount: aRowCount columnCount: aColumnCount

	^ self newWithData:
		(SSSheet
			rowCount: aRowCount
			columnCount: aColumnCount)
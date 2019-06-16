interaction
okToRowCount: aRowCount columnCount: aColumnCount

	^ aRowCount * aColumnCount < (self rowCount * self columnCount)
		ifTrue: [(self hasContentsBeyondRow: aRowCount column: aColumnCount)
			==> [self promptDecreaseAndDeleteContent]]
		ifFalse: [(aRowCount * aColumnCount > self maxReasonableNumberOfCells)
			==> [self promptResizeToLargeRange]]
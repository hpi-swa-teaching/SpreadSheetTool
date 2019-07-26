interaction
okToChangeRowCount: aRowCount columnCount: aColumnCount

	((self hasContentsBeyondRow: aRowCount column: aColumnCount)
		==> [self promptDecreaseAndDeleteContent])
			ifFalse: [^ false].
	((aRowCount * aColumnCount > self maxReasonableNumberOfCells)
		==> [self promptResizeToLargeRange])
			ifFalse: [^ false].
	^ true
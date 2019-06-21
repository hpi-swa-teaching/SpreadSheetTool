interaction
okToChangeRowCount: aRowCount columnCount: aColumnCount

	(self hasUnacceptedChanges ==> [self promptChangesCanBeDiscarded])
		ifFalse: [^ false].
	^ aRowCount * aColumnCount < (self rowCount * self columnCount)
		ifTrue: [(self hasContentsBeyondRow: aRowCount column: aColumnCount)
			==> [self promptDecreaseAndDeleteContent]]
		ifFalse: [(aRowCount * aColumnCount > self maxReasonableNumberOfCells)
			==> [self promptResizeToLargeRange]]
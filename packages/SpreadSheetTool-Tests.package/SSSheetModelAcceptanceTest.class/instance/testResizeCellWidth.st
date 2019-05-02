testing
testResizeCellWidth
	"Test for #6 (
		Between cells there is a space in which I can drag horizontally/vertically.
		The cells row/column resizes to the dragged position).
	When tested by a human, make sure you do not move your cursor while running this test!"

	| leftColumn row shift leftCell rightCell oldPosition newPosition oldLeftWidth oldRightWidth |
	(1/2) second wait. "User releases cursor"
	
	{-1 . 1} do: [:direction |
		leftColumn := (self rowCount / 2) truncated.
		row := (self columnCount / 2) truncated.
		shift := 15 * direction.
	
		leftCell := self findCellInUniformGridAtRow: row atColumn: leftColumn.
		rightCell := self findCellInUniformGridAtRow: row atColumn: leftColumn + 1.
	
		oldLeftWidth := leftCell width.
		oldRightWidth := rightCell width.
	
		oldPosition := (rightCell center + leftCell center) / 2.
		newPosition := oldPosition + shift.
	
		(self subject findByPosition: oldPosition)
			sendMouseEnterEventAtPosition: oldPosition;
			sendMouseDragEventWithButton: #leftButton
			fromPosition: oldPosition
			toPosition: newPosition.
	
		self assert: shift equals: leftCell width - oldLeftWidth inTreshold: 10.
		self assert: shift equals: oldRightWidth - rightCell width inTreshold: 10]
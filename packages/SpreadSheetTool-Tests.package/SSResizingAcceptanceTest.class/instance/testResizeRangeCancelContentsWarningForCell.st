testing
testResizeRangeCancelContentsWarningForCell
	"Acceptance test for #36 (Warning for deleting cells by resizing dimensions)"

	self dimensionsDo: [:dimension |
		self testResize: dimension cancelContentsWarningFor:
			(self findCellAtRow: self rowCount atColumn: self columnCount)].
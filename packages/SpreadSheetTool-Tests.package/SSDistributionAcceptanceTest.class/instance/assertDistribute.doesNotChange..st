assertions
assertDistribute: rowsOrColumns doesNotChange: widthOrHeight
	"Test for #8 (Distribute rows/columns)"

	| invariantScales |
	invariantScales := self findCells collect: widthOrHeight.
	self distribute: rowsOrColumns.
	invariantScales keysAndValuesDo: [:point :oldScale | | cell |
		cell := self findCellAt: point.
		self
			assert: oldScale equals: (cell in: widthOrHeight)
			description: 'Should not change ', widthOrHeight].
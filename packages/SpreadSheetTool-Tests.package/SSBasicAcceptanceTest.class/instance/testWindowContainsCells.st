testing
testWindowContainsCells
	"acceptance test for #1 (The table contains 5 rows and 5 columns)"

	| cells |
	cells := self findCells.
	self
		assert: self rowCount * self columnCount
		equals: cells size.
testing
testWindowContainsCells
	"Acceptance test for #1 (The table contains {1} rows and {2} columns)"

	| cells |
	cells := self findCells.
	self
		assert: self rowCount * self columnCount
		equals: cells size.
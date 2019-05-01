testing
testWindowContainsCells
	"Test for #1 (The table contains 5 rows and 5 columns)"

	| cells |
	cells := self findCells.
	self
		assert: cells morphs size
		equals: self rowCount * self columnCount.
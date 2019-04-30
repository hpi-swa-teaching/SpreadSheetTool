testing
testWindowContainsCells
	"Test for #1 (The table contains 5 rows and 5 columns)"

	self
		assert: (self subject
			findByCriteria: [:morph | morph isTextView])
				morphs size
		equals: self rowCount * self columnCount.
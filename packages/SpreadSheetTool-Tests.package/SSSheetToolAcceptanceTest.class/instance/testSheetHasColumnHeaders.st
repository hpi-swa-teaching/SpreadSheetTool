testing
testSheetHasColumnHeaders
	"Test for #7 (Row and column header)"

	| cells minY |
	cells := self findCells morphs.
	minY := (cells collect: #y) min.
	(cells groupBy: #x) keys doWithIndex: [:x :column | | header |
		header := self subject
			findByClass: PluggableTextMorphPlus
			andCriteria: [:morph | morph x = x and: [morph y < minY]].
		self
			assert: header morphs notEmpty;
			assert: column asInteger equals: header text]
	
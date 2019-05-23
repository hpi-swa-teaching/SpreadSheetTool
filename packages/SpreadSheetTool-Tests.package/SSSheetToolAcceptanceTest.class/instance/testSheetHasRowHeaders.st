testing
testSheetHasRowHeaders
	"Test for #7 (Row and column header)"

	| cells minX |
	cells := self findCells morphs.
	minX := (cells collect: [:cell | cell position x]) min.
	(cells groupBy: [:cell | cell position y]) keys sorted doWithIndex: [:y :column | | header |
		header := self subject
			findByClass: PluggableTextMorphPlus
			andCriteria: [:morph | morph position y = y and: [morph position x < minX]].
		self
			assert: header morphs notEmpty;
			assert: column asString equals: header text asString]
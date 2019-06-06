testing
testSheetHasRowHeaders
	"Test for #7 (Row and column header)"

	| cells minX headers |
	cells := self findCells morphs.
	minX := (cells collect: [:cell | cell position x]) min.
	headers := (cells groupBy: [:cell | cell position y]) keys sorted
		collect: [:y | self subject
			findByClass: PluggableTextMorphPlus
			andCriteria: [:morph | morph position y = y and: [morph position x < minX]]].
	
	headers do: [:header |
		self assert: header morphs notEmpty].
	self assert: (headers collect: [:header | header text asString asNumber]) isSorted.
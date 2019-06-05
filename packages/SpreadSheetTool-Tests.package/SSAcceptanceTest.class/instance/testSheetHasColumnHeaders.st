testing
testSheetHasColumnHeaders
	"Test for #7 (Row and column header)"

	| cells minY headers |
	cells := self findCells morphs.
	minY := (cells collect: [:cell | cell position y]) min.
	headers := (cells groupBy: [:cell | cell position x]) keys sorted
		collect: [:x | self subject
			findByClass: PluggableTextMorphPlus
			andCriteria: [:morph | morph position x = x and: [morph position y < minY]]].
	
	headers do: [:header |
		self assert: header morphs notEmpty].
	self assert: (headers collect: [:header | Number readFrom: header text asString base: 36]) isSorted.
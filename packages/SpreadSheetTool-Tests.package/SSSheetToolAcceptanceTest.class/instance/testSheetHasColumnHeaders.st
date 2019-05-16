testing
testSheetHasColumnHeaders
	"Test for #7 (Row and column header)"

	| cells minY diff columnHeader |
	cells := self findCells morphs.
	minY := (cells collect: [:cell | cell position y]) min.
	columnHeader := 'A'.
	
	(cells groupBy: [:cell | cell position x]) keys sorted doWithIndex: [:x :column | | header |
		header := self subject
			findByClass: PluggableTextMorphPlus
			andCriteria: [:morph | morph position x = x and: [morph position y < minY]].
		self
			assert: header morphs notEmpty;
			assert: columnHeader equals: header text asString.
		
		diff := true.
		columnHeader := String withAll: (columnHeader reverse collect: [:char |
			diff
				ifFalse: [char]
				ifTrue: [(char = $Z)
					ifFalse: [
						diff := false.
						Character codePoint: char codePoint + 1]
					ifTrue: [$A]]]) reverse.
		diff ifTrue: [columnHeader := 'A', columnHeader]]
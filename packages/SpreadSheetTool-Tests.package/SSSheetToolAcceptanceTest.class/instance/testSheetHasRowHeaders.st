testing
testSheetHasRowHeaders
	"Test for #7 (Row and column header)"

	| cells minX diff rowHeader |
	cells := self findCells morphs.
	minX := (cells collect: #x) min.
	rowHeader := 'A'.
	
	(cells groupBy: #y) keys doWithIndex: [:y :row | | header |
		header := self subject
			findByClass: [PluggableTextMorphPlus]
			andCriteria: [:morph | morph y = y and: [morph x < minX]].
		self
			assert: header morphs notEmpty;
			assert: rowHeader equals: header text.
		
		diff := true.
		rowHeader := String withAll: (rowHeader reverse collect: [:char |
			diff
				ifFalse: [char]
				ifTrue: [(char = $Z)
					ifFalse: [
						diff := false.
						Character codePoint: char codePoint + 1]
					ifTrue: [$A]]]) reverse.
		diff ifTrue: [rowHeader := 'A', rowHeader]]
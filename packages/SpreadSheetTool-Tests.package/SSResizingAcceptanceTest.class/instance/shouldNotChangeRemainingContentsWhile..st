assertions
shouldNotChangeRemainingContentsWhile: aBlock

	| newColumnCount newRowCount oldColumnHeaders oldContents oldRowHeaders |
	oldContents := Matrix
		rows: (self measureRangeFor: #rows)
		columns: (self measureRangeFor: #columns)
		tabulate: [:row :column | (self findCellAtRow: row atColumn: column) read].
	oldRowHeaders := (self findHeadersFor: #rows) collect: [:header | header text asString].
	oldColumnHeaders := (self findHeadersFor: #columns) collect: [:header | header text asString].
	
	aBlock value.
	
	newRowCount := self measureRangeFor: #rows.
	newColumnCount := self measureRangeFor: #columns.
	
	oldContents withIndicesDo: [:content :row :column |
		(row @ column) <= (newRowCount @ newColumnCount)
			ifTrue: [self
				assert: content
				equals: (self findCellAtRow: row atColumn: column) focusAndRead]].
	oldRowHeaders withIndexDo: [:header :index |
		index <= newRowCount ifTrue: [
			self assert: header equals: (self findHeaderFor: #rows at: index) text asString]].
	oldColumnHeaders withIndexDo: [:header :index |
		index <= newColumnCount ifTrue: [
			self assert: header equals: (self findHeaderFor: #columns at: index) text asString]].
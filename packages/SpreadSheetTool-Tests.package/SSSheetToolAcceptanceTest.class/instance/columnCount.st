testing data
columnCount

	^ columnCount
		ifNil: [columnCount := self class
			ifShortStage: [5]
			ifLongStage: [26 * 27 + 4]]
testing data
rowCount

	^ rowCount
		ifNil: [rowCount := self class
			ifShortStage: [4]
			ifLongStage: [7]]
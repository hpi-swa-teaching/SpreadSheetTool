testing-distributing
testDistributeColumns
	"Test for #8 (Distribute rows/columns)"

	^ self
		testDistributeCellsInDimension: #width
		unchangedDimension: #height
		dimensionName: 'columns'
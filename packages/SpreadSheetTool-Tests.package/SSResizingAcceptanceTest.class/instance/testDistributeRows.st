testing-distributing
testDistributeRows
	"Test for #8 (Distribute rows/columns)"

	^ self
		testDistributeCellsInDimension: #height
		unchangedDimension: #width
		dimensionName: 'rows'
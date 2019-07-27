interaction
distributeRows

	self
		distributeCellsInDimension: #height
		range: self rowCount
		splitterSelector: #splitsTopAndBottom.
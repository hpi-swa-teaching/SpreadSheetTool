accessing
gridAt: rowIndex at: verticalIndex put: aStringOrText
	
	^ (cells at: rowIndex at: verticalIndex)
		contents: aStringOrText
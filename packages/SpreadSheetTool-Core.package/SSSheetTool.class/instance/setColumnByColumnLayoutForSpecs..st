toolbuilder
setColumnByColumnLayoutForSpecs: aCollection

	| x width |
	width := aCollection size raisedTo: -1.
	x := 0.
	aCollection do: [:aSpec |
		aSpec
			frame: x @ 0
			extent: width @ 1.
		x := x + width].
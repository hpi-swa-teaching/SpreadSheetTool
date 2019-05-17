toolbuilder
setLineByLineLayoutForSpecs: aCollection

	| y height |
	height := aCollection size raisedTo: -1.
	y := 0.
	aCollection do: [:aSpec |
		aSpec
			frame: 0 @ y
			extent: 1 @ height.
		y := y + height].
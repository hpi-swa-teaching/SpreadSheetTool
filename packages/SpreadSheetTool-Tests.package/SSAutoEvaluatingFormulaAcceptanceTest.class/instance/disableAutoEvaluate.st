tools
disableAutoEvaluate

	self findAutoEvaluateToggle in: [:toggle |
		toggle isOn ifTrue: [toggle click]].
	self subject redrawDopeyControls.
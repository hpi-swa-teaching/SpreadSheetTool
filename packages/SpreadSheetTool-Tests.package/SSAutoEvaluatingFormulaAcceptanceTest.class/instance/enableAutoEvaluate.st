tools
enableAutoEvaluate

	self findAutoEvaluateToggle in: [:toggle |
		toggle isOn ifFalse: [toggle click]].
	self subject redrawDopeyControls.